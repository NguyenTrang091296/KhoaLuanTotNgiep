namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Tinh")]
    public partial class Tinh
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tinh()
        {
            Huyens = new HashSet<Huyen>();
        }

        [Key]
        public int MaTinh { get; set; }

        [StringLength(50)]
        public string TenTinh { get; set; }

        [StringLength(50)]
        public string TenVietTat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Huyen> Huyens { get; set; }
    }
}
