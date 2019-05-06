using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApiEmpresas.Models;

namespace ApiEmpresas.Repositorio
{
    public class EmpresaRepository : IEmpresaRepository
    {

        private readonly EmpresaDbContext _contexto;

        public EmpresaRepository(EmpresaDbContext ctx)
        {
            _contexto = ctx;
        }

        public Empresa Find(long id)
        {
            return _contexto.Empresas.FirstOrDefault(u => u.ID == id);
        }

        public IEnumerable<Empresa> GetAll()
        {
            return _contexto.Empresas.ToList();
        }

        public List<Empresa> FindByName(String nomeFornecido)
        {
            List<Empresa> empresasComMesmoNome = new List<Empresa>();
            foreach (Empresa empresa in _contexto.Empresas)
            {
                if (empresa.Name.Equals(nomeFornecido))
                {
                    empresasComMesmoNome.Add(empresa);
                }
            }
            return empresasComMesmoNome;
        }

        public List<Empresa> FindByType(int tipoFornecido)
        {
            List<Empresa> empresasComMesmoTipo = new List<Empresa>();
            foreach (Empresa empresa in _contexto.Empresas)
            {
                if (empresa.Type == tipoFornecido)
                {
                    empresasComMesmoTipo.Add(empresa);
                }
            }
            return empresasComMesmoTipo;
        }

        public List<Empresa> FindByNameAndType(int tipoFornecido, String nomeFornecido)
        {
            List<Empresa> empresasComMesmoNomeETipo = new List<Empresa>();
            foreach (Empresa empresa in _contexto.Empresas)
            {
                if (empresa.Name.Equals(nomeFornecido) && empresa.Type == tipoFornecido)
                {
                    empresasComMesmoNomeETipo.Add(empresa);
                }
            }
            return empresasComMesmoNomeETipo;
        }
    }
}
