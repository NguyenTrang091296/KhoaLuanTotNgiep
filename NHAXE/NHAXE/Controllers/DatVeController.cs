using Models;
using Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NHAXE.Controllers
{
    public class DatVeController : Controller
    {
        // GET: DatVe
        public ActionResult DatVe(int MaPC)
        {
            if (Session["User"] != null)
                ViewBag.User = Session["User"].ToString();
            var thongtin = new ThongTinDatVeDao().GetThongTin(MaPC);
            return View(thongtin);
        }
        [HttpPost]
        public ActionResult Datve(int maPC, int[] DSGheTD, string[] DSGheThayDoi, int[] DSGheID)

        {
            var thongtin = new ThongTinDatVeDao().GetThongTin(maPC);

            if (ModelState.IsValid)
            {

                if (Session["User"] != null)
                    ViewBag.User = Session["User"].ToString();
                if (ViewBag.User == null)
                {
                    ModelState.AddModelError("", "Bạn chưa đăng nhập");
                    //return RedirectToAction("Index", "Login");
                }
                if (Session["MaHK"] != null)

                    ViewBag.Email = Session["MaHK"].ToString();
                int MaHK = int.Parse(ViewBag.Email);

                if (ViewBag.User == null)
                {
                    ModelState.AddModelError("", "Bạn chưa đăng nhập");
                    //return RedirectToAction("Index", "Login");
                }

                int soluong = 0;

                for (int i = 0; i < DSGheTD.Length; i++)
                {

                    if (DSGheTD[i] == 1)
                    {
                        foreach (var j in thongtin.DSGhe)
                        {
                            if (j.ViTriNgoi.Trim() == DSGheThayDoi[i])
                            {
                                
                                soluong++;
                            }
                        }
                    }
                }
                if (soluong == 0)
                {
                    ModelState.AddModelError("", "Bạn chưa điền vào số lượng vé");
                }
                else
                {
                    int Tongtien = soluong * thongtin.Lotrinh.giave;
                               
                    int res = new ThongTinDatVeDao().DatVe( maPC, DSGheTD,DSGheThayDoi,  DSGheID,  MaHK,  soluong,  Tongtien);
                    //            int res = model.ThemMoi(email, model1.LT[0].MA_LT, model1.soluong, model1.tongtien);
                    if (res > 0)
                    {
                        var th = new  ThongTinDatVeDao();
                       var result = th.UpdateGheNgoi(res);
                         thongtin = new ThongTinDatVeDao().GetThongTin(maPC);
                        if (result) {
                            ModelState.AddModelError("", "Them Don hang thanh cong");
                        }
                        else
                        {
                            ModelState.AddModelError("", "Loi khi cap nhap ghe");
                        }
                       
                    }
                       
                    else
                    {
                        ModelState.AddModelError("", "Không thêm được dữ liệu");
                    }

                    //        }
                    //    }
                }


            }
            return View(thongtin);
        }

    }
}
