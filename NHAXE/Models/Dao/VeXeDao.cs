using Models.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
    public class VeXeDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public List<VeXe> ListAll()
        {

            var listVeXe = context.VeXes.ToList();

            return listVeXe;
        }
    }
}
