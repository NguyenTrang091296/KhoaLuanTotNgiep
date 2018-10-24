using CrystalDecisions.CrystalReports.Engine;
using Models;
using Models.Dao;
using Models.Framework;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Areas.Admin.Controllers
{
    public class ADBaoCaoNhaXeController : Controller
    {
        // GET: Admin/ADBaoCaoNhaXe
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult BaoCaoTatCaChuyenXeBiHuy()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var list = new List<ChuyenXeHuy>();
            return View(list);
        }
       
        public async Task<ActionResult> BaoCaoChuyenXeBiHuy1(DateTime NgayBatDau, DateTime NgayKetThuc)
        {
            var dao = new PhanCongChuyenDao();
            var list = dao.listDSBiHuy(NgayBatDau, NgayKetThuc);
            if (list.Count > 0)
            {
                return Json(new { success = 1 });
            }
            return Json(new { success = 0 });
        }
        public ActionResult BaoCaoChuyenXeBiHuy(DateTime NgayBatDau, DateTime NgayKetThuc)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new PhanCongChuyenDao();
            ViewBag.NgayBatDau = NgayBatDau;
            ViewBag.NgayKetThuc = NgayKetThuc;
            var list = dao.listDSBiHuy(NgayBatDau,NgayKetThuc);
            return View(list);
        }
        
        public ActionResult ExportChuyenXeBiHuy(DateTime NgayBatDau, DateTime NgayKetThuc)
        {
            var dao = new PhanCongChuyenDao();
            var list = dao.listDSBiHuy(NgayBatDau, NgayKetThuc);
            ReportDocument rd = new ReportDocument();
            rd.Load(Path.Combine(Server.MapPath("~/Reports"), "CrystalReportThongKeChuyenXeHuy.rpt"));
            rd.SetDataSource(list);
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Stream stream = rd.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            stream.Seek(0, SeekOrigin.Begin);
            string savefile = string.Format("ThongtinChuyenXeHuy_{0}", DateTime.Now);
            return File(stream, "application/pdf", savefile);
        }
        public ActionResult BaoCaoTatCaChuyenXe()
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var dao = new PhanCongChuyenDao();
            var list = dao.listAll();
            return View(list);
        }
        public ActionResult ExportChuyenXe()
        {
            var dao = new PhanCongChuyenDao();
            var list = dao.listAll();
            ReportDocument rd = new ReportDocument();
            rd.Load(Path.Combine(Server.MapPath("~/Reports"), "CrystalReportThongKeChuyenXe.rpt"));
            rd.SetDataSource(list);
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Stream stream = rd.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            stream.Seek(0, SeekOrigin.Begin);
            string savefile = string.Format("ThongtinChuyenXe_{0}",DateTime.Now);
            return File(stream, "application/pdf", savefile);
        }

    }
}
