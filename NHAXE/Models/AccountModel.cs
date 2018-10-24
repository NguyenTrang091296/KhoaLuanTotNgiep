using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Models.Framework;

namespace Models
{
    public class AccountModel
    {
        private NhaXeDbContext context = null;
        public AccountModel()
        {
            context = new NhaXeDbContext();
        }
        public int Login(String userName, String PassWord)
        {
            object[] sqlParams = {
                new SqlParameter ("@TENLOGIN" ,userName),
            new SqlParameter("@PASSWORD" , PassWord)
        };
            var res = context.Database.SqlQuery<int>("sp_Login @TENLOGIN, @PASSWORD", sqlParams).SingleOrDefault();
            return res;
        }
        public string quyen(String userName)
        {
            object[] sqlParams = {
                new SqlParameter ("@TENLOGIN" ,userName)
        };
            var res = context.Database.SqlQuery<string>("sp_quyen @TENLOGIN", sqlParams).SingleOrDefault();
            return res;
        }
        public HanhKhach GetByEmail1(string Email)
        {
            return context.HanhKhaches.SingleOrDefault(x => x.LGName == Email);
        }
        public NhanVien GetByEmail(string Email)
        {
            return context.NhanViens.SingleOrDefault(x => x.LGName == Email);
        }
    }
}
