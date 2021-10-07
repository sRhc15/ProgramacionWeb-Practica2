<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Gestion de estudiantes</h2>

        <div>
            <p class="lead">Carnet:</p>
            <asp:TextBox class="lead" ID="txtId" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Primer Nombre: </p>
            <asp:TextBox class="lead" ID="txtPN" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Segundo Nombre:</p>
            <asp:TextBox class="lead" ID="txtSN" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Primer Apellido:</p>
            <asp:TextBox class="lead" ID="txtPA" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Segundo Apellido:</p>
            <asp:TextBox class="lead" ID="txtSA" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Fecha de Nacimiento:</p>
            <asp:TextBox class="lead" ID="txtFecha" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="saveStudent" class="btn btn-primary btn-lg" runat="server" Text="Guardar" OnClick="saveStudent_Click" />
        </div>
        <div>
            <p><%= this.message %></p>
        </div>
    </div>

</asp:Content>