namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BinhLuan")]
    public partial class BinhLuan
    {
        public int ID { get; set; }

        public string NoiDung { get; set; }

        public DateTime? ThoiGian { get; set; }

        public int? MaHK { get; set; }

        [StringLength(20)]
        public string MaTuyen { get; set; }

        public virtual HanhKhach HanhKhach { get; set; }

        public virtual TuyenDuong TuyenDuong { get; set; }
    }
}
