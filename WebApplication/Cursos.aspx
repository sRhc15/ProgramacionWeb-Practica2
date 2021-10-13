<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Cursos.aspx.cs" Inherits="WebApplication.Cursos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Gestion de Cursos</h2>

        <div>
            <p class="lead">Codigo:</p>
            <asp:TextBox class="lead" ID="txtId" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Nombre:</p>
            <asp:TextBox class="lead" ID="txtN" runat="server"></asp:TextBox>
        </div>
        <div>
            <p class="lead">Descripcion:</p>
            <asp:TextBox class="lead" ID="txtD" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="saveStudent" class="btn btn-primary btn-lg" runat="server" Text="Guardar" OnClick="saveCourse_Click" />
        </div>
        <div>
            <p><%= this.message %></p>
        </div>
    </div>

</asp:Content>
