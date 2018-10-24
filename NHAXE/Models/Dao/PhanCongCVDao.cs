using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class PhanCongCVDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public IEnumerable<PhanCongCV> listAll()
        {
            return context.PhanCongCVs.ToList();
        }
        public PhanCongCV TimPhanCongCVofBSX(string BSX,DateTime ngay)
        {
            var model = context.PhanCongCVs.Where(x => x.BSX == BSX).ToList();
            foreach (var i in model)
            {
                if (i.NgayBD == ngay)
                {
                    return i;
                }
            }
            return null;
        }
        
       public PhanCongCV TimPhanCongCV(int macv)
        {
            return context.PhanCongCVs.Find(macv);
        }
        public int Delete(int mapc)
        {
            try
            {
                var td = context.PhanCongCVs.Find(mapc);
                context.PhanCongCVs.Remove(td);
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
       
        public bool AddPhanCongCV(PhanCongCV model)
        {
            try
            {
                context.PhanCongCVs.Add(model);
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool UpdatePhanCongCV(PhanCongCV model)
        {
            try
            {
                var GV= context.PhanCongCVs.Find(model.MaCViec);
                GV.NgayBD= model.NgayBD;
                GV.NhanVien = model.NhanVien;
                GV.NhanVien1 = model.NhanVien1;
                GV.BSX = model.BSX;
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
