﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RentalHouseFinding.Models;
using System.Web.Helpers;
using System.Web.Routing;
using System.Collections;
using System.Data.Objects;
using RentalHouseFinding.Common;

namespace RentalHouseFinding.Controllers.Admin
{
    public class ManagePostsController : Controller
    {
        private const int MAX_RECORD_PER_PAGE = DefaultValue.MAX_RECORD_PER_PAGE;
        private readonly static RentalHouseFindingEntities _db = new RentalHouseFindingEntities();

        //
        // GET: /ManagePosts/
        [Authorize(Roles = "Admin")]
        public ActionResult Index(int? page, string sort, string sortdir, ManagePostsModel model)
        {
            //Init/Retain filter values
            ViewBag.Provinces = new SelectList(_db.Provinces.Where(p => !p.IsDeleted), "Id", "Name", model.ProvinceId);
            ViewBag.Districts = new SelectList(_db.Districts.Where(p => !p.IsDeleted), "Id", "Name", model.DistrictId);
            ViewBag.Users = new SelectList(_db.Users.Where(p => !p.IsDeleted), "Id", "Username", model.UserId);
            ViewBag.Categories = new SelectList(_db.Categories.Where(p => !p.IsDeleted), "Id", "Name", model.CategoryId);
            ViewBag.Statuses = new SelectList(_db.PostStatuses.Where(p=>!p.IsDeleted), "Id", "Name", model.StatusId);

            if (page == null)
            {
                page = 1;
            }
            //else
            {
                ViewBag.Index = ((int)page - 1) * MAX_RECORD_PER_PAGE;
                model.Grid = getGrid(model, (int)page, sort, sortdir);
                return View(model);
            }  
            
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public ActionResult Index(ManagePostsModel model)
        {
            //Retain filter values
            ViewBag.Provinces = new SelectList(_db.Provinces.Where(p => !p.IsDeleted), "Id", "Name", model.ProvinceId);
            ViewBag.Districts = new SelectList(_db.Districts.Where(p => !p.IsDeleted), "Id", "Name", model.DistrictId);
            ViewBag.Users = new SelectList(_db.Users.Where(p => !p.IsDeleted), "Id", "Username", model.UserId);
            ViewBag.Categories = new SelectList(_db.Categories.Where(p => !p.IsDeleted), "Id", "Name", model.CategoryId);
            ViewBag.Statuses = new SelectList(_db.PostStatuses.Where(p => !p.IsDeleted), "Id", "Name", model.StatusId);

            ViewBag.Index = 0;
            model.Grid = getGrid(model, 1, "CreatedDate", "ASC");

            return View(model);
        }

        [Authorize(Roles = "Admin")]
        public WebGrid getGrid(ManagePostsModel model, int page, string sort, string sortdir)
        {
            IQueryable<Posts> postList = _db.Posts;            
            if (model.UserId != null)
            {
                if (model.UserId > 0)
                {
                    postList = postList.Where(p => (p.UserId == model.UserId));
                }
            }
            if (model.ProvinceId != null && (model.DistrictId == null || model.DistrictId == 0))
            {
                if (model.ProvinceId > 0)
                {
                    postList = postList.Where(p => (p.District.ProvinceId == model.ProvinceId ));
                }

            }

            if (model.DistrictId != null)
            {
                if (model.DistrictId > 0)
                {
                    postList = postList.Where(p => (p.DistrictId == model.DistrictId));
                }

            }

            if (model.StatusId != null)
            {
                if (model.StatusId > 0)
                {
                    postList = postList.Where(p => (p.StatusId == model.StatusId));
                }

            }
            if (model.CategoryId != null)
            {
                if (model.CategoryId > 0)
                {
                    postList = postList.Where(p => (p.CategoryId == model.CategoryId));
                }

            }

            if (model.CreatedDateFrom != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.CreatedDate, model.CreatedDateFrom) <= 0));
            }

            if (model.CreatedDateTo != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.CreatedDate, model.CreatedDateTo) >= 0));
            }

            if (model.EditedDateFrom != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.EditedDate, model.EditedDateFrom) <= 0));
            }

            if (model.EditedDateTo != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.EditedDate, model.EditedDateTo) >= 0));
            }

            if (model.RenewedDateFrom != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.RenewDate, model.RenewedDateFrom) <= 0));
            }

            if (model.RenewedDateTo != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.RenewDate, model.RenewedDateTo) >= 0));
            }

            if (model.ExpireDateFrom != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.ExpiredDate, model.ExpireDateFrom) <= 0));
            }

            if (model.ExpireDateTo != null)
            {
                postList = postList.Where(p => (EntityFunctions
                            .DiffDays(p.ExpiredDate, model.ExpireDateTo) >= 0));
            }
            if (model.IsDelete)
            {
                postList = postList.Where(p => p.IsDeleted);
            }
            else
            {
                postList = postList.Where(p => !p.IsDeleted);
            }

            var postViewList = postList.Select(p => new
            {
                ID = p.Id,
                User = String.IsNullOrEmpty(p.User.Name) ? p.User.Username : p.User.Name,
                p.Title,
                CountRenew = (from pay in _db.Payments
                              where (pay.PostsId == p.Id)
                              select pay.Id).Count(),
                p.CreatedDate,
                p.EditedDate,
                p.RenewDate,
                p.ExpiredDate,
                PostStatus = p.PostStatus.Name,
                Category = p.Category.Name
            });
            //Custom sort
            if (sortdir == "ASC")
            {
                if (sort == "ID")
                {
                    postViewList = postViewList.OrderBy(p => p.ID)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "User")
                {
                    postViewList = postViewList.OrderBy(p => p.User)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "Title")
                {
                    postViewList = postViewList.OrderBy(p => p.Title)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "PostStatus")
                {
                    postViewList = postViewList.OrderBy(p => p.PostStatus)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "CreatedDate")
                {
                    postViewList = postViewList.OrderBy(p => p.CreatedDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "EditedDate")
                {
                    postViewList = postViewList.OrderBy(p => p.EditedDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "RenewDate")
                {
                    postViewList = postViewList.OrderBy(p => p.RenewDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "ExpiredDate")
                {
                    postViewList = postViewList.OrderBy(p => p.ExpiredDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "CountRenew")
                {
                    postViewList = postViewList.OrderBy(p => p.CountRenew)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }

            }
            else
            {
                if (sort == "ID")
                {
                    postViewList = postViewList.OrderByDescending(p => p.ID)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "User")
                {
                    postViewList = postViewList.OrderByDescending(p => p.User)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "Title")
                {
                    postViewList = postViewList.OrderByDescending(p => p.Title)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "PostStatus")
                {
                    postViewList = postViewList.OrderBy(p => p.PostStatus)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "CreatedDate")
                {
                    postViewList = postViewList.OrderByDescending(p => p.CreatedDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "EditedDate")
                {
                    postViewList = postViewList.OrderByDescending(p => p.EditedDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "RenewDate")
                {
                    postViewList = postViewList.OrderByDescending(p => p.RenewDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "ExpiredDate")
                {
                    postViewList = postViewList.OrderByDescending(p => p.ExpiredDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "CreatedDate")
                {
                    postViewList = postViewList.OrderByDescending(p => p.CreatedDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else if (sort == "CountRenew")
                {
                    postViewList = postViewList.OrderByDescending(p => p.CountRenew)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
                else
                {
                    postViewList = postViewList.OrderByDescending(p => p.CreatedDate)
                        .Skip(MAX_RECORD_PER_PAGE * ((int)page - 1)).Take(MAX_RECORD_PER_PAGE);
                }
            }
            
            var grid = new WebGrid(ajaxUpdateContainerId: "container-grid", ajaxUpdateCallback: "setArrows",
                canSort: true, rowsPerPage: MAX_RECORD_PER_PAGE);
            grid.Bind(postViewList, autoSortAndPage: false, rowCount: postList.Count());
            return grid;
        }
    }


}
