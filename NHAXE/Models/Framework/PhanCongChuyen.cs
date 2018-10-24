namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhanCongChuyen")]
    public partial class PhanCongChuyen
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhanCongChuyen()
        {
            DonHangs = new HashSet<DonHang>();
            PhanCongGhes = new HashSet<PhanCongGhe>();
        }

        [Key]
        [Display(Name = "Mã chuyến")]
        public int MaChuyen { get; set; }

        [StringLength(20)]
        [Display(Name = "Mã tuyến đường")]
        public string MaTD { get; set; }

        [StringLength(10)]

        [Display(Name = "Bảng số xe")]
        public string BSX { get; set; }

        [Column(TypeName = "date")]

        [Display(Name = "Ngày lập chuyến")]
        public DateTime NgayLap { get; set; }

        [Column(TypeName = "date")]

        [Display(Name = "Ngày khởi hành")]
        public DateTime NgayKH { get; set; }

        [Display(Name = "Giờ khởi hành")]
        public TimeSpan GioKH { get; set; }

        [Display(Name = "Trạng thái")]
        public int TrangThai { get; set; }

        [Display(Name = "Số lượng vé còn lại")]
        public int SoVeCL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonHang> DonHangs { get; set; }

        public virtual TuyenDuong TuyenDuong { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanCongGhe> PhanCongGhes { get; set; }

        public virtual XeKhach XeKhach { get; set; }
    }
}
