using Models.Dao;
using Models.Framework;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace NHAXE.Areas.Admin.Controllers
{
    public class ADXeKhachController : BaseController
    {
        // GET: Admin/ADXeKhach
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new XeKhachDao();
            var list = dao.listAll();
            return View(list);
           
        }
       
        [HttpPost]
        public async Task<ActionResult> Delete(string id)
        {
            
            var result = new XeKhachDao().Delete(id);
            if (result ==1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
        public ActionResult Details(string BSX)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            setViewBag();
            var model = new XeKhachDao().TimXeKhach(BSX);
            if (model == null)
            {
                model = new XeKhach();
                
                return View(model);
            }
          
            return View(model);
        }
        public void setViewBag(long? selectedID = null)
        {
            var dao = new XeKhachDao();

            ViewBag.MaLoaiXe = new SelectList(dao.listLX(), "MaLoaiXe", "TenLoaiXe", selectedID);

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Details(XeKhach model)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ModelState.IsValid)
            {
                var XeKhach = new XeKhachDao().TimXeKhach(model.BSX);
                if (XeKhach == null)
                {
                    var result = new XeKhachDao().AddXeKhach(model);
                    if(result)
                    {
                        ModelState.AddModelError("", "Thêm thành công Xe khách");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Thêm Xe khách thất bại ");
                    }
                   
                }
                else
                {
                    var kq = new XeKhachDao().UpdateXeKhach(model);
                    if (kq)
                    {
                        ModelState.AddModelError("", "cập nhật thành công Xe khách");
                        //return RedirectToAction("Index", "ADXeKhach");
                    }
                    else
                    {
                        ModelState.AddModelError("", "cập nhật thất bại Xe khách");
                    }
                }

               
            }
            setViewBag();
            return View(model);
        }
    }
}