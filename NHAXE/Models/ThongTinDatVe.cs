using Models.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class ThongTinDatVe
    {
        public List<PhanCongGhe> DSGhe { get; set; }
        public ThongTinLoTrinh Lotrinh { get; set; }
        public XeKhach Xe { get; set; }
        public TuyenDuong tuyen { get; set; }
        public DateTime NgayDen { get; set; }
    }
}
