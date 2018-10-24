using Models;
using NHAXE.Areas.Admin.Common;
using NHAXE.Areas.Admin.Models;
using NHAXE.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Areas.Admin.Controllers
{
    public class ADLoginController :Controller
    {
      

        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(ADLoginModel model)
        {
            if (ModelState.IsValid)
            {
                // string mk = Encryptor.MD5Hash(model.MATKHAU);
                var result = new AccountModel().Login(model.UserName, model.PassWord);
                var ressultEmail = new AccountModel().quyen(model.UserName);

                if (result == 1 && ressultEmail == "USER")
                {
                    ModelState.AddModelError("", "Bạn không có quyền đăng nhập vào trang này");
                }
                if (result == 1)
                {
                     var user = new AccountModel().GetByEmail(model.UserName);
                    Session["MaHK"] = user.MaNV;
                    var userSession = new UserLogin();
                    userSession.Userid = user.MaNV;
                    Session["User"] = user.TenNV;
                    userSession.TENNV = user.TenNV;
                    Session["Quyen"] = ressultEmail;
                    userSession.QUYEN = ressultEmail;
                    Session.Add(CommonConstants.USER_SESSION, userSession);
                    return RedirectToAction("Index", "ADTuyenDuong");
                }
                else
                {
                    ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu không đúng");
                }
            }

            return View(model);
        }
        public ActionResult LogOut()
        {
            Session.Clear();
            return RedirectToAction("Index");
        }
    }
}