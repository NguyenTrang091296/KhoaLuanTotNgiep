using Models.Framework;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{

   public class TuyenDuongDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();

        public IEnumerable<TuyenDuong> listAll(int page, int pageSize)
        {
            return context.TuyenDuongs.OrderByDescending(x => x.MaTD).ToPagedList(page, pageSize);
        }
        public IEnumerable<TuyenDuong> listAllUser()
        {
            return context.TuyenDuongs.OrderByDescending(x => x.MaTD).ToList();
        }
        public List<TuyenDuong> list()
        {
            return context.TuyenDuongs.ToList();
        }
        public View_TuyenDuong tuyenDuong(string maTD, DateTime today)
        {
            var listDS = context.View_TuyenDuong.ToList();
            var list1 = new List<View_TuyenDuong>();
            foreach (var K in listDS)
            {
                if (K.MaTD == maTD)
                {
                    list1.Add(K);
                }
            }
            var list2 = new List<View_TuyenDuong>();
            list2.Add(list1[0]);
            foreach (var z in list1)
            {

                foreach (var j in list2)
                {
                    if (z.MaTD == j.MaTD)
                    {
                        if (z.NgayBD > j.NgayBD && z.NgayBD <= today)
                        {
                            j.NgayBD = z.NgayBD;
                            j.Gia = z.Gia;
                        }
                    }
                    else
                    {
                        list2.Add(z);
                    }
                }
            }
            return list2[0];
        }
        public List<View_TuyenDuong> ListTD()
        {
         
           // var listTD = context.TuyenDuongs.OrderByDescending(x => x.MaTD).ToList();

             var list1 = context.View_TuyenDuong.ToList();
            DateTime today = DateTime.Now;
            var list = new List<View_TuyenDuong>();
            list.Add(list1[0]);
            foreach (var i in list1)
            {
               
                foreach (var j in list)
                {
                    if (i.MaTD == j.MaTD)
                    {
                        if(i.NgayBD > j.NgayBD && i.NgayBD <= today)
                        {
                           j.NgayBD = i.NgayBD;
                            j.Gia = i.Gia;
                        }
                    }
                    else
                    {
                        list.Add(i);
                    }
                }
            }
            return list;
        }
        public int Delete(string mat)
        {
            try
            {
                var td = context.TuyenDuongs.Find(mat);
                context.TuyenDuongs.Remove(td);
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
        public TuyenDuong TimMaTuyen(string mat)
        {
            return context.TuyenDuongs.Find(mat);
        }
        public bool AddTuyenDuong(TuyenDuong model)
        {
            try
            {
                context.TuyenDuongs.Add(model);
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool UpdateTuyenDuong(TuyenDuong model)
        {
            try
            {
                var td = context.TuyenDuongs.Find(model.MaTD);
                td.BenDi = model.BenDi;
                td.BenDen = model.BenDen;
                td.QuangDuong = model.QuangDuong;
                td.ThoiGian = model.ThoiGian;
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
