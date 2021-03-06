﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NHAXE.Areas.Admin.Models
{
    public class ADLoginModel
    {
        [Required(ErrorMessage = "Mời bạn nhập tên đăng nhập")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Mời bạn nhập mật khẩu")]
        public string PassWord { get; set; }
        public bool RememberMe { get; set; }
    }
}