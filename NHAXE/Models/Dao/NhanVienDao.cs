using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class NhanVienDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public List<NhanVien> listAll()
        {
            return context.NhanViens.ToList();
        }
        public List<NhanVien> listAllTaiXe()
        {
            return context.NhanViens.Where(x => x.MaChucVu.Trim() == "TAIXE").ToList();
        }
        public List<NhanVien> listAllTiepVien()
        {
            return context.NhanViens.Where(x => x.MaChucVu.Trim() == "TIEPVIEN").ToList();
        }
        public List<ChucVu> listCV()
        {
            return context.ChucVus.ToList();
        }
        public NhanVien TimNhanVien(int maNV)
        {
            return context.NhanViens.Find(maNV);
        }
        public NhanVien TimNhanVienofLoginName(string LoginName)
        {
            return context.NhanViens.Where(x => x.LGName == LoginName).SingleOrDefault();
        }
        public NhanVien TimNhanVienofEmail(string Email)
        {
            return context.NhanViens.Where(x => x.Email == Email).SingleOrDefault();
        }
        public int Delete(int MaNV)
        {
            try
            {
                var td = context.NhanViens.Find(MaNV);
                context.NhanViens.Remove(td);
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
       
        public int AddNhanVien(NhanVien model)
        {
            var NV = TimNhanVienofLoginName(model.LGName);
            var NV1 = TimNhanVienofEmail(model.Email);
            if(NV != null)
            {
                return 1;
            }
            else if (NV1 != null)
            {
                return 2;
            }
            else {
                string Role;
                if (model.MaChucVu.Trim() == "TAIXE" || model.MaChucVu.Trim() == "TIEPVIEN ")
                {
                    Role = "NHANVIEN";
                }
                else if (model.MaChucVu.Trim() == "NHANVIEN" )
                {
                    Role = "NHANVIENNHAPLIEU";
                }
                else
                {
                    Role = "QUANLI";
                }
                object[] sqlParams = {
                new SqlParameter ("@LGNAME" ,model.LGName),
                new SqlParameter("@ROLE" , Role),
                new SqlParameter ("@TenNV" ,model.TenNV),
                new SqlParameter("@Email" , model.Email),
                new SqlParameter("@NgaySinh" , model.NgaySinh),
                new SqlParameter("@GioiTinh" , model.GioiTinh),
                new SqlParameter("@CMND" , model.CMND),
                new SqlParameter ("@DIACHI" ,model.DiaChi),
                new SqlParameter("@SDT" , model.SDT),
                new SqlParameter ("@MaChucVu" ,model.MaChucVu),
                new SqlParameter("@MatKhau" , model.MatKhau)
        };
                var res = context.Database.SqlQuery<int>("sp_TaoTaiKhoan @LGNAME, @ROLE,@TenNV,@Email,@NgaySinh,@GioiTinh,@CMND,@DIACHI,@SDT,@MaChucVu,@MatKhau", sqlParams).SingleOrDefault();
                return res;
            }
            
         }
        public bool UpdateNhanVien(NhanVien model)
        {
            try
            {
                var NV = TimNhanVien(model.MaNV);
                NV.TenNV = model.TenNV;
                NV.SDT = model.SDT;
                NV.DiaChi = model.DiaChi;
                NV.MaChucVu = model.MaChucVu;
                NV.MatKhau = model.MatKhau;
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
    }
}
