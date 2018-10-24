namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("XeKhach")]
    public partial class XeKhach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public XeKhach()
        {
            PhanCongChuyens = new HashSet<PhanCongChuyen>();
            PhanCongCVs = new HashSet<PhanCongCV>();
        }

        [Key]
        [StringLength(10)]
        [Display(Name = "Bảng số xe")]
        public string BSX { get; set; }
        [Display(Name = "Số hàng")]
        public int SoHang { get; set; }
        [Display(Name = "Số cột")]
        public int SoCot { get; set; }

        [StringLength(10)]
        [Display(Name = "Mã loại xe")]
        public string MaLoaiXe { get; set; }

        public virtual LoaiXe LoaiXe { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanCongChuyen> PhanCongChuyens { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanCongCV> PhanCongCVs { get; set; }
    }
}
