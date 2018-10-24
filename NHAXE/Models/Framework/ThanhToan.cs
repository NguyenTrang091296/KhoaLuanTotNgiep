using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Framework
{
   public class ThanhToan
    {
        public List<DonHang> donHang { get; set; }
        public int TongTien { get; set; }
        public HanhKhach hanhKhach { get; set; }
    }
}
