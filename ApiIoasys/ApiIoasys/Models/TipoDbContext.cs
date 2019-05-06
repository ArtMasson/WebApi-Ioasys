using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiIoasys.Models
{
    public class TipoDbContext : DbContext
    {
        public TipoDbContext(DbContextOptions<TipoDbContext> options) : base(options)
        {

        }

        public DbSet<Tipo> Tipos { get; set; }
    }
}
