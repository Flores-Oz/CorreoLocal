<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true" CodeBehind="Escribir.aspx.cs" Inherits="CorreoElectronico.Correo.Escribir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-xxl-8 px-4 py-5">
        <div class="p-4 p-md-5 rounded text-body-emphasis">
            <div class="col-lg-6 px-0">
                <h1 class="display-4 fst-italic">Escribir Mensaje
                </h1>
                <strong class="d-inline-block text-success-emphasis">Smart Brain
                </strong>
            </div>
        </div>

        <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
            <div class="bg-info bg-opacity-10 border border-info border-start-0 rounded-end">

                <div class="mb-4">
                    <label for="exampleFormControlInput1" class="form-label">Destinatario</label>
                    <asp:TextBox ID="TextBoxReceptor" CssClass="form-control border-success" placeholder="name@smartbrain.com" runat="server"></asp:TextBox>
                </div>
                <div class="mb-4">
                    <label for="exampleFormControlInput1" class="form-label">Titulo</label>
                    <asp:TextBox ID="TextBoxTitulo" CssClass="form-control border-success" placeholder="Titulo" runat="server"></asp:TextBox>
                </div>
                <div class="mb-4">
                    <label for="exampleFormControlInput1" class="form-label">Mensaje</label>
                    <asp:TextBox ID="TextBoxMensaje" CssClass="form-control border-success" TextMode="MultiLine" Rows="4" placeholder="Escribe aquí" runat="server"></asp:TextBox>
                </div>
                <div class="mb-4">
                    <div class="d-grid gap-2 col-6 mx-auto">
                    <asp:Button ID="ButtonEnviar" CssClass="btn btn-outline-success btn-lg" runat="server" Text="Enviar" OnClick="ButtonEnviar_Click" />
                        </div>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
