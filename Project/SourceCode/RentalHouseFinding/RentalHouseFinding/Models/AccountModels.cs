﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;
using System.Reflection;
using System.Linq;
using RentalHouseFinding.ValidateAttr;
using System.ComponentModel;

namespace RentalHouseFinding.Models
{

    public class ChangePasswordModel
    {
        [Required(ErrorMessage = "Xin vui lòng nhập mật khẩu cũ")]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu cũ")]
        public string OldPassword { get; set; }


        [Required(ErrorMessage = "Xin vui lòng nhập mật khẩu mới")]
        [StringLength(100, ErrorMessage = @"{0} phải có ít nhất {2} ký tự. Vui lòng nhập lại.", MinimumLength = 8)]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu mới")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Xác nhận mật khẩu")]
        [Compare("NewPassword", ErrorMessage = @"Mật khẩu mới và mật khẩu xác nhận không trùng nhau.")]
        public string ConfirmPassword { get; set; }
    }

    public class LogOnModel
    {
        [Display(Name = "OpenID")]
        public string OpenID { get; set; }

        [Required(ErrorMessage = "Xin vui lòng nhập tài khoản")]
        [Display(Name = "Tên đăng nhập")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Xin vui lòng nhập mật khẩu")]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }

        [Display(Name = "ghi nhớ?")]
        public bool RememberMe { get; set; }


    }

    public class RegisterModel
    {
        [Mandatory(ErrorMessage = "Bạn phải đồng ý với các điều khoản của chúng tôi.")]
        [DisplayName("Terms Accepted")]
        public bool IsTermsAccepted { get; set; }

        [Required(ErrorMessage= "Xin vui lòng điền tên tài khoản.")]
        [Display(Name = "Tên tài khoản")]
        [StringLength(50, ErrorMessage = @"{0} tối đa là {1} ký tự. Vui lòng nhập lại")]
        [Remote("IsUserNameAvailable", "Validation")]
        [RegularExpression(@"(\S)+", ErrorMessage = "Không thể sử dụng khoảng trắng")]
        public string UserName { get; set; }

        [Display(Name = "Email")]
        [RequiredIfOtherFieldIsNull("PhoneNumber")]
        [StringLength(50, ErrorMessage = @"{0} tối đa là {1} ký tự.")]
        //[Required(ErrorMessage = "Xin vui lòng nhập email.")]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*", ErrorMessage = "Email không hợp lệ.")]
        [Remote("IsEmailAvailable", "Validation")]
        public string Email { get; set; }

        [Required(ErrorMessage= "Xin vui lòng nhập mật khẩu")]
        [StringLength(20, ErrorMessage = @"{0} phải tối thiểu là {2} ký tự.", MinimumLength = 8)]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Nhập lại mật khẩu")]
        [Compare("Password", ErrorMessage = @"Mật khẩu không trùng khớp.")]
        public string ConfirmPassword { get; set; }

        //[Required(ErrorMessage = "Xin vui lòng nhập số điện thoại.")]
        [Display(Name = "Số điện thoại")]
        [StringLength(15, ErrorMessage = @"{0} tối đa là {1} ký tự. Vui lòng nhập lại")]
        [RegularExpression("(([0+])([0-9]+))", ErrorMessage = "Sai định dạng,xin vui lòng nhập lại")]
        [RequiredIfOtherFieldIsNull("Email")]
        public string PhoneNumber { get; set; }

        [Display(Name = "Họ tên")]
        [StringLength(50, ErrorMessage = @"{0} tối đa là {1} ký tự. Vui lòng nhập lại")]
        public string Name { get; set; }
                
    }

    public class UserDetailsModel
    {
        public string id { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string gender { get; set; }
        public string email { get; set; }        
        public string locale { get; set; }
        public string link { get; set; }
        public string user_birthday { get; set; }
        public string phoneMumber { get; set; }
        public string address { get; set; }
        public int timezone { get; set; }
        //public FacebookLocation location { get; set; }
        public Picture picture { get; set; }
    }

    public class ForgotPassword
    {
        [Required(ErrorMessage = "Xin vui lòng điền tên tài khoản.")]
        [Display(Name = "Tên tài khoản")]
        [StringLength(50, ErrorMessage = @"{0} tối đa là {1} ký tự. Vui lòng nhập lại")]
        public string Username { get; set; }
    }
}
