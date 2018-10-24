namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Huyen")]
    public partial class Huyen
    {
        [Key]
        public int MaHuyen { get; set; }

        [StringLength(20)]
        public string TenHuyen { get; set; }

        public int MaTinh { get; set; }

        public virtual Tinh Tinh { get; set; }
    }
}
