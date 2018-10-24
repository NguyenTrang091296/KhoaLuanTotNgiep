namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonHang")]
    public partial class DonHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DonHang()
        {
            VeXes = new HashSet<VeXe>();
        }

        [Key]
        [Display(Name = "Mã đơn hàng")]
        public int MaDH { get; set; }
        [Display(Name = "Số lượng vé")]
        public int Soluongve { get; set; }
        [Display(Name = "Tổng tiền")]
        public int TongTien { get; set; }
        [Display(Name = "Hình thức")]
        public int HinhThuc { get; set; }
        [Display(Name = "Trạng thái")]
        public int TrangThai { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Ngày đặt hàng")]
        public DateTime? NgayDH { get; set; }
        [Display(Name = "Mã hành khách")]
        public int? MaHK { get; set; }
        [Display(Name = "Mã chuyến")]
        public int? MaPC { get; set; }

        public virtual HanhKhach HanhKhach { get; set; }

        public virtual PhanCongChuyen PhanCongChuyen { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VeXe> VeXes { get; set; }
    }
}
