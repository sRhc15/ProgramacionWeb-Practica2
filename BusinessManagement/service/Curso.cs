using System;
using System.Collections.Generic;
using System.Text;
using DataManagement.access;
using DataManagement.model;

namespace BusinessManagement.service
{
    public class Curso
    {
        DBManager dbManager = new DBManager();
        Response response = new Response();

        public String addNewCurso(String codigo, String nom, String des)
        {
            String message = "";
            response = dbManager.openConnection();

            if (response.success)
            {
                response = dbManager.insertNewCurso(codigo, nom, des);
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
