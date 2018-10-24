namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhanCongGhe")]
    public partial class PhanCongGhe
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhanCongGhe()
        {
            VeXes = new HashSet<VeXe>();
        }

        [Key]
        [Display(Name = "ID ghế")]
        public int IDGhe { get; set; }

        [Required]
        [StringLength(3)]
        [Display(Name = "Vị trí ngồi")]
        public string ViTriNgoi { get; set; }
        [Display(Name = "Trạng thái")]
        public int? TrangThai { get; set; }
        [Display(Name = "Mã chuyến")]
        public int MaChuyen { get; set; }

        public virtual PhanCongChuyen PhanCongChuyen { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VeXe> VeXes { get; set; }
    }
}
