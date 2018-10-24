namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhanCongCV")]
    public partial class PhanCongCV
    {
        [Key]
        public int MaCViec { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Ngày bắt đầu")]
        public DateTime NgayBD { get; set; }
        [Display(Name = "Tài xế")]
        public int? TaiXe { get; set; }
        [Display(Name = "Tiếp viên")]
        public int? TiepVien { get; set; }

        [StringLength(10)]
        [Display(Name = "Bảng số xe")]
        public string BSX { get; set; }

        public virtual NhanVien NhanVien { get; set; }

        public virtual NhanVien NhanVien1 { get; set; }

        public virtual XeKhach XeKhach { get; set; }
    }
}
