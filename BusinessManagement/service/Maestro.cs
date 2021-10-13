using System;
using System.Collections.Generic;
using System.Text;
using DataManagement.access;
using DataManagement.model;

namespace BusinessManagement.service
{
    public class Maestro
    {
        DBManager dbManager = new DBManager();
        Response response = new Response();

        public String addNewMaestro(String carnet, String pn, String sn, String pa, String sa, String fecha)
        {
            String message = "";
            response = dbManager.openConnection();

            if (response.success)
            {
                response = dbManager.insertNewMaestro(carnet, pn, sn, pa, sa, fecha);
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
