using Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Controllers
{
    public class TuyenDuongController : Controller
    {
        // GET: TuyenDuong
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var model = new TuyenDuongDao().listAllUser();
            return View(model);

            
        }
        public ActionResult BinhLuan()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
           
            return View();


        }
    }

}