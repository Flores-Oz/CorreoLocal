<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true" CodeBehind="BandejaEntrada.aspx.cs" Inherits="CorreoElectronico.Correo.BandejaEntrada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-xxl-8 px-4 py-5">
        <h1 class="display-5 lh-1 fw-bold  mb-3">Bandeja de Entrada</h1>
        <div class="row">
            <div class="col-lg-6">
                <div class="table-responsive">

                    <asp:GridView ID="GridViewBEntrada" CssClass="list-group-item list-group-item-action" runat="server"
                        AllowPaging="True" PageSize="4"  OnPageIndexChanging="GridViewBEntrada_PageIndexChanging"
                        AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewBEntrada_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Titulo" HeaderText="Bandeja de Entrada" />
                            <asp:BoundField DataField="Estado" HeaderText="Leido" />
                            <asp:BoundField DataField="Identificador" HeaderText="Identificador" />
                            <asp:BoundField />
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

                <div class="p-4 p-md-5 rounded text-body-emphasis bg-info">
                    <div class="col-lg-6 px-0">
                        <h1 class="display-4 fst-italic">
                            <asp:Label ID="LabelTitulo" runat="server" Text="Bienvenido"></asp:Label>
                        </h1>
                        <strong class="d-inline-block text-success-emphasis">
                            <asp:Label ID="LabelEmisor" runat="server" Text="Bandeja de Entrada"></asp:Label>
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
