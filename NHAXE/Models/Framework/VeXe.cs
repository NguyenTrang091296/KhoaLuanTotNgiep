namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("VeXe")]
    public partial class VeXe
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã đơn hàng")]
        public int MaDH { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã hành khách")]
        public int MaHK { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "ID ghế")]
        public int IDGhe { get; set; }

        [Required]
        [StringLength(3)]
        [Display(Name = "Vị trí ngồi")]
        public string VitriNgoi { get; set; }

        public virtual DonHang DonHang { get; set; }

        public virtual HanhKhach HanhKhach { get; set; }

        public virtual PhanCongGhe PhanCongGhe { get; set; }
    }
}
