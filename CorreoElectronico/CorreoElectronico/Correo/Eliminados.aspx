<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true" CodeBehind="Eliminados.aspx.cs" Inherits="CorreoElectronico.Correo.Eliminados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container col-xxl-8 px-4 py-5">
        <h1 class="display-5 lh-1 fw-bold  mb-3">Bandeja de Eliminados</h1>
        <div class="row">
            <div class="col-lg-6">
                <div class="table-responsive">

                    <asp:GridView ID="GridViewSalida" CssClass="list-group-item list-group-item-action" runat="server"
                        AllowPaging="True" PageSize="9"  OnPageIndexChanging="GridViewSalida_PageIndexChanging"
                        AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewSalida_SelectedIndexChanged" OnRowCancelingEdit="GridViewSalida_RowCancelingEdit" OnRowEditing="GridViewSalida_RowEditing" OnRowUpdating="GridViewSalida_RowUpdating">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="Bandeja de Eliminados">
                                <EditItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Titulo") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Titulo") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sin Leer">
                                <EditItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Identificador">
                                <EditItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Identificador") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Identificador") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Update" ImageUrl="~/img/eliminar.png" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Cancel" ImageUrl="~/img/error.png" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" ImageUrl="~/img/marco(1).png" />
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>

            </div>

            <div class="col-lg-6">

                <div class="p-4 p-md-5 rounded text-body-emphasis p-3 bg-info bg-opacity-10 border border-info border-start-0 rounded-end">
                    <div class="col-lg-6 px-0">
                        <h1 class="display-4 fst-italic">
                            <asp:Label ID="LabelTitulo" runat="server" Text="Bienvenido"></asp:Label>
                        </h1>
                        <strong class="d-inline-block text-success-emphasis">
                            <asp:Label ID="LabelEmisor" runat="server" Text="Bandeja de Eliminados"></asp:Label>
                        </strong>
                        <div class=" text-body-secondary">
                            <asp:Label ID="LabelFechaHora" runat="server" Text=""></asp:Label>
                        </div>
                        <p class="lead my-3">
                            <asp:Label ID="LabelCuerpo" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
