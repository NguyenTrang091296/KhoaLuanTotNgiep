using Models.Dao;
using Models.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Areas.Admin.Controllers
{
    public class ADHanhKhachController : BaseController
    {
        // GET: Admin/ADHanhKhach
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new HanhKhachDao();
            var list = dao.listAll();
            return View(list);
           
        }
       
        [HttpPost]
        public async Task<ActionResult> Delete(int id)
        {
            
            var result = new HanhKhachDao().Delete(id);
            if (result ==1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
        public ActionResult Details(int MAHK)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new HanhKhachDao().TimHanhKhach(MAHK);
            return View(model);
        }
        public ActionResult Create()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new HanhKhach();
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(HanhKhach model, string XNMatKhau)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {
                if (XNMatKhau == model.MatKhau)
                {
                    
                        var result = new HanhKhachDao().AddHanhKhach(model);
                        if (result == 1)
                        {
                            ModelState.AddModelError("", "Tên đăng nhập đã tồn tại");
                        }
                        else if (result == 2)
                        {
                            ModelState.AddModelError("", "Email đã tồn tại");
                        }
                        else
                        {
                            ModelState.AddModelError("", "Tạo hành khách thành công");
                        }
                    
                }
                else
                {
                    ModelState.AddModelError("", "Xác nhận mật khẩu không đúng");
                }
            }
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(HanhKhach model ,string XNMatKhau)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
          {
                if(XNMatKhau == model.MatKhau)
                {
                        var kq = new HanhKhachDao().UpdateHanhKhach(model);
                        if (kq)
                        {
                            ModelState.AddModelError("", "cập nhật thông tin hành khách thành công ");
                            var model1 = new HanhKhachDao().TimHanhKhach(model.MaHK);
                            return View(model1);
                    }
                        else
                        {
                            ModelState.AddModelError("", "cập nhật  thông tin hành khách Xe khách");
                        }
                    
                }else
                {
                    ModelState.AddModelError("", "Xác nhận mật khẩu không đúng");
                }
            }
            return View(model);
        }
    }
}