using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessManagement.service;

namespace WebApplication
{
    public partial class _Default : Page
    {
        public Estudiante estudianteService = new Estudiante();
        public String message = "Iniciado...";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveStudent_Click(object sender, EventArgs e)
        {
            this.message = this.estudianteService.addNewEstudiante(txtId.Text, txtPN.Text, txtSN.Text, txtPA.Text, txtSA.Text, txtFecha.Text);
        }
    }
}