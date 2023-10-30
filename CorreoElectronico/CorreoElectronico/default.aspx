<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CorreoElectronico._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Smart Brain</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="CSS/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="half-background"></div>
            <div class="container py-4">


                <header class="pb-3 mb-4 border-bottom">
                    <a href="/" class="d-flex align-items-center text-body-emphasis text-decoration-none">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" class="me-2" viewBox="0 0 118 94" role="img">
                            <title>Bootstrap</title>
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
                        <span class="fs-4">Smart Brain</span>
                    </a>
                </header>
            </div>

            <div class="container col-xxl-8 px-4 py-5">
                <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
                    <div class="col-10 col-md-8 col-lg-6">
                        <img src="https://humanidades.com/wp-content/uploads/2017/07/correo-electronico-2-e1571618701455-800x416.jpg" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="1700" height="500" loading="lazy" />
                    </div>
                    <div class="col-lg-6">
                        <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">Correo electrónico seguro, inteligente y fácil de usar </h1>
                        <p class="lead">Mejora tu productividad con Smart Brain.</p>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                            <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg px-4 me-md-2" runat="server" Text="Iniciar Sesion" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" CssClass="btn btn-outline-secondary btn-lg px-4" runat="server" Text="Crear Usuario" OnClick="Button2_Click" />
                        </div>
                    </div>
                </div>


                <div class="row align-items-md-stretch">
                    <div class="col-md-6">
                        <div class="h-100 p-5 bg-warning-subtle border rounded-3">
                            <h2>Usa SmartBrain en cualquier dispositivo</h2>
                            <p>Disfruta de la facilidad y de la sencillez de SmartBrain desde cualquier lugar. </p>
                            <asp:Button ID="Button3" CssClass="btn btn-outline-warning btn-lg px-4" runat="server" Text="Iniciar Sesion" OnClick="Button3_Click" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="h-100 p-5 bg-info-subtle border rounded-3">
                            <h2>Recoge los frutos de un trabajo bien hecho.</h2>
                            <p>Empieza a disfrutar de la mayor potencia de Smart Brain. </p>
                            <asp:Button ID="Button4" CssClass="btn btn-outline-info btn-lg px-4" runat="server" Text="Crear Usuario" OnClick="Button4_Click" />
                        </div>
                    </div>
                </div>

                <footer class="pt-3 mt-4 text-body-secondary border-top">
                    &copy; 2023 Smart Brain
                </footer>
            </div>

        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
