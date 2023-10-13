<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CorreoElectronico.Entrada.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container col-xxl-8 px-4 py-1">
                <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
                    <div class="col-10 col-sm-8 col-lg-6">
                        <img src="https://www.lifeder.com/wp-content/uploads/2018/02/sistema-ordenador-min.jpg" class="d-block mx-lg-auto img-fluid" alt="Img" width="700" height="500" loading="lazy" />
                    </div>
                    <div class="col-lg-6">
                        <h1 class="display-5 fw-bold lh-1 mb-3">Sistema de Administracion</h1>
                        <h1 class="h3 mb-3 fw-normal">Bienvenido</h1>

                        <div class="form-floating">
                            <asp:TextBox ID="TextBoxUser" CssClass="form-control" placeholder="Shinobi" runat="server"></asp:TextBox>
                            <label for="floatingInput">Usuario</label>
                        </div>
                        <div class="form-floating">
                            <asp:TextBox ID="TextBoxPassword" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                            <label for="floatingPassword">Password</label>
                        </div>
 
                        <br />
                        <asp:Button ID="ButtonLog" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Ingresar" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
