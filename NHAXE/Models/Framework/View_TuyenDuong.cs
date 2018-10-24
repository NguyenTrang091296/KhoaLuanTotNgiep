namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class View_TuyenDuong
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        [Display(Name = "Mã tuyến đường")]
        public string MaTD { get; set; }
        
        [StringLength(50)]
        [Display(Name = "Bến đi")]
        public string BenDi { get; set; }

        [StringLength(50)]
        [Display(Name = "Bến đến")]
        public string BenDen { get; set; }
        [Display(Name = "Thời gian")]
        public double ThoiGian { get; set; }
        [Display(Name = "Quảng đường")]
        public int? QuangDuong { get; set; }
        [Display(Name = "Giá vé")]
        public int Gia { get; set; }

        [Key]
        [Column(Order = 1, TypeName = "date")]
        public DateTime NgayBD { get; set; }
    }
}
