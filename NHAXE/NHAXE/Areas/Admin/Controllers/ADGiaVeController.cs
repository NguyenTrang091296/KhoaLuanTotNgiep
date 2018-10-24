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
    public class ADGiaVeController : BaseController
    {
        // GET: Admin/ADGiaVe
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new GiaVeDao();
            var list = dao.listAll();
            return View(list);
        }
        public void setViewBag(long? selectedID = null)
        {
            var dao = new TuyenDuongDao();
          
            ViewBag.MaTD = new SelectList(dao.list(), "MaTD", "MaTD", selectedID);
           
        }
        public ActionResult Create()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            setViewBag();
                return View();
        }
        public ActionResult Details(string maTuyen, DateTime  ngay)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();

            var model = new GiaVeDao().TimGiaVe(maTuyen, ngay);
                setViewBag();
                return View(model);
            
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(GiaVe model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {
                    var kq = new GiaVeDao().UpdateGiaVe(model);
                    if (kq)
                    {
                        ModelState.AddModelError("", "Cập nhật Giá vé Thành công");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Cập nhật Giá vé thất bại ");
                    }
            }
            setViewBag();
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(GiaVe model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {

                var GV = new GiaVeDao().TimGiaVe(model.MaTD, model.NgayBD);
                if (GV.MaTD == "abc")
                  {
                    var kq = new GiaVeDao().AddGiaVe(model);
                    if(kq)
                    {
                        ModelState.AddModelError("", "Thêm Giá vé Thành công");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Thêm Giá vé thất bại ");
                    }

                }else
                  {
                     ModelState.AddModelError("", "Thông tin giá vé cho tuyến đường "+model.MaTD +" ngày" + model.NgayBD +"đã tồn tại");
                  }

            }
            setViewBag();
            return View(model);
        }
        [HttpPost]
        public async Task<ActionResult> Delete(string id, DateTime ngay)
        {

            var result = new GiaVeDao().Delete(id,ngay);
            if (result == 1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
    }
    
}