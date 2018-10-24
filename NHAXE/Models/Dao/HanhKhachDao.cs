using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class HanhKhachDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public List<HanhKhach> listAll()
        {
            return context.HanhKhaches.ToList();
        }
        public HanhKhach TimHanhKhach(int mahk)
        {
            return context.HanhKhaches.Find(mahk);
        }
        public HanhKhach TimHanhKhachofLoginName(string LoginName)
        {
            return context.HanhKhaches.Where(x => x.LGName == LoginName).SingleOrDefault();
        }
        public HanhKhach TimHanhKhachofEmail(string Email)
        {
            return context.HanhKhaches.Where(x => x.Email == Email).SingleOrDefault();
        }
        public int Delete(int MaHK)
        {
            try
            {
                var td = context.HanhKhaches.Find(MaHK);
                context.HanhKhaches.Remove(td);
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
       
        public int AddHanhKhach(HanhKhach model)
        {
            var hk = TimHanhKhachofLoginName(model.LGName);
            var hk1 = TimHanhKhachofEmail(model.Email);
            if(hk != null)
            {
                return 1;
            }
            else if (hk1 != null)
            {
                return 2;
            }
            else {
                object[] sqlParams = {
                new SqlParameter ("@LGNAME" ,model.LGName),
                new SqlParameter("@ROLE" , "USER"),
                new SqlParameter ("@TenNV" ,model.TenHK),
                new SqlParameter("@Email" , model.Email),
                new SqlParameter("@NgaySinh" , model.NgaySinh),
                new SqlParameter("@GioiTinh" , model.GioiTinh),
                new SqlParameter("@CMND" , model.CMND),
                new SqlParameter ("@DIACHI" ,model.DiaChi),
                new SqlParameter("@SDT" , model.SDT),
                new SqlParameter ("@MaCV" ,""),
                new SqlParameter("@MatKhau" , model.MatKhau)
        };
                var res = context.Database.SqlQuery<int>("sp_TaoTaiKhoan @LGNAME, @ROLE,@TenNV,@Email,@NgaySinh,@GioiTinh,@CMND,@DIACHI,@SDT,@MaCV,@MatKhau", sqlParams).SingleOrDefault();
                return res;
            }
            
         }
        public bool UpdateHanhKhach(HanhKhach model)
        {
            try
            {
                var HK = TimHanhKhach(model.MaHK);
                HK.TenHK = model.TenHK;
                HK.SDT = model.SDT;
                HK.DiaChi = model.DiaChi;
                HK.MatKhau = model.MatKhau;
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
