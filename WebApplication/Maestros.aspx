<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Maestros.aspx.cs" Inherits="WebApplication.Maestros" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Gestion de Cursos</h2>

        <div>
            <p class="lead">Carnet:</p>
            <asp:TextBox class="lead" ID="txtId" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Primer Nombre:</p>
            <asp:TextBox class="lead" ID="txtPn" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Segundo Nombre:</p>
            <asp:TextBox class="lead" ID="txtSn" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Primer Apellido:</p>
            <asp:TextBox class="lead" ID="txtPa" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Segundo Apellido:</p>
            <asp:TextBox class="lead" ID="txtSa" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Fecha de Nacimiento:</p>
            <asp:TextBox class="lead" ID="txtF" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="saveMaestro" class="btn btn-primary btn-lg" runat="server" Text="Guardar" OnClick="saveTeacher_Click" />
        </div>
        <div>
            <p><%= this.message %></p>
        </div>
    </div>

</asp:Content>
