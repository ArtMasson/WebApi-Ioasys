using ApiEmpresas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiEmpresas.Repositorio
{
    public interface IEmpresaRepository
    {
        IEnumerable<Empresa> GetAll();
        Empresa Find(long id);
        List<Empresa> FindByName(String nomeFornecido);
        List<Empresa> FindByType(int tipoFornecido);
        List<Empresa> FindByNameAndType(int tipoFornecido, String nomeFornecido);
    }
}
