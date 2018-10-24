namespace Models.Framework
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class NhaXeDbContext : DbContext
    {
        public NhaXeDbContext()
            : base("name=NhaXeDbContext")
        {
        }

        public virtual DbSet<BinhLuan> BinhLuans { get; set; }
        public virtual DbSet<ChucVu> ChucVus { get; set; }
        public virtual DbSet<DonHang> DonHangs { get; set; }
        public virtual DbSet<GiaVe> GiaVes { get; set; }
        public virtual DbSet<HanhKhach> HanhKhaches { get; set; }
        public virtual DbSet<Huyen> Huyens { get; set; }
        public virtual DbSet<LoaiXe> LoaiXes { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }
        public virtual DbSet<PhanCongChuyen> PhanCongChuyens { get; set; }
        public virtual DbSet<PhanCongCV> PhanCongCVs { get; set; }
        public virtual DbSet<PhanCongGhe> PhanCongGhes { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Tinh> Tinhs { get; set; }
        public virtual DbSet<TuyenDuong> TuyenDuongs { get; set; }
        public virtual DbSet<VeXe> VeXes { get; set; }
        public virtual DbSet<XeKhach> XeKhaches { get; set; }
        public virtual DbSet<View_TuyenDuong> View_TuyenDuong { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BinhLuan>()
                .Property(e => e.MaTuyen)
                .IsFixedLength();

            modelBuilder.Entity<ChucVu>()
                .Property(e => e.MaChucVu)
                .IsFixedLength();

            modelBuilder.Entity<DonHang>()
                .HasMany(e => e.VeXes)
                .WithRequired(e => e.DonHang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GiaVe>()
                .Property(e => e.MaTD)
                .IsFixedLength();

            modelBuilder.Entity<HanhKhach>()
                .Property(e => e.LGName)
                .IsFixedLength();

            modelBuilder.Entity<HanhKhach>()
                .Property(e => e.CMND)
                .IsFixedLength();

            modelBuilder.Entity<HanhKhach>()
                .Property(e => e.GioiTinh)
                .IsFixedLength();

            modelBuilder.Entity<HanhKhach>()
                .Property(e => e.SDT)
                .IsFixedLength();

            modelBuilder.Entity<HanhKhach>()
                .Property(e => e.MatKhau)
                .IsFixedLength();

            modelBuilder.Entity<HanhKhach>()
                .HasMany(e => e.VeXes)
                .WithRequired(e => e.HanhKhach)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.CMND)
                .IsFixedLength();

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.GioiTinh)
                .IsFixedLength();

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.SDT)
                .IsFixedLength();

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.MatKhau)
                .IsFixedLength();

            modelBuilder.Entity<NhanVien>()
                .Property(e => e.MaChucVu)
                .IsFixedLength();

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.PhanCongCVs)
                .WithOptional(e => e.NhanVien)
                .HasForeignKey(e => e.TaiXe);

            modelBuilder.Entity<NhanVien>()
                .HasMany(e => e.PhanCongCVs1)
                .WithOptional(e => e.NhanVien1)
                .HasForeignKey(e => e.TiepVien);

            modelBuilder.Entity<PhanCongChuyen>()
                .Property(e => e.MaTD)
                .IsFixedLength();

            modelBuilder.Entity<PhanCongChuyen>()
                .Property(e => e.BSX)
                .IsFixedLength();

            modelBuilder.Entity<PhanCongChuyen>()
                .Property(e => e.GioKH)
                .HasPrecision(2);

            modelBuilder.Entity<PhanCongChuyen>()
                .HasMany(e => e.DonHangs)
                .WithOptional(e => e.PhanCongChuyen)
                .HasForeignKey(e => e.MaPC);

            modelBuilder.Entity<PhanCongChuyen>()
                .HasMany(e => e.PhanCongGhes)
                .WithRequired(e => e.PhanCongChuyen)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PhanCongCV>()
                .Property(e => e.BSX)
                .IsFixedLength();

            modelBuilder.Entity<PhanCongGhe>()
                .Property(e => e.ViTriNgoi)
                .IsFixedLength();

            modelBuilder.Entity<PhanCongGhe>()
                .HasMany(e => e.VeXes)
                .WithRequired(e => e.PhanCongGhe)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Tinh>()
                .Property(e => e.TenTinh)
                .IsFixedLength();

            modelBuilder.Entity<Tinh>()
                .Property(e => e.TenVietTat)
                .IsFixedLength();

            modelBuilder.Entity<Tinh>()
                .HasMany(e => e.Huyens)
                .WithRequired(e => e.Tinh)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TuyenDuong>()
                .Property(e => e.MaTD)
                .IsFixedLength();

            modelBuilder.Entity<TuyenDuong>()
                .HasMany(e => e.BinhLuans)
                .WithOptional(e => e.TuyenDuong)
                .HasForeignKey(e => e.MaTuyen);

            modelBuilder.Entity<TuyenDuong>()
                .HasMany(e => e.GiaVes)
                .WithRequired(e => e.TuyenDuong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<VeXe>()
                .Property(e => e.VitriNgoi)
                .IsFixedLength();

            modelBuilder.Entity<XeKhach>()
                .Property(e => e.BSX)
                .IsFixedLength();

            modelBuilder.Entity<View_TuyenDuong>()
                .Property(e => e.MaTD)
                .IsFixedLength();
        }
    }
}
