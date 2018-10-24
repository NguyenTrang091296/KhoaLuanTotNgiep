using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
    public class PhanCongChuyenDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public List<PhanCongChuyen> listAll()
        {
            return context.PhanCongChuyens.ToList();
        }
        public void updateTrangThai()
        {
            var list = context.PhanCongChuyens.ToList();
            DateTime time = DateTime.Now;
            foreach (var i in list)
            {
                if (i.NgayKH < time)
                {
                    var XK = TimPCXK(i.MaChuyen);
                    XK.TrangThai = 2;
                    context.SaveChanges();
                }
            }
        }
        public List<ChuyenXeHuy> listDSBiHuy(DateTime bdau, DateTime kthuc)
        {
            var list = context.PhanCongChuyens.ToList();
            var result = new List<PhanCongChuyen>();
            var result1 = new List<ChuyenXeHuy>();
            foreach (var item in list)
            {
                if (bdau < item.NgayKH && item.NgayKH < kthuc)
                {
                    if (item.TrangThai == 1)
                    {
                        result.Add(item);
                    }
                }
            }
            foreach(var i in result)
            {
                var chuyenxe = new ChuyenXeHuy();
                chuyenxe.MaChuyen = i.MaChuyen;
                chuyenxe.MaTD = i.MaTD;
                chuyenxe.BSX = i.BSX;
                chuyenxe.NgayKH = i.NgayKH;
                chuyenxe.GioKH = i.GioKH;
                chuyenxe.TrangThai = "Đã Hủy";
                result1.Add(chuyenxe);
            }
            return result1;
        }
        public PhanCongChuyen TimPCXK(int maPC)
        {
            return context.PhanCongChuyens.Find(maPC);
        }
        public PhanCongChuyen TimPhanCongTonTai(string matd, string BSX, DateTime ngay)
        {
            var model = context.PhanCongChuyens.Where(x => x.BSX == BSX).ToList();
            foreach (var i in model)
            {
                if (i.MaTD == matd && i.NgayKH == ngay)
                {
                    return i;
                }
            }
            return null;
        }
        public int Delete(int MaPc)
        {
            try
            {
                var XK = TimPCXK(MaPc);
                XK.TrangThai = 1;
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public int AddPhanCongChuyen(PhanCongChuyen model)
        {
            var hk = TimPhanCongTonTai(model.MaTD, model.BSX, model.NgayKH);
            if (hk != null)
            {
                return 1;
            }
            else
            {
                object[] sqlParams = {
                new SqlParameter ("@MaTD" ,model.MaTD),
                 new SqlParameter ("@BSX" ,model.BSX),
                new SqlParameter ("@NgayKH" ,model.NgayKH),
                new SqlParameter("@GioKH" , model.GioKH),

        };
                var res = context.Database.SqlQuery<int>("SP_Insert_PhanCongChuyenXe @MaTD, @BSX,@NgayKH,@GioKH", sqlParams).SingleOrDefault();
                return res;
            }

        }

        public bool UpdatePhanCongChuyen(PhanCongChuyen model)
        {
            try
            {
                var XK = TimPCXK(model.MaChuyen);

                XK.MaTD = model.MaTD;
                XK.BSX = model.BSX;
                XK.NgayKH = model.NgayKH;
                XK.GioKH = model.GioKH;
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
