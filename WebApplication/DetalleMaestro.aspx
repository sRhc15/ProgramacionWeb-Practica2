<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetalleMaestro.aspx.cs" Inherits="WebApplication.DetalleMaestro" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h4>Maestros<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="carnet" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="carnet" HeaderText="Carnet" ReadOnly="True" SortExpression="carnet" />
                <asp:BoundField DataField="pNombre" HeaderText="Primer Nombre" SortExpression="pNombre" />
                <asp:BoundField DataField="sNombre" HeaderText="Segundo Nombre" SortExpression="sNombre" />
                <asp:BoundField DataField="pApellido" HeaderText="Primer Apellido" SortExpression="pApellido" />
                <asp:BoundField DataField="sApellido" HeaderText="Segundo Apellido" SortExpression="sApellido" />
                <asp:BoundField DataField="nacimiento" HeaderText="Fecha de nacimiento" SortExpression="nacimiento" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escuelaConnectionString %>" DeleteCommand="DELETE FROM [maestro] WHERE [carnet] = @carnet" InsertCommand="INSERT INTO [maestro] ([carnet], [pNombre], [sNombre], [pApellido], [sApellido], [nacimiento]) VALUES (@carnet, @pNombre, @sNombre, @pApellido, @sApellido, @nacimiento)" SelectCommand="SELECT * FROM [maestro]" UpdateCommand="UPDATE [maestro] SET [pNombre] = @pNombre, [sNombre] = @sNombre, [pApellido] = @pApellido, [sApellido] = @sApellido, [nacimiento] = @nacimiento WHERE [carnet] = @carnet">
                <DeleteParameters>
                    <asp:Parameter Name="carnet" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="carnet" Type="String" />
                    <asp:Parameter Name="pNombre" Type="String" />
                    <asp:Parameter Name="sNombre" Type="String" />
                    <asp:Parameter Name="pApellido" Type="String" />
                    <asp:Parameter Name="sApellido" Type="String" />
                    <asp:Parameter Name="nacimiento" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pNombre" Type="String" />
                    <asp:Parameter Name="sNombre" Type="String" />
                    <asp:Parameter Name="pApellido" Type="String" />
                    <asp:Parameter Name="sApellido" Type="String" />
                    <asp:Parameter Name="nacimiento" Type="String" />
                    <asp:Parameter Name="carnet" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </h4>

        <tr>
                
        </tr>
    </div>
    </br>
    <div>
        <a href="Maestros.aspx">Crear Maestro</a>
    </div>

</asp:Content>
