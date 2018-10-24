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
        public IEnumerable<PhanCongChuyen> listAllUser(String maTD)
        { 
            return context.PhanCongChuyens.OrderBy(x => x.MaTD == maTD).ToList();
        }
        public IEnumerable<ThongTinLoTrinh> listAll(String maTD)
        {
            List<ThongTinLoTrinh> thongTin = new List<ThongTinLoTrinh>();
            ThongTinLoTrinh temp = new ThongTinLoTrinh();
          var list = context.PhanCongChuyens.OrderBy(x => x.MaTD == maTD).ToList();
            foreach(var i in list)
            {
                temp.PhanCongChuyens = i;
                var TD = new TuyenDuongDao().tuyenDuong(maTD, temp.PhanCongChuyens.NgayKH);
                temp.giave = TD.GiaVe;
                thongTin.Add(temp);
            }
            return thongTin;
        }
    }
}
