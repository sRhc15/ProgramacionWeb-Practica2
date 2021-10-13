<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"   CodeBehind="DetalleEstudiante.aspx.cs" Inherits="WebApplication.DetalleEstudiante" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <div>
            <h4>Estudiantes</h4>

            <tr>
                <td style="width: 50%" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" DataKeyNames="carnet" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <alternatingrowstyle backcolor="White" />
                        <columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:TemplateField HeaderText="Carnet" SortExpression="carnet">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("carnet") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("carnet") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Primer Nombre" SortExpression="pNombre">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("pNombre") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("pNombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Segundo Nombre" SortExpression="sNombre">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sNombre") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("sNombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Primer Apellido" SortExpression="pApellido">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pApellido") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("pApellido") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Segundo Apellido" SortExpression="sApellido">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("sApellido") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("sApellido") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha nacimiento" SortExpression="nacimiento">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("nacimiento") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("nacimiento") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edad" SortExpression="edad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("edad") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("edad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </columns>
                        <editrowstyle backcolor="#7C6F57" />
                        <footerstyle backcolor="#1C5E55" font-bold="True" forecolor="White" />
                        <headerstyle backcolor="#1C5E55" font-bold="True" forecolor="White" />
                        <pagerstyle backcolor="#666666" forecolor="White" horizontalalign="Center" />
                        <rowstyle backcolor="#E3EAEB" />
                        <selectedrowstyle backcolor="#C5BBAF" font-bold="True" forecolor="#333333" />
                        <sortedascendingcellstyle backcolor="#F8FAFA" />
                        <sortedascendingheaderstyle backcolor="#246B61" />
                        <sorteddescendingcellstyle backcolor="#D4DFE1" />
                        <sorteddescendingheaderstyle backcolor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escuelaConnectionString %>" DeleteCommand="DELETE FROM [estudiante] WHERE [carnet] = @carnet" InsertCommand="INSERT INTO [estudiante] ([carnet], [pNombre], [sNombre], [pApellido], [sApellido], [nacimiento], [edad]) VALUES (@carnet, @pNombre, @sNombre, @pApellido, @sApellido, @nacimiento, @edad)" SelectCommand="SELECT * FROM [estudiante]" UpdateCommand="UPDATE [estudiante] SET [pNombre] = @pNombre, [sNombre] = @sNombre, [pApellido] = @pApellido, [sApellido] = @sApellido, [nacimiento] = @nacimiento, [edad] = @edad WHERE [carnet] = @carnet">
                        <deleteparameters>
                            <asp:Parameter Name="carnet" Type="String" />
                        </deleteparameters>
                        <insertparameters>
                            <asp:Parameter Name="carnet" Type="String" />
                            <asp:Parameter Name="pNombre" Type="String" />
                            <asp:Parameter Name="sNombre" Type="String" />
                            <asp:Parameter Name="pApellido" Type="String" />
                            <asp:Parameter Name="sApellido" Type="String" />
                            <asp:Parameter Name="nacimiento" Type="String" />
                            <asp:Parameter Name="edad" Type="String" />
                        </insertparameters>
                        <updateparameters>
                            <asp:Parameter Name="pNombre" Type="String" />
                            <asp:Parameter Name="sNombre" Type="String" />
                            <asp:Parameter Name="pApellido" Type="String" />
                            <asp:Parameter Name="sApellido" Type="String" />
                            <asp:Parameter Name="nacimiento" Type="String" />
                            <asp:Parameter Name="edad" Type="String" />
                            <asp:Parameter Name="carnet" Type="String" />
                        </updateparameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </div>
        <br />
        <div>
            <a href="Default.aspx">Crear Estudiante</a>
        </div>
   
</asp:Content>