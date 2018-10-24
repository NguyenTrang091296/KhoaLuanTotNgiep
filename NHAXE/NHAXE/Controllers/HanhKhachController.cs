using Models.Dao;
using Models.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Controllers
{
    public class HanhKhachController : Controller
    {
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
                        ModelState.AddModelError("", "Bạn đã đăng kí thành công");
                    }

                }
                else
                {
                    ModelState.AddModelError("", "Xác nhận mật khẩu không đúng");
                }
            }
            return View(model);
        }
        public ActionResult DiaChi()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new DiaChi();
            ViewBag.tinh = new SelectList(new TinhDao().listTinhAll(), "matinh", "tentinh");
            return View(model);
        }
        public void setViewBag(long? selectedID = null)
        {
            var dao = new DiaChi();
            ViewBag.tinh = new SelectList(new TinhDao().listTinhAll(), "matinh", "tentinh", selectedID);
            //ViewBag.huyen = new SelectList(dao.list(), "MaTD", "MaTD", selectedID);
            

        }
        public ActionResult DSTinh()
        {
            List<Tinh> DStinh = new TinhDao().listTinhAll();
            return Json(new { data = DStinh });
        }
        public ActionResult DSHuyen(int id)
        {
            List<Huyen> DShuyen = new TinhDao().listHuyen(id);
            return Json(new { data = DShuyen });
        }
    }
}