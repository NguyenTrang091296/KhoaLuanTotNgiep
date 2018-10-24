using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class DonHangDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public List<DonHangUser> ListDS(int mahk)
        {
            var list = new List<DonHangUser>();
            var listdh = context.DonHangs.Where(x => x.MaHK == mahk).ToList();
            foreach (var i in listdh)
            {
                var DH = new DonHangUser();
                DH.donHang = i;
                var DHUser = context.VeXes.Where(x => x.MaDH == i.MaDH).ToList();
                DH.veXe = DHUser;
                list.Add(DH);

            }
            return list;
        }
        public int Delete(int madh)
        {
            try
            {
                var DH = context.DonHangs.Find(madh);
                var vexe = context.VeXes.Where(x => x.MaDH == madh);
                context.VeXes.RemoveRange(vexe);
                context.Entry(DH).State = EntityState.Deleted;
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
        public int DeleteVeXe(int madh,int idghe)
        {
            try
            {
                var DH = context.DonHangs.Find(madh);
                var vexe = context.VeXes.Where(x => x.MaDH == madh).ToList();
                foreach(var i in vexe)
                {
                    if(i.IDGhe == idghe)
                    {
                        context.VeXes.Remove(i);
                        context.SaveChanges();
                    }
                }

                DH.TongTien = DH.TongTien - DH.TongTien / DH.Soluongve;
                DH.Soluongve = DH.Soluongve - 1;
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
        public void UpdateDonHang(DonHang model)
        {
            
                var donHang = context.DonHangs.Find(model.MaDH);
                donHang.TrangThai = model.TrangThai;
                context.SaveChanges();

        }
        public List<DonHang> ListAll()
        {
            
            var listdh = context.DonHangs.ToList();
            
            return listdh;
        }
        public bool UpdateThanhToan(int []Madh)
        {
            try {
                var ListDH = context.DonHangs.ToList();
                foreach(var item in ListDH)
                {
                    for(int i = 0; i <Madh.Length; i++)
                    {
                        if(item.MaDH == Madh[i])
                        {
                            item.TrangThai = 1;
                            UpdateDonHang(item);
                            
                        }
                    }
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public ThanhToan ThongTinThanhToan(int []MaDH,int maHK)
        {
            var thanhtoan = new ThanhToan();
            int tongtien = 0;
            var ListDH = context.DonHangs.ToList();
            foreach (var item in ListDH)
            {
                for (int i = 0; i < MaDH.Length; i++)
                {
                    if (item.MaDH == MaDH[i])
                    {
                        thanhtoan.donHang.Add(item);
                        tongtien = tongtien + item.TongTien;
                    }
                }
            }
            thanhtoan.TongTien = tongtien;
            thanhtoan.hanhKhach = context.HanhKhaches.Find(maHK);
            return thanhtoan;
        }
    }
}
