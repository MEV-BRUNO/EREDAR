using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eredar.Models
{
    public class Korisnici
    {
        public int Id { get; set; }
        public string Vrsta_Korisnika { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int Id_mjesto_grad { get; set; }

        public string Opis { get; set; }

        public string Aktivacijski_kljuc { get; set; }

        public int Aktivan { get; set; }
        public int Email_send { get; set; }
        public DateTime Created_at { get; set; }
        public DateTime Updated_at { get; set; }
        public DateTime Licenca { get; set; }
    }
}