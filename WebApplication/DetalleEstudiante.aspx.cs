using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessManagement.service;

namespace WebApplication
{
    public partial class DetalleEstudiante : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           // MostrarEstudiantes();
        }

        /*private void MostrarEstudiantes()
        {
            Estudiante estudiante = new Estudiante();
            GridView1.DataSource = estudiante.readEstudiante();
        }*/
    }
}