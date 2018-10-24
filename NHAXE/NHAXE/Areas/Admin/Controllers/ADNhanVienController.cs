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
    public class ADNhanVienController : BaseController
    {
        // GET: Admin/ADNhanVien
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new NhanVienDao();
            var list = dao.listAll();
            return View(list);
           
        }
       
        [HttpPost]
        public async Task<ActionResult> Delete(int id)
        {
            
            var result = new NhanVienDao().Delete(id);
            if (result ==1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
        public ActionResult Details(int MANV)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new NhanVienDao().TimNhanVien(MANV);
            setViewBag();
            return View(model);
        }
        public void setViewBag(long? selectedID = null)
        {
            var dao = new NhanVienDao();

            ViewBag.MaChucVu = new SelectList(dao.listCV(), "MachucVu", "TenChucVu", selectedID);

        }
        public ActionResult Create()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new NhanVien();
            setViewBag();
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(NhanVien model, string XNMatKhau)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {
                if (XNMatKhau == model.MatKhau)
                {
                    
                        var result = new NhanVienDao().AddNhanVien(model);
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
                            ModelState.AddModelError("", "Tạo nhân viên thành công");
                        }
                    
                }
                else
                {
                    ModelState.AddModelError("", "Xác nhận mật khẩu không đúng");
                }
            }
            setViewBag();
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(NhanVien model ,string XNMatKhau)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
          {
                if(XNMatKhau == model.MatKhau)
                {
                        var kq = new NhanVienDao().UpdateNhanVien(model);
                        if (kq)
                        {
                            ModelState.AddModelError("", "cập nhật thông tin nhân viên thành công ");
                            var model1 = new NhanVienDao().TimNhanVien(model.MaNV);
                            setViewBag();
                            return View(model1);
                    }
                        else
                        {
                            ModelState.AddModelError("", "cập nhật  thông tin nhân viên Xe khách");
                        }
                    
                }else
                {
                    ModelState.AddModelError("", "Xác nhận mật khẩu không đúng");
                }
            }
            setViewBag();
            return View(model);
        }
    }
}