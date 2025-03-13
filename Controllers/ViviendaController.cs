using Evaluacion1.Models;
using Evaluacion1.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Evaluacion1.Controllers
{
    [RoutePrefix("api/Viviendas")]
    public class ViviendaController : ApiController
    {
        [HttpGet]
        [Route("ConsultarTodas")]
        public List<VIVIENDA> ConsultarTodas()
        {   
            clsVivienda clsVivienda = new clsVivienda();
            return clsVivienda.ConsultarTodas();
        }

        [HttpGet]
        [Route("Consultar")]
        public VIVIENDA Consultar(int Id_viv)
        {
            clsVivienda clsVivienda = new clsVivienda();
            return clsVivienda.Consultar(Id_viv);
        }

        [HttpPost]
        [Route("Insertar")]
        public string Insertar([FromBody] VIVIENDA vivienda)
        {
            clsVivienda clsVivienda = new clsVivienda();
            clsVivienda.vivienda = vivienda;
            return clsVivienda.Insertar();
        }

        [HttpPut]
        [Route("Actualizar")]
        public string Actualizar([FromBody] VIVIENDA vivienda)
        {
            clsVivienda clsVivienda = new clsVivienda();
            clsVivienda.vivienda = vivienda;
            return clsVivienda.Actualizar();
        }

        [HttpDelete]
        [Route("Eliminar")]
        public string Eliminar([FromBody] VIVIENDA vivienda)
        {
            clsVivienda clsVivienda = new clsVivienda();
            clsVivienda.vivienda = vivienda;
            return clsVivienda.Eliminar();
        }
    }
}