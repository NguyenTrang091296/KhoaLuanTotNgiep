namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiXe")]
    public partial class LoaiXe
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiXe()
        {
            XeKhaches = new HashSet<XeKhach>();
        }

        [Key]
        [StringLength(10)]
        public string MaLoaiXe { get; set; }

        [StringLength(20)]
        public string TenLoaiXe { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<XeKhach> XeKhaches { get; set; }
    }
}
