using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
    public class ThongTinDatVeDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public void updateTrangThai()
        {
            
            var listdh = context.DonHangs.ToList();
            DateTime time = DateTime.Now;
            foreach (var i in listdh)
            {
                if (i.NgayDH < time && i.TrangThai == 0)
                {
                    var XK = context.DonHangs.Find(i.MaDH);
                    XK.TrangThai = 3;
                    context.SaveChanges();
                    var DHUser = context.VeXes.Where(x => x.MaDH == i.MaDH).ToList();
                    foreach (var item in DHUser)
                    {
                        var ghe = context.PhanCongGhes.Find(item.IDGhe);
                        ghe.TrangThai = 0;
                        context.SaveChanges();
                    }

                   
                }
            }
        }
        
        public ThongTinDatVe GetThongTin(int maPC)
        {
            ThongTinDatVe thongtin = new ThongTinDatVe();
            thongtin.Lotrinh = new PhanCongChuyenXe().ThongTin(maPC);
            thongtin.tuyen = context.TuyenDuongs.SingleOrDefault(x=> x.MaTD == thongtin.Lotrinh.PhanCongChuyens.MaTD);
            thongtin.DSGhe = context.PhanCongGhes.Where(x => x.MaChuyen == maPC).ToList();
            thongtin.Xe = context.XeKhaches.SingleOrDefault(x => x.BSX == thongtin.Lotrinh.PhanCongChuyens.BSX);
            DateTime NgayDen = thongtin.Lotrinh.PhanCongChuyens.NgayKH;
            NgayDen = NgayDen.Add(thongtin.Lotrinh.PhanCongChuyens.GioKH);
            NgayDen = NgayDen.AddHours(thongtin.tuyen.ThoiGian);
            thongtin.NgayDen = NgayDen;
            return thongtin;
        }
        public bool UpdateGheNgoi(int madh)
        {
            var listVeXE = context.VeXes.Where(x => x.MaDH == madh);
            try
            {
                foreach (var j in listVeXE)
                {
                    object[] sqlParams = {
                    new SqlParameter ("@IDGheNgoi" ,j.IDGhe),
               
                     };
                    var res = context.Database.SqlQuery<int>("SP_UpdateGheNgoi @IDGheNgoi", sqlParams).SingleOrDefault();
                    
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            
        }
        public int DatVe(int maPC, int[] DSGheTD, string[] DSGheThayDoi, int[] DSGheID,int MaHK, int soluong, int Tongtien)
        {
        
            try
            {
                var model = new DonHang();
                model.MaHK = MaHK;
                model.MaPC = maPC;
                model.Soluongve = soluong;
                model.TongTien = Tongtien;
                model.TrangThai = 0;
                model.HinhThuc = 1;
                model.NgayDH = DateTime.Now;
                context.DonHangs.Add(model);
                context.SaveChanges();
                for (int i = 0; i < DSGheTD.Length; i++)
                {

                    if (DSGheTD[i] == 1)
                    {
                        var model1 = new VeXe();
                        model1.MaDH = model.MaDH;
                        model1.MaHK = MaHK;
                        model1.IDGhe = DSGheID[i];
                        model1.VitriNgoi = DSGheThayDoi[i];
                        context.VeXes.Add(model1);
                        context.SaveChanges();
                        
                    }
                    
                }
               

                return model.MaDH;
            }
            catch (Exception ex)
            {
                return 0;
            }
        
        }
    }
}
