namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TuyenDuong")]
    public partial class TuyenDuong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TuyenDuong()
        {
            BinhLuans = new HashSet<BinhLuan>();
            GiaVes = new HashSet<GiaVe>();
            PhanCongChuyens = new HashSet<PhanCongChuyen>();
        }

        [Key]
        [StringLength(20)]
        [Display(Name = "Mã tuyến đường")]
        public string MaTD { get; set; }

        [StringLength(50)]
        [Display(Name = "Bến đi")]
        public string BenDi { get; set; }

        [StringLength(50)]
        [Display(Name = "Bến đến")]
        public string BenDen { get; set; }
        [Display(Name = "Thời gian (H)")]
        public double ThoiGian { get; set; }
        [Display(Name = "Quảng đường (KM)")]
        public int? QuangDuong { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuans { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GiaVe> GiaVes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanCongChuyen> PhanCongChuyens { get; set; }
    }
}
