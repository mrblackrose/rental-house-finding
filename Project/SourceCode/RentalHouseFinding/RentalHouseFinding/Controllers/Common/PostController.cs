﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RentalHouseFinding.Models;
using RentalHouseFinding.Common;
using System.Data;
using System.IO;
using RentalHouseFinding.Caching;
using log4net;
using System.Reflection;

namespace RentalHouseFinding.Controllers
{
    public class PostController : Controller
    {
        private readonly ILog log = LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);

        RentalHouseFindingEntities _db = new RentalHouseFindingEntities();
        private string _noInfo;

        public ICacheRepository Repository { get; set; }
        public PostController()
            : this(new CacheRepository())
        {
        }

        public PostController(ICacheRepository repository)
        {
            this.Repository = repository;
            this._noInfo = Repository.GetAllConfiguration()
                .Where(c => c.Name.Equals(ConstantCommonString.NONE_INFORMATION, 
                    StringComparison.CurrentCultureIgnoreCase))
                .Select(c => c.Value).FirstOrDefault().ToString();
        }

        public ActionResult Index()
        {
            return RedirectToAction("create");
        }

        //
        // GET: /Post/Details/5
        [HttpGet]
        public ActionResult Details(int id, string name)
        {
            try
            {
                var post = (from p in _db.Posts where (p.Id == id && !p.IsDeleted) select p).FirstOrDefault();
                if (post == null)
                {
                    return null;
                }
                if (!StringUtil.ToSeoUrl(StringUtil.RemoveSign4VietnameseString(post.Title)).Equals(name, StringComparison.CurrentCultureIgnoreCase))
                {
                    return RedirectToActionPermanent("Details", new { id = id, name = StringUtil.ToSeoUrl(StringUtil.RemoveSign4VietnameseString(post.Title)) });
                }

                var districtAndProvinceName = Repository.GetAllDistricts().Where(d => d.Id == post.DistrictId).Select(d => new { districtName = d.Name, provinceName = d.Province.Name }).FirstOrDefault();

                //Get images
                var images = (from i in _db.PostImages where (i.PostId == post.Id && !i.IsDeleted) select i);
                if (images != null)
                {
                    ViewBag.Images = images.ToList();
                }
                //Check if the post is in favorite list
                if (User.Identity.IsAuthenticated)
                {
                    int userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                    var favorite = (from f in _db.Favorites
                                    where
                                        (f.PostId == post.Id && f.UserId == userId && !f.IsDeleted)
                                    select f).ToList();
                    if (favorite.Count > 0)
                    {
                        ViewBag.RemoveFavorite = true;
                    }
                    else
                    {
                        ViewBag.RemoveFavorite = false;
                    }
                }
                TempData["PostID"] = post.Id;
                TempData["CreatedUserId"] = post.UserId;

                Session["PostID"] = post.Id;
                Session["CreatedUserId"] = post.UserId;

                return View(CommonModel.ConvertPostToPostViewModel(post, _noInfo));
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return View();
            }
        }

        [HttpGet]
        public ActionResult DetailsBox(int id, string name)
        {
            try
            {
                var post = (from p in _db.Posts where (p.Id == id && !p.IsDeleted) select p).FirstOrDefault();
                if (post == null)
                {
                    return null;
                }
                if (!StringUtil.ToSeoUrl(StringUtil.RemoveSign4VietnameseString(post.Title)).Equals(name, StringComparison.CurrentCultureIgnoreCase))
                {
                    return RedirectToActionPermanent("DetailsBox", new { id = id, name = StringUtil.ToSeoUrl(StringUtil.RemoveSign4VietnameseString(post.Title)) });
                }
                var districtAndProvinceName = Repository.GetAllDistricts().Where(d => d.Id == post.DistrictId).Select(d => new { districtName = d.Name, provinceName = d.Province.Name }).FirstOrDefault();

                //Get images
                var images = (from i in _db.PostImages where (i.PostId == post.Id && !i.IsDeleted) select i);
                if (images != null)
                {
                    ViewBag.Images = images.ToList();
                }
                //Check if the post is in favorite list
                if (User.Identity.IsAuthenticated)
                {
                    int userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                    var favorite = (from f in _db.Favorites
                                    where
                                        (f.PostId == post.Id && f.UserId == userId && !f.IsDeleted)
                                    select f).ToList();
                    if (favorite.Count > 0)
                    {
                        ViewBag.RemoveFavorite = true;
                    }
                    else
                    {
                        ViewBag.RemoveFavorite = false;
                    }
                }
                TempData["PostID"] = post.Id;
                TempData["CreatedUserId"] = post.UserId;

                Session["PostID"] = post.Id;
                Session["CreatedUserId"] = post.UserId;

                return View(CommonModel.ConvertPostToPostViewModel(post, _noInfo));
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return View();
            }
        }

        //
        // GET: /Post/Create

        public ActionResult Create()
        {
            try
            {
                ViewBag.CategoryId = new SelectList(Repository.GetAllCategories(), "Id", "Name", CategoryConstant.PHONG_TRO);
                ViewBag.ProvinceId = new SelectList(Repository.GetAllProvinces(), "Id", "Name", ProvinceConstant.HA_NOI);
                ViewBag.DistrictId = CommonController.AddDefaultOption(new SelectList(Repository.GetAllDistricts().Where(d => d.ProvinceId == ProvinceConstant.HA_NOI), "Id", "Name"), "Quận huyện", "0");
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
            }
            return View();
        }

        //
        // POST: /Post/Create

        [HttpPost]
        public ActionResult Create(PostViewModel model, IEnumerable<HttpPostedFileBase> images)
        {

            if (images != null && images.Count() > 10)
            {
                ModelState.AddModelError("", "Số lượng ảnh vượt quá 10");
                ViewBag.CategoryId = new SelectList(Repository.GetAllCategories(), "Id", "Name", model.CategoryId);
                ViewBag.ProvinceId = new SelectList(Repository.GetAllProvinces(), "Id", "Name", model.ProvinceId);
                ViewBag.DistrictId = new SelectList(Repository.GetAllDistricts().Where(d => d.ProvinceId == model.ProvinceId), "Id", "Name", model.DistrictId);
                return View(model);
            }

            if (ModelState.IsValid)
            {
                try
                {
                    model = (PostViewModel)CommonModel.TrimObjectProperties(model);
                    bool suscess = false;
                    bool isPending = false;
                    string strExpiredDate = Repository.GetAllConfiguration().Where(c => c.Name.Equals(ConstantCommonString.EXPIRED_DATE, StringComparison.CurrentCultureIgnoreCase)).Select(c => c.Value).FirstOrDefault().ToString();
                    int numberExpiredDate = 0;
                    int.TryParse(strExpiredDate, out numberExpiredDate);
                    Posts postToCreate = CommonModel.ConvertPostViewModelToPost(model, DateTime.Now, null, null,
                                DateTime.Now.AddDays(numberExpiredDate),
                                _noInfo);

                    if (CommonModel.FilterHasBadContent(model))
                    {
                        postToCreate.StatusId = StatusConstant.PENDING;
                        TempData["MessagePendingPostNew"] = "Bài đăng có chứa những từ không cho phép, chúng tôi sẽ duyệt trước khi đăng lên hệ thống";
                        TempData["Pending"] = true;
                        TempData["Success"] = false;
                        isPending = true;
                    }
                    else
                    {
                        postToCreate.StatusId = StatusConstant.ACTIVATED;
                        TempData["MessageSuccessPostNew"] = "Đăng bài thành công, chúng tôi sẽ gửi tin nhắn đến số điện thoại bạn đã cung cấp";
                        TempData["Success"] = true;
                        suscess = true;
                        TempData["Pending"] = false;
                    }

                    int userId;
                    if (!string.IsNullOrEmpty(User.Identity.Name))
                    {
                        userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                        postToCreate.UserId = userId;
                    }

                    _db.Posts.AddObject(postToCreate);
                    _db.SaveChanges();

                    //Nearby places
                    Dictionary<int, string> lstNearbyId = CommonController.GetListNearbyLocations(model, Request);
                    PostLocations postLocation;
                    string nearbyPlace = string.Empty;
                    foreach (KeyValuePair<int, string> kvp in lstNearbyId)
                    {
                        postLocation = new PostLocations();
                        postLocation.PostId = postToCreate.Id;
                        postLocation.LocationId = kvp.Key;
                        _db.PostLocations.AddObject(postLocation);
                        _db.SaveChanges();
                        nearbyPlace += kvp.Value + ", ";
                    }
                    if (!string.IsNullOrEmpty(nearbyPlace))
                    {
                        nearbyPlace = nearbyPlace.Remove(nearbyPlace.Length - 2);
                        postToCreate.NearbyPlace = nearbyPlace;
                        if (CommonModel.FilterHasBadContent(nearbyPlace))
                        {
                            postToCreate.StatusId = StatusConstant.PENDING;
                            TempData["MessagePendingPostNew"] = "Bài đăng có chứa những từ không cho phép, chúng tôi sẽ duyệt trước khi đăng lên hệ thống";
                            TempData["Pending"] = true;
                            TempData["Success"] = false;
                        }
                        _db.ObjectStateManager.ChangeObjectState(postToCreate, System.Data.EntityState.Modified);
                        _db.SaveChanges();
                    }

                    //Images post
                    PostImages imageToCreate = null;

                    if (!(images.Count() == 0 || images == null))
                    {
                        foreach (HttpPostedFileBase image in images)
                        {
                            if (image != null && image.ContentLength > 0)
                            {
                                var path = Path.Combine(HttpContext.Server.MapPath(DefaultValue.PATH_IMAGES), postToCreate.Id.ToString());
                                Directory.CreateDirectory(path);
                                string filePath = Path.Combine(path, Path.GetFileName(image.FileName));
                                image.SaveAs(filePath);
                                imageToCreate = new PostImages();
                                imageToCreate.PostId = postToCreate.Id;
                                imageToCreate.Path = DefaultValue.PATH_IMAGES + postToCreate.Id.ToString() + "/" + Path.GetFileName(image.FileName);
                                imageToCreate.IsDeleted = false;

                                _db.PostImages.AddObject(imageToCreate);
                                _db.SaveChanges();
                            }
                        }
                    }
                    if (suscess)
                    {
                        //Send SMS RenewCode.
                        CommonController.SendSMS(postToCreate.PhoneActive, String.Format("Dang tin thanh cong! Ma tin : {0} . De gia han soan tin : MS {1} gui 8730. De sua bai truy cap: www.5house.us/sua", postToCreate.Code, postToCreate.Code));
                    }
                    if (isPending)
                    {
                        //Send SMS RenewCode.
                        CommonController.SendSMS(postToCreate.PhoneActive, String.Format("Bai cua ban dang cho kiem duyet! Ma tin : {0} . De gia han soan tin : MS {1} gui 8730. De sua bai truy cap: www.5house.us/sua", postToCreate.Code, postToCreate.Code));
                    }
                    return RedirectToAction("Details", "Post", new { id = postToCreate.Id });
                }
                catch (Exception ex)
                {
                    log.Error(ex.Message);
                    ViewBag.CategoryId = new SelectList(Repository.GetAllCategories(), "Id", "Name", model.CategoryId);
                    ViewBag.ProvinceId = new SelectList(Repository.GetAllProvinces(), "Id", "Name", model.ProvinceId);
                    ViewBag.DistrictId = new SelectList(Repository.GetAllDistricts().Where(d => d.ProvinceId == model.ProvinceId), "Id", "Name", model.DistrictId);
                }
            }

            ViewBag.CategoryId = new SelectList(Repository.GetAllCategories(), "Id", "Name", model.CategoryId);
            ViewBag.ProvinceId = new SelectList(Repository.GetAllProvinces(), "Id", "Name", model.ProvinceId);
            ViewBag.DistrictId = new SelectList(Repository.GetAllDistricts().Where(d => d.ProvinceId == model.ProvinceId), "Id", "Name", model.DistrictId);
            return View(model);
        }

        //
        // GET: /Post/Edit/5
        [Authorize(Roles = "User, Admin")]
        public ActionResult Edit(int id)
        {
            try
            {
                int userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                var postModel = (from p in _db.Posts
                                 where (p.Id == id)
                                     && (!p.IsDeleted) && p.UserId == userId
                                 select p).FirstOrDefault();
                if (User.IsInRole("Admin"))// Admin logged.
                {
                    postModel = (from p in _db.Posts
                                 where (p.Id == id)
                                     && (!p.IsDeleted)
                                 select p).FirstOrDefault();
                }
                //Check if the post belongs to current user
                if (postModel == null)
                {
                    return RedirectToAction("Index", "Search");
                }
                ViewBag.CategoryId = new SelectList(Repository.GetAllCategories(), "Id", "Name", postModel.CategoryId);
                ViewBag.ProvinceId = new SelectList(Repository.GetAllProvinces(), "Id", "Name", postModel.District.ProvinceId);
                ViewBag.DistrictId = new SelectList(Repository.GetAllDistricts().Where(d => d.ProvinceId == postModel.District.ProvinceId), "Id", "Name", postModel.DistrictId);
                return View(CommonModel.ConvertPostToPostViewModel(postModel, _noInfo));
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return View();
            }
        }

        [Authorize(Roles = "User, Admin")]
        public bool DeleteImage(int id, int postId)
        {
            try
            {
                var post = _db.Posts.Where(p => p.Id == postId).FirstOrDefault();
                int userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                if (post.UserId == userId || userId == 1)// User of this post or Admin logged.
                {
                    var postImage = _db.PostImages.Where(p => p.Id == id).FirstOrDefault();
                    //Delete in Db
                    postImage.IsDeleted = true;
                    _db.ObjectStateManager.ChangeObjectState(postImage, EntityState.Modified);
                    _db.SaveChanges();

                    //Delete File
                    if (System.IO.File.Exists(HttpContext.Server.MapPath(postImage.Path)))
                    {
                        System.IO.File.Delete(HttpContext.Server.MapPath(postImage.Path));
                    }

                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return false;
            }
        }

        public ActionResult ViewImage(int id)
        {
            //Get images
            try
            {
                var images = (from i in _db.PostImages where (i.PostId == id && !i.IsDeleted) select i);
                if (images != null)
                {
                    ViewBag.Images = images.ToList();
                }
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
            }
            return View();
        }

        //
        // POST: /Post/Edit/5

        [HttpPost]
        [Authorize(Roles = "User, Admin")]
        public ActionResult Edit(PostViewModel postViewModel, IEnumerable<HttpPostedFileBase> images)
        {
            if (images != null && images.Count() > 10)
            {
                ModelState.AddModelError("", "Số lượng ảnh vượt quá 10");
                ViewBag.CategoryId = new SelectList(Repository.GetAllCategories(), "Id", "Name", postViewModel.CategoryId);
                ViewBag.ProvinceId = new SelectList(Repository.GetAllProvinces(), "Id", "Name", postViewModel.ProvinceId);
                ViewBag.DistrictId = new SelectList(Repository.GetAllDistricts().Where(d => d.ProvinceId == postViewModel.ProvinceId), "Id", "Name", postViewModel.DistrictId);
                return View(postViewModel);
            }
            if (ModelState.IsValid)
            {
                try
                {
                    postViewModel = (PostViewModel)CommonModel.TrimObjectProperties(postViewModel);
                    var post = (from p in _db.Posts where (p.Id == postViewModel.Id && !p.IsDeleted) select p).FirstOrDefault();
                    bool isPending = false;
                    int currentPostStatusID = post.StatusId;
                    TimeSpan keepPendingDay;
                    DateTime expiredDate = DateTime.Now;

                    if (currentPostStatusID == StatusConstant.PENDING)
                    {
                        if (post.EditedDate == null)
                        {
                            keepPendingDay = DateTime.Now - post.CreatedDate;
                        }
                        else
                        {
                            keepPendingDay = DateTime.Now - (DateTime)post.EditedDate;
                        }
                        expiredDate = post.ExpiredDate.AddDays(keepPendingDay.Days);
                    }
                    else
                    {
                        expiredDate = post.ExpiredDate;
                    }

                    if (CommonModel.FilterHasBadContent(postViewModel))
                    {
                        post.StatusId = StatusConstant.PENDING;
                        TempData["MessagePendingPostNew"] = "Bài đăng có chứa những từ không cho phép, chúng tôi sẽ duyệt trước khi đăng lên hệ thống";
                        TempData["Pending"] = true;
                        TempData["Success"] = false;
                        isPending = true;
                    }                    
                    if (isPending)
                    {
                        post.StatusId = StatusConstant.PENDING;
                    }
                    else
                    {
                        if (currentPostStatusID == StatusConstant.PENDING)
                        {
                            post.StatusId = StatusConstant.ACTIVATED;                            
                        }
                        else
                        {
                            post.StatusId = currentPostStatusID;

                        }
                    }
                    if (User.IsInRole("Admin"))// Admin logged.
                    {
                        // Admin edit post of user. Edited Date not change.
                        post = CommonModel.ConvertPostViewModelToPost(post, postViewModel, post.CreatedDate, post.EditedDate, post.RenewDate, expiredDate, _noInfo);
                    }
                    else
                    {
                        post = CommonModel.ConvertPostViewModelToPost(post, postViewModel, post.CreatedDate, DateTime.Now, post.RenewDate, expiredDate, _noInfo);
                    }

                    //Nearbyplace
                    Dictionary<int, string> lstNearbyId = CommonController.GetListNearbyLocations(postViewModel, Request);
                    PostLocations postLocation;
                    string nearbyPlace = string.Empty;
                    Locations loc = null;
                    foreach (KeyValuePair<int, string> kvp in lstNearbyId)
                    {
                        loc = _db.Locations.Where(l => l.Id == kvp.Key).FirstOrDefault();
                        if (loc != null)
                        {
                            postLocation = new PostLocations();
                            postLocation.PostId = post.Id;
                            postLocation.LocationId = kvp.Key;
                            _db.PostLocations.AddObject(postLocation);
                            _db.SaveChanges();
                        }
                        nearbyPlace += kvp.Value + ", ";
                    }
                    if (!string.IsNullOrEmpty(nearbyPlace))
                    {
                        nearbyPlace = nearbyPlace.Remove(nearbyPlace.Length - 2);
                        post.NearbyPlace = nearbyPlace;
                        if (CommonModel.FilterHasBadContent(nearbyPlace))
                        {
                            post.StatusId = StatusConstant.PENDING;
                            TempData["MessagePendingPostNew"] = "Bài đăng có chứa những từ không cho phép, chúng tôi sẽ duyệt trước khi đăng lên hệ thống";
                            TempData["Pending"] = true;
                            TempData["Success"] = false;
                            isPending = true;
                            post.StatusId = StatusConstant.PENDING;
                        }
                    }
                    _db.ObjectStateManager.ChangeObjectState(post, System.Data.EntityState.Modified);
                    _db.SaveChanges();

                    PostImages imageToCreate = null;
                    if (!(images == null || images.Count() == 0 || images.Count() > 10))
                    {
                        foreach (HttpPostedFileBase image in images)
                        {
                            if (image != null && image.ContentLength > 0)
                            {
                                
                                var path = Path.Combine(HttpContext.Server.MapPath(DefaultValue.PATH_IMAGES), postViewModel.Id.ToString());
                                //Check if image already exists
                                string pathToCompare = DefaultValue.PATH_IMAGES
                                                        + postViewModel.Id + "/" + Path.GetFileName(image.FileName);
                                var imagesPath = (from i in _db.PostImages
                                                  where (i.Path.Equals(pathToCompare, StringComparison.CurrentCultureIgnoreCase) && !i.IsDeleted)
                                                  select i.Path).ToArray();
                                if (imagesPath.Count() > 0)
                                {
                                    break;
                                }
                                Directory.CreateDirectory(path);
                                string filePath = Path.Combine(path, Path.GetFileName(image.FileName));
                                image.SaveAs(filePath);
                                imageToCreate = new PostImages();
                                imageToCreate.PostId = postViewModel.Id;
                                imageToCreate.Path = DefaultValue.PATH_IMAGES + postViewModel.Id.ToString() + "/" + Path.GetFileName(image.FileName);
                                imageToCreate.IsDeleted = false;

                                _db.PostImages.AddObject(imageToCreate);
                                _db.SaveChanges();
                            }
                        }
                    }
                    if (!isPending)
                    {
                        TempData["MessageSuccessEdit"] = "Thay đổi thông tin thành công.";
                        TempData["Success"] = true;
                    }

                    return RedirectToAction("Details", new { Id = post.Id });
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", ex.InnerException);
                    log.Error(ex.Message);
                }
            }
            ViewBag.CategoryId = new SelectList(Repository.GetAllCategories(), "Id", "Name", postViewModel.CategoryId);
            ViewBag.ProvinceId = new SelectList(Repository.GetAllProvinces(), "Id", "Name", postViewModel.ProvinceId);
            ViewBag.DistrictId = new SelectList(Repository.GetAllDistricts().Where(d => d.ProvinceId == postViewModel.ProvinceId), "Id", "Name", postViewModel.DistrictId);
            return View(postViewModel);
        }

        //
        // GET: /Post/Delete/5
        [Authorize(Roles = "User, Admin")]
        public ActionResult Delete(int id)
        {
            try
            {
                int userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                var post = (from p in _db.Posts where (p.Id == id) select p).FirstOrDefault();
                //Check if the post belongs to current user
                if (post.UserId == userId || User.IsInRole("Admin"))
                {
                    post.IsDeleted = true;
                    _db.ObjectStateManager.ChangeObjectState(post, EntityState.Modified);
                    _db.SaveChanges();
                }
                TempData["MessageDeletePost"] = "Xóa thành công!";
                if (User.IsInRole("Admin"))
                {
                    CommonController.SendSMS(post.PhoneActive, String.Format("Bai dang voi ma tin \"{0}\" cua ban co chua noi dung sai pham da bi xoa boi Admin.", post.Code));
                    return RedirectToAction("Index", "ManagePosts");
                }
                else
                {
                    return RedirectToAction("Posts", "User");
                }
            }
            catch (Exception ex)
            {
                //Error
                log.Error(ex.Message);
                return RedirectToAction("Posts", "User");
            }
        }

        [Authorize(Roles = "User, Admin")]
        public JsonResult AddFavorite(int id)
        {
            var success = false;
            try
            {
                int userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                int postId = id;

                //Check if user has added this post to favorite, but deleted
                var favorite = (from f in _db.Favorites
                                where
                                    (f.PostId == postId && f.UserId == userId && f.IsDeleted)
                                select f).FirstOrDefault();

                //If user never added this post to favorite then add new entry
                if (favorite == null)
                {
                    favorite = new Favorites();
                    favorite.UserId = userId;
                    favorite.PostId = postId;
                    favorite.AddedDate = DateTime.Now;
                    favorite.IsDeleted = false;
                    _db.Favorites.Attach(favorite);
                    _db.ObjectStateManager.ChangeObjectState(favorite, EntityState.Added);
                }
                //If user has added this post to favorite before, set deleted to false
                else
                {
                    favorite.IsDeleted = false;
                    _db.ObjectStateManager.ChangeObjectState(favorite, EntityState.Modified);
                }
                _db.SaveChanges();
                success = true;
                return Json(success, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return Json(success, JsonRequestBehavior.AllowGet);
            }

        }

        [Authorize(Roles = "User, Admin")]
        public JsonResult RemoveFavorite(int id)
        {
            var success = false;
            try
            {
                int userId = CommonModel.GetUserIdByUsername(User.Identity.Name);
                int postId = id;

                //Get favorite from db
                var favorite = (from f in _db.Favorites
                                where
                                    (f.PostId == postId && f.UserId == userId && !f.IsDeleted)
                                select f).FirstOrDefault();

                if (favorite == null)
                {
                    return Json(success, JsonRequestBehavior.AllowGet);
                }
                favorite.IsDeleted = true;

                _db.ObjectStateManager.ChangeObjectState(favorite, EntityState.Modified);
                _db.SaveChanges();
                success = true;
                return Json(success, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                log.Error(ex.Message);
                return Json(success, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
