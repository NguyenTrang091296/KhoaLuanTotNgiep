namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HanhKhach")]
    public partial class HanhKhach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HanhKhach()
        {
            BinhLuans = new HashSet<BinhLuan>();
            DonHangs = new HashSet<DonHang>();
            VeXes = new HashSet<VeXe>();
        }

        [Key]
        public int MaHK { get; set; }

        [StringLength(100)]
        public string LGName { get; set; }

        [StringLength(50)]
        public string TenHK { get; set; }

        [StringLength(9)]
        public string CMND { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        [StringLength(3)]
        public string GioiTinh { get; set; }

        [StringLength(100)]
        public string Email { get; set; }

        [StringLength(11)]
        public string SDT { get; set; }

        [StringLength(200)]
        public string DiaChi { get; set; }

        [StringLength(20)]
        public string MatKhau { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuans { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonHang> DonHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VeXe> VeXes { get; set; }
    }
}
