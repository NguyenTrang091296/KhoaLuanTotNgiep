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
    public class ADPhanCongCVController : BaseController
    {
        // GET: Admin/ADPhanCongCV
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new PhanCongCVDao();
            var list = dao.listAll();
            return View(list);
        }
        public void setViewBag(long? selectedID = null)
        {
            ViewBag.BSX = new SelectList(new XeKhachDao().listAll(), "BSX", "BSX", selectedID);
            ViewBag.NhanVien = new  SelectList( new NhanVienDao().listAllTaiXe(), "MaNV" , "TenNV", selectedID);
            ViewBag.NhanVien1 = new SelectList(new NhanVienDao().listAllTiepVien(), "MaNV", "TenNV", selectedID);

        }
        public ActionResult Create()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            setViewBag();
            return View();
        }
        public ActionResult Details(int MaCV)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new PhanCongCVDao().TimPhanCongCV(MaCV);
            setViewBag();
            return View(model);

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(PhanCongCV model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {
                var kq = new PhanCongCVDao().UpdatePhanCongCV(model);
                if (kq)
                {
                    ModelState.AddModelError("", "Cập nhật lịch phân công Thành công");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật  lịch phân công thất bại ");
                }
            }
            setViewBag();
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(PhanCongCV model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {

                var GV = new PhanCongCVDao().TimPhanCongCVofBSX(model.BSX, model.NgayBD);
                if (GV == null)
                {
                    var kq = new PhanCongCVDao().AddPhanCongCV(model);
                    if (kq)
                    {
                        ModelState.AddModelError("", "Thêm lịch phân công Thành công");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Thêm lịch phân công thất bại ");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "Thông tin lịch phân công công việc cho xe " + model.BSX + " ngày" + model.NgayBD.ToString("dd-MM-yyyy ") + "đã tồn tại");
                }

            }
            setViewBag();
            return View(model);
        }
        [HttpPost]
        public async Task<ActionResult> Delete(int id)
        {

            var result = new PhanCongCVDao().Delete(id);
            if (result == 1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
    }

    }