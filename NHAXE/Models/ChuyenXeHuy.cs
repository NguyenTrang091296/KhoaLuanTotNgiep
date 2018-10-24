using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public class ChuyenXeHuy
    {
        public int MaChuyen { get; set; }
        public DateTime NgayBatDau { get; set; }
        public DateTime NgayLap { get; set; }
        public string MaTD { get; set; }
        public string BSX { get; set; }
        public DateTime NgayKetThuc { get; set; }
        public DateTime NgayKH { get; set; }
        public TimeSpan GioKH { get; set; }
        public string TrangThai { get; set; }
    }
}
