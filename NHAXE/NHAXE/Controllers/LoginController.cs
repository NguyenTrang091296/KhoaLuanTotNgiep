using Models;
using NHAXE.Code;
using NHAXE.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Controllers
{
    public class LoginController : Controller
    {

        public object MessageBox { get; set; }

        // GET: Login
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(LoginModel model)
        {


            if (ModelState.IsValid)
            {
               // string mk = Encryptor.MD5Hash(model.MATKHAU);
                var result = new AccountModel().Login(model.UserName, model.PassWord);
               var ressultEmail = new AccountModel().quyen(model.UserName);
                
                if (ressultEmail == "USER")
                {
                    var user = new AccountModel().GetByEmail1(model.UserName);
                    Session["MaHK"] = user.MaHK;
                    Session["User"] = user.TenHK;
                    Session["Quyen"] = ressultEmail;
                }else
                {
                    var user = new AccountModel().GetByEmail(model.UserName);
                    Session["MaHK"] = user.MaNV;
                    Session["User"] = user.TenNV;
                    Session["Quyen"] = ressultEmail;
                }
              
                if (result == 1 )
                {
                    SessionHelper.SetSession(new UserSession() { Name = model.UserName});
                    return RedirectToAction("Index", "Home");
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