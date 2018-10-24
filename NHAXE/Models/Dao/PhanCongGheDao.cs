using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class PhanCongGheDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public List<PhanCongGhe> listAll()
        {
            return context.PhanCongGhes.ToList();
        }
       
        public PhanCongGhe TimPhanCongGhe(int Mapc)
        {
            return context.PhanCongGhes.Find(Mapc);
        }
        public int Delete(string BSX)
        {
            try
            {
                var td = context.PhanCongGhes.Find(BSX);
                context.PhanCongGhes.Remove(td);
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
      
       
    }
}
