using Evaluacion1.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;

namespace Evaluacion1.Clases
{
    public class clsVivienda
    {
        private DBEvaluacionEntities dbEvaluacion= new DBEvaluacionEntities();
        public VIVIENDA vivienda {  get; set; }

        public string Insertar()
        {
            try
            {
                dbEvaluacion.VIVIENDAs.Add(vivienda);
                dbEvaluacion.SaveChanges();
                return "La vivienda se agregó correctamente";
            }
            catch (Exception ex)
            {
                return "Error al insertar la vivienda " + ex.Message;
            }
        }

        public VIVIENDA Consultar(int Id_viv)
        {
            VIVIENDA viv = dbEvaluacion.VIVIENDAs.FirstOrDefault(v => v.ID == Id_viv);
            return viv;

        }

        public List<VIVIENDA> ConsultarTodas()
        {   
            return dbEvaluacion.VIVIENDAs.OrderBy(v => v.ID).ToList();

        }

        public string Actualizar()
        {
            try
            {
                VIVIENDA viv = Consultar(vivienda.ID);
                if (viv != null)
                {
                    dbEvaluacion.VIVIENDAs.AddOrUpdate(vivienda);
                    dbEvaluacion.SaveChanges();
                    return "La vivienda se actualizó correctamente ";
                }
                else
                {
                    return "La vivienda no existe ";
                }
            }
            catch (Exception ex)
            {
                return "Error al actualizar la vivienda " + ex.Message;
            }
        }
        public string Eliminar()
        {
            try
            {
                VIVIENDA viv = Consultar(vivienda.ID);
                if (viv != null)
                {
                    dbEvaluacion.VIVIENDAs.Remove(vivienda);
                    dbEvaluacion.SaveChanges();
                    return "La vivienda se eliminó correctamente ";
                }
                else
                {
                    return "La vivienda no existe ";
                }
            }
            catch(Exception ex) {

                return "Error al eliminar la vivienda " + ex.Message;
            }

        }
    }
}