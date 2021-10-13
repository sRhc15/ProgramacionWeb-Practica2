<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetalleCurso.aspx.cs" Inherits="WebApplication.DetalleCurso" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h4>Cursos</h4>

        <tr>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="codigo" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="carnetM" HeaderText="carnetM" SortExpression="carnetM" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="descripcion" HeaderText="Descripcion" SortExpression="descripcion" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escuelaConnectionString %>" DeleteCommand="DELETE FROM [curso] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [curso] ([codigo], [carnetM], [nombre], [descripcion]) VALUES (@codigo, @carnetM, @nombre, @descripcion)" SelectCommand="SELECT * FROM [curso]" UpdateCommand="UPDATE [curso] SET [carnetM] = @carnetM, [nombre] = @nombre, [descripcion] = @descripcion WHERE [codigo] = @codigo">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="codigo" Type="String" />
                    <asp:Parameter Name="carnetM" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="descripcion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="carnetM" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="codigo" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </tr>
    </div>
    <br />
    <div>
        <a href="Cursos.aspx">Crear Curso</a>
    </div>
</asp:Content>
