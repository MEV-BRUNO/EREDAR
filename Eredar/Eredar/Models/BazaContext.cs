using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Eredar.Models
{
	public class BazaContext:DbContext
	{
		public DbSet<Korisnici> Korisnici_dbc { get; set; }
	}
}