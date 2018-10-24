namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhanVien")]
    public partial class NhanVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVien()
        {
            PhanCongCVs = new HashSet<PhanCongCV>();
            PhanCongCVs1 = new HashSet<PhanCongCV>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã nhân viên")]
        public int MaNV { get; set; }

        [StringLength(100)]
        [Display(Name = "Login Name")]
        public string LGName { get; set; }

        [StringLength(50)]
        [Display(Name = "Họ và tên")]
        public string TenNV { get; set; }

        [StringLength(9)]
        [Display(Name = "Số CMND")]
        public string CMND { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Ngày sinh")]
        public DateTime? NgaySinh { get; set; }

        [StringLength(3)]
        [Display(Name = "Giới tính")]
        public string GioiTinh { get; set; }

        [StringLength(100)]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [StringLength(11)]
        [Display(Name = "Số điện thoại")]
        public string SDT { get; set; }

        [StringLength(200)]
        [Display(Name = "Địa chỉ")]
        public string DiaChi { get; set; }

        [StringLength(50)]
        [Display(Name = "Mật khẩu")]
        public string MatKhau { get; set; }

        [StringLength(10)]
        [Display(Name = "Mã Chức vụ")]
        public string MaChucVu { get; set; }

        public virtual ChucVu ChucVu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanCongCV> PhanCongCVs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanCongCV> PhanCongCVs1 { get; set; }
    }
}
