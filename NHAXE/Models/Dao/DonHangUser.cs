using Models.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class DonHangUser
    {
        public DonHang donHang { get; set; }
        public List <VeXe> veXe { get; set; }
       
    }
}
