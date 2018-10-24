using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NHAXE.Models
{
    public class LoginModel
    {
        [Required]
      public  string UserName { set; get; }
      public string PassWord { set; get; }
    }
}