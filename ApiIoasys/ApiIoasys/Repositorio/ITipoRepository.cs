using ApiIoasys.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiIoasys.Repositorio
{
    public interface ITipoRepository
    {
        IEnumerable<Tipo> GetAll();
    }
}
