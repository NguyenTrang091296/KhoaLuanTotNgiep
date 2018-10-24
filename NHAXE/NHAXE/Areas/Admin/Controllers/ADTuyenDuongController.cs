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
    public class ADTuyenDuongController : BaseController
    {
        // GET: Admin/ADTuyenDuong
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (Session["Quyen"] != null)
                ViewBag.Quyen = Session["Quyen"].ToString();
            var dao = new TuyenDuongDao();
            var list = dao.listAllUser();
            return View(list);
           
        }
        [HttpPost]
        public async Task<ActionResult> kiemTraQuyen()
        {
            
            if (Session["Quyen"] != null)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
        [HttpPost]
        public async Task<ActionResult> Delete(string id)
        {
            
            var result = new TuyenDuongDao().Delete(id);
            if (result ==1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
        public ActionResult Details(string  maTuyen)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new TuyenDuongDao().TimMaTuyen(maTuyen);
            if (model == null)
            {
                model = new TuyenDuong();
                return View(model);
            }
          
            return View(model);
        }
        public ActionResult Create()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
                return View();
            
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(TuyenDuong model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {
                var tuyenduong = new TuyenDuongDao().TimMaTuyen(model.MaTD);
                if (tuyenduong == null)
                {
                    var result = new TuyenDuongDao().AddTuyenDuong(model);
                    if(result)
                    {
                        ModelState.AddModelError("", "Thêm thành công tuyến đường");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Thêm thất bại tuyến đường");
                    }
                   
                }
                else
                {
                    var kq = new TuyenDuongDao().UpdateTuyenDuong(model);
                    if (kq)
                    {
                        ModelState.AddModelError("", "cập nhật thành công tuyến đường");
                        //return RedirectToAction("Index", "ADTuyenDuong");
                    }
                    else
                    {
                        ModelState.AddModelError("", "cập nhật thất bại tuyến đường");
                    }
                }

               
            }
            return View(model);
        }
    }
}