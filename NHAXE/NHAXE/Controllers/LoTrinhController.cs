using Models.Dao;
using Models.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Controllers
{
    public class LoTrinhController : Controller
    {
        public ActionResult GetLoTrinh(string mT)
        {
            //maT = "DALAT-SAIGON";
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var iplLtrinh = new PhanCongChuyenXe(); 
            var model = iplLtrinh.listAllUser(mT);
            
            return View(model);

        }
        public ActionResult BinhLuan(string maTuyen, string binhluan)
        {
            //maT = "DALAT-SAIGON";
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (ViewBag.User  == null)
            { return Json(new { success =-1 }); }
            ViewBag.Email = Session["MaHK"].ToString();
            int MaHK = int.Parse(ViewBag.Email);
            BinhLuan bluan = new BinhLuan();
            bluan.MaTuyen = maTuyen;
            bluan.NoiDung = binhluan;
            bluan.MaHK = MaHK;
            bluan.ThoiGian = DateTime.Now;
            var iplLtrinh = new PhanCongChuyenXe();
            var model = iplLtrinh.listAllUser(maTuyen);
            var model1 = iplLtrinh.AddBinhLuan(bluan);
            if (model1 == true)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
    }
}