using Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            if (Session["Email"] != null)
                ViewBag.Email = Session["Email"].ToString();
            var dao = new PhanCongChuyenDao();
            dao.updateTrangThai();
            var dao1 = new ThongTinDatVeDao();
            dao1.updateTrangThai();
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}