namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("GiaVe")]
    public partial class GiaVe
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        [Display(Name = "Mã tuyến đường")]
        public string MaTD { get; set; }
        [Display(Name = "Giá vé")]
        public int? Gia { get; set; }

        [Key]
        [Column(Order = 1, TypeName = "date")]
        [Display(Name = "Ngày bắt đầu")]
        public DateTime NgayBD { get; set; }

        public virtual TuyenDuong TuyenDuong { get; set; }
    }
}
