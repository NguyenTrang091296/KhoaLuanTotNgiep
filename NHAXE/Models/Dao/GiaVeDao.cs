using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class GiaVeDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public IEnumerable<GiaVe> listAll()
        {
            return context.GiaVes.ToList();
        }
        public GiaVe TimGiaVe(String Matuyen, DateTime NgayBD)
        {
            object[] sqlParams =
             {
                new SqlParameter ("@Matuyen" ,Matuyen),
                new SqlParameter ("@NgayBD" ,NgayBD),
            };
            var listLT = context.Database.SqlQuery<GiaVe>("SP_GiaVe_Ngay @Matuyen,@NgayBD", sqlParams).ToList();
           if(listLT.Count == 0)
            {
                var GV = new GiaVe();
                GV.MaTD = "abc";
                GV.NgayBD = DateTime.Now;
                return GV;
            }
            return listLT[0];

        }
        public int Delete(string mat,DateTime ngay)
        {
            try
            {
                var td = TimGiaVe(mat, ngay);
                context.GiaVes.Remove(td);
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
       
        public bool AddGiaVe(GiaVe model)
        {
            try
            {
                context.GiaVes.Add(model);
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool UpdateGiaVe(GiaVe model)
        {
            try
            {
                var GV= TimGiaVe(model.MaTD,model.NgayBD);
                GV.MaTD= model.MaTD;
                GV.NgayBD = model.NgayBD;
                GV.Gia = model.Gia;
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
