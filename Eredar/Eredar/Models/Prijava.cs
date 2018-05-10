using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eredar.Models
{
    public class Prijava
    {
        public int Id { get; set; }
        public string Adresa { get; set; }
        public int Id_grad { get; set; }
        public int Id_korisnik { get; set; }
        public int Id_status_prijava { get; set; }
        public int Id_vrsta_prijava { get; set; }
        public int Id_zaposlenika { get; set; }
        public string Latitude { get; set; }
        public string Longitude { get; set; }
        public string Slika { get; set; }
        public int Slika_sirina { get; set; }
        public int Slika_visina { get; set; }
        public string Napomena { get; set; }
        public string Naslov { get; set; }
        public string Opis { get; set; }
        public DateTime Prosljedena { get; set; }
        public int Vidljivost { get; set; }
        public string Vrsta_naziv { get; set; }
        public DateTime Zaprimljena { get; set;}
        public DateTime Zavrsena { get; set; }
    }
}