using Models.Framework;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{

   public class TinhDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();

        public List<Tinh> listTinhAll()
        {
            return context.Tinhs.OrderByDescending(x => x.MaTinh).ToList();
        }
        public List<Huyen> listHuyen(int matinh)
        {
            return context.Huyens.OrderByDescending(x => x.MaTinh == matinh).ToList();
        }
       
    }
}
