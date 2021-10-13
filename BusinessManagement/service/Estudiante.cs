using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using DataManagement.access;
using DataManagement.model;

namespace BusinessManagement.service
{
    public class Estudiante
    {
        DBManager dbManager = new DBManager();
        Response response = new Response();
        

        public String addNewEstudiante(String carnet, String pn, String sn, String pa, String sa, String fecha)
        {
            String message = "";
            response = dbManager.openConnection();

            if (response.success)
            {
                response = dbManager.insertNewEstudiante(carnet,pn,sn,pa,sa,fecha);
                message = response.message;

                response = dbManager.closeConnection();

                if (!response.success)
                {
                    message += "<br>" + response.message;
                }
            }
            else
            {
                message = response.message;
            }

            return message;
        }

        /*public DataTable readEstudiante()
        {
            DataTable tabla = new DataTable();
            tabla = dbManager.Mostrar();
            return tabla;
        }*/
            
        public string modifyEstudiante (String carnet, String pn, String sn, String pa, String sa, String fecha)
        {
            String message = "";
            response = dbManager.openConnection();

            if (response.success)
            {
                response = dbManager.insertNewEstudiante(carnet, pn, sn, pa, sa, fecha);//cambiar nombre metodo
                message = response.message;

                response = dbManager.closeConnection();

                if (!response.success)
                {
                    message += "<br>" + response.message;
                }
            }
            else
            {
                message = response.message;
            }

            return message;
        }
    }
}
