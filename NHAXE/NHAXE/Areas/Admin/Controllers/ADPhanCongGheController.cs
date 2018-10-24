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
    public class ADPhanCongGheController : BaseController
    {
       
        public ActionResult Index()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new PhanCongGheDao();
            var list = dao.listAll();
            return View(list);
        }
        
    }
    
}