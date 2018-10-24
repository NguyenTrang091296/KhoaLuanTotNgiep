using Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Controllers
{

    public class DonHangController : Controller
    {
        // GET: DonHang
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (Session["MaHK"] != null)

                ViewBag.Email = Session["MaHK"].ToString();
            int MaHK = int.Parse(ViewBag.Email);
            var model = new DonHangDao().ListDS(MaHK);
            return View(model);
        }
        [HttpPost]
        public ActionResult ThanhToan(int []MaDH)
        {

            return View();
        }
        
        [HttpPost]
        public async Task<ActionResult> DeleteDonHang(int id)
        {

            var result = new DonHangDao().Delete(id);
            if (result == 1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
        [HttpPost]
        public async Task<ActionResult> DeleteVeXe(int id, int idghe)
        {

            var result = new DonHangDao().DeleteVeXe(id,idghe);
            if (result == 1)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
    }
}