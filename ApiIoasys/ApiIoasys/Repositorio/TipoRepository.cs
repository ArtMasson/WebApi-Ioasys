using ApiIoasys.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiIoasys.Repositorio
{
    public class TipoRepository : ITipoRepository
    {
        private readonly TipoDbContext _contexto;

        public TipoRepository(TipoDbContext ctx)
        {
            _contexto = ctx;
        }

        public IEnumerable<Tipo> GetAll()
        {
            return _contexto.Tipos.ToList();
        }

    }
}
