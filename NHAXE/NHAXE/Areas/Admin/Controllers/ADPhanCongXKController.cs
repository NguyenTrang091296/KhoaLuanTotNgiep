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
    public class ADPhanCongXKController : BaseController
    {
        // GET: Admin/ADPhanCongChuyen
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new PhanCongChuyenDao();
            dao.updateTrangThai();
            var list = dao.listAll();
            return View(list);
        }
        public void setViewBag(long? selectedID = null)
        {
            var dao = new TuyenDuongDao();
            ViewBag.BSX = new SelectList(new XeKhachDao().listAll(), "BSX", "BSX", selectedID);
            ViewBag.MaTD = new SelectList(dao.list(), "MaTD", "MaTD", selectedID);
            var list = new List<string>();
            for(int i=0; i <24; i++)
            {
                list.Add(i + ":00");
            }
           
        }
        public ActionResult Create()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            setViewBag();
                return View();
        }
        public ActionResult Details(int Mapc)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new PhanCongChuyenDao().TimPCXK(Mapc);
            setViewBag();
            return View(model);

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(PhanCongChuyen model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {
                var kq = new PhanCongChuyenDao().UpdatePhanCongChuyen(model);
                if (kq)
                {
                    ModelState.AddModelError("", "Cập nhật lịch chạy  Thành công");
                    var m = new PhanCongChuyenDao().TimPCXK(model.MaChuyen);
                    return View(m);
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật lịch chạy  thất bại ");
                }
            }
            setViewBag();
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(PhanCongChuyen model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();

            if (ModelState.IsValid)
            {

               
                    var kq = new PhanCongChuyenDao().AddPhanCongChuyen(model);
                    if (kq==1)
                    {
                        ModelState.AddModelError("", "Lịch chạy của tuyến đường" +model.MaTD + " ngày " +model.NgayKH.ToString("dd-mm-yyyy")+" của xe "+model.BSX+" đã tồn tại");
                    }
                else if (kq ==0)
                    {
                        ModelState.AddModelError("", "Thêm lịch chạy  thất bại ");
                    }
                else
                {
                    ModelState.AddModelError("", "Thêm lịch chạy thành công");
                }

               

            }
            setViewBag();
            return View(model);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {

            var result = new PhanCongChuyenDao().Delete(id);
            if (result == 1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
    }
    
}