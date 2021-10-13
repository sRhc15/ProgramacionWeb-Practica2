using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessManagement.service;

namespace WebApplication
{
    public partial class Maestros : System.Web.UI.Page
    {
        public Maestro maestroService = new Maestro();
        public String message = "Iniciado...";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveTeacher_Click(object sender, EventArgs e)
        {
            this.message = this.maestroService.addNewMaestro(txtId.Text, txtPn.Text, txtSn.Text, txtPa.Text, txtSa.Text, txtF.Text);
        }
    }
}