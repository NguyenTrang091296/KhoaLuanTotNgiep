using Models.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
    public class PhanCongChuyenXe
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public ThongTinTuyenXe listAllUser(String maTD)
        {
            ThongTinTuyenXe tuyenXe = new ThongTinTuyenXe();
            tuyenXe.DSChuyen = listAll(maTD);
            tuyenXe.DSBinhLuan = listAllBinhLuan(maTD);
            return tuyenXe;
        }
        public List<BinhLuanKhachHang> listAllBinhLuan(String maTD)
        {
            List<BinhLuanKhachHang> DsBinhLuan = new List<BinhLuanKhachHang>();
            List<BinhLuan> ListBinhLuan = context.BinhLuans.Where(x => x.MaTuyen == maTD).ToList();
            foreach(var item in ListBinhLuan)
            {
                BinhLuanKhachHang binhluan = new BinhLuanKhachHang();
                binhluan.bluan = item;
                binhluan.hkhach = context.HanhKhaches.Find(item.MaHK);
                DsBinhLuan.Add(binhluan);
            }
            return DsBinhLuan;
        }
        public List<ThongTinLoTrinh> listAll(String maTD)
        {
            var dao = new PhanCongChuyenDao();
            dao.updateTrangThai();
            List<ThongTinLoTrinh> thongTin = new List<ThongTinLoTrinh>();
            var list = context.PhanCongChuyens.Where(x => x.MaTD == maTD).ToList();
            foreach (var i in list)
            {
                if(i.TrangThai == 0)
                {
                    ThongTinLoTrinh temp = new ThongTinLoTrinh();
                    temp.PhanCongChuyens = i;
                    var TD = new TuyenDuongDao().tuyenDuong(maTD, temp.PhanCongChuyens.NgayKH);
                    temp.giave = TD.Gia;
                    thongTin.Add(temp);
                }
               
            }

            return thongTin;
        }
        public ThongTinLoTrinh ThongTin(int MaChuyen)
        {
            var list = context.PhanCongChuyens.Find(MaChuyen);
             var TD = new TuyenDuongDao().tuyenDuong(list.MaTD, list.NgayKH);
            var thongtin = new ThongTinLoTrinh();
            thongtin.PhanCongChuyens = list;
            thongtin.giave = TD.Gia;
            return thongtin;
        }
        public BinhLuanKhachHang LoadBinhLuan(int mabl)
        {
            var thongtin = new BinhLuanKhachHang();
            thongtin.bluan = context.BinhLuans.Find(mabl);
            thongtin.hkhach = context.HanhKhaches.Find(thongtin.bluan.MaHK);
            return thongtin;
        }
        public bool AddBinhLuan(BinhLuan bl)
        {
            try
            {
                context.BinhLuans.Add(bl);
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
    }
}

