﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessManagement.service;

namespace WebApplication
{
    public partial class Cursos : System.Web.UI.Page
    {
        public Curso cursoService = new Curso();
        public String message = "Iniciado...";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveCourse_Click(object sender, EventArgs e)
        {
            this.message = this.cursoService.addNewCurso(txtId.Text, txtN.Text, txtD.Text);
        }
    }
}