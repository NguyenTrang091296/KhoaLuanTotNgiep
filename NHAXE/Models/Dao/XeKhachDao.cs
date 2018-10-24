using Models.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Dao
{
   public class XeKhachDao
    {
        private NhaXeDbContext context = new NhaXeDbContext();
        public List<XeKhach> listAll()
        {
            return context.XeKhaches.ToList();
        }
        public List<LoaiXe> listLX()
        {
            return context.LoaiXes.ToList();
        }
        public XeKhach TimXeKhach(string BSX)
        {
            return context.XeKhaches.Find(BSX);
        }
        public int Delete(string BSX)
        {
            try
            {
                var td = context.XeKhaches.Find(BSX);
                context.XeKhaches.Remove(td);
                context.SaveChanges();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
       
        public bool AddXeKhach(XeKhach model)
        {
            try
            {
                context.XeKhaches.Add(model);
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool UpdateXeKhach(XeKhach model)
        {
            try
            {
                var XK= TimXeKhach(model.BSX);
                XK.BSX = model.BSX;
                XK.SoCot = model.SoCot;
                XK.SoHang = model.SoHang;
                XK.MaLoaiXe = model.MaLoaiXe;
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
