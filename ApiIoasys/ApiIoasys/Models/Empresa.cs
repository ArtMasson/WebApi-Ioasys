using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiEmpresas.Models
{
    public class Empresa
    {
        public int ID { get; set; }
        public int Type { get; set; }
        public String Name { get; set; }
        public String CNPJ { get; set; }
        public int NumberOfEmployees { get; set; }
        public String City { get; set; }
    }
}
