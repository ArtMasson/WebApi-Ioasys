using ApiEmpresas.Models;
using ApiEmpresas.Repositorio;
using ApiIoasys.Repositorio;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiEmpresas.Controllers
{
    [Route("api/v1")]
    public class EmpresasController : Controller
    {
        private readonly IEmpresaRepository _empresaRepositorio;
        private readonly ITipoRepository _tipoRepositorio;

        public EmpresasController(IEmpresaRepository empresaRepo, ITipoRepository tipoRepo)
        {
            _empresaRepositorio = empresaRepo;
            _tipoRepositorio = tipoRepo;
        }

        [HttpGet]
        [Route("enterprises/1")]
        public JsonResult GetAllEnterprises()
        {
            return Json(_empresaRepositorio.GetAll());
        }

        [HttpGet]
        [Route("types")]
        public JsonResult GetEnterpriseTypes()
        {
            return Json(_tipoRepositorio.GetAll());
        }
        
        [HttpGet]
        [Route("enterprises/name/{name}")]
        public JsonResult GetByName(String name)
        {
            List<Empresa> empresasComMesmoNome = _empresaRepositorio.FindByName(name);
            return Json(empresasComMesmoNome);
        }
        
        [HttpGet]
        [Route("enterprises/type/{enterprise_types:int}")]
        public JsonResult GetByType(int enterprise_types)
        {
            List<Empresa> empresasComMesmoTipo = _empresaRepositorio.FindByType(enterprise_types);
            return Json(empresasComMesmoTipo);
        }

        [HttpGet]
        [Route("enterprises")]
        public JsonResult GetByNameAndType(int enterprise_types, String name)
        {
            List<Empresa> empresasComMesmoNomeETipo = _empresaRepositorio.FindByNameAndType(enterprise_types,name);
            return Json(empresasComMesmoNomeETipo);
        }
    }
}
