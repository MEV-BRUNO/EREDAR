using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Eredar.Models
{
	[Table("eredarhr_db")]
    public class Korisnici
    {
		[Key]
        public int Id { get; set; }
		[Column("vrsta_korisnika")]
        public string Vrsta_Korisnika { get; set; }
		[Column("ime")]
		public string Ime { get; set; }
		[Column("prezime")]
		public string Prezime { get; set; }
		[Column("email")]
		[DataType(DataType.EmailAddress)]
		public string Email { get; set; }
		[Column("password")]
		[DataType(DataType.Password)]
		public string Password { get; set; }
		[Column("id_mjesto_grad")]
		public int Id_mjesto_grad { get; set; }
		[Column("opis")]
        public string Opis { get; set; }
		[Column("aktivacijski_kljuc")]
		public string Aktivacijski_kljuc { get; set; }
		[Column("aktivan")]
		public int Aktivan { get; set; }
		[Column("email_send")]
		public int Email_send { get; set; }
		[Column("created_at")]
		public DateTime Created_at { get; set; }
		[Column("uploaded_at")]
		public DateTime Updated_at { get; set; }
		[Column("licenca")]
		public DateTime Licenca { get; set; }

		public ICollection<Korisnici> PopisKorisnika { get; set; }
    }
}