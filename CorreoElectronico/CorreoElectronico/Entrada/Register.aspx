<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CorreoElectronico.Entrada.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Smart Brain Registro</title>
    <link rel="stylesheet" href="../CSS/StyleSheet1.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col col-xl-10">
                            <div class="card" style="border-radius: 1rem;">
                                <div class="row g-0">
                                    <div class="col-md-6 col-lg-5 d-none d-md-block">
                                        <img src="https://cdna.artstation.com/p/assets/images/images/038/203/682/large/decade12866-smart-brain-logo.jpg?1622473027"
                                            alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                        <img src="https://pbs.twimg.com/media/E_6HRXQVIAkdKvD.jpg"
                                            alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                    </div>
                                    <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                        <div class="card-body p-4 p-lg-5 text-black">

                                            <div>

                                                <div class="d-flex align-items-center mb-3 pb-1">
                                                    <span class="h1 fw-bold mb-0">Registro</span>
                                                </div>

                                                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Llena todos los Campos</h5>
                                                <div class="row">
                                                    <div class="col-md-6 mb-4">
                                                        <asp:Label ID="Label1" CssClass="fw-normal" runat="server" Text="Primer Nombre"></asp:Label>
                                                        <asp:TextBox ID="TextBoxPNombre" CssClass="form-control form-control-md" placeholder="Primer Nombre" runat="server"></asp:TextBox>

                                                    </div>
                                                    <div class="col-md-6 mb-4">
                                                        <asp:Label ID="Label2" runat="server" CssClass="fw-normal" Text="Segundo Nombre"></asp:Label>
                                                        <asp:TextBox ID="TextBoxSNombre" CssClass="form-control form-control-md" placeholder="Segundo Nombre" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-4">
                                                        <asp:Label ID="Label3" runat="server" CssClass="fw-normal" Text="Primer Apellido"></asp:Label>
                                                        <asp:TextBox ID="TextBoxPApellido" CssClass="form-control form-control-md" placeholder="Primer Apellido" runat="server"></asp:TextBox>

                                                    </div>
                                                    <div class="col-md-6 mb-4">
                                                        <asp:Label ID="Label4" runat="server" CssClass="fw-normal" Text="Segundo Apellido"></asp:Label>
                                                        <asp:TextBox ID="TextBoxSApellido" CssClass="form-control form-control-md" placeholder="Segundo Apellido" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-4">
                                                        <asp:Label ID="Label5" runat="server" CssClass="fw-normal" Text="Fecha Nacimiento"></asp:Label>
                                                        <asp:TextBox ID="TextBoxFechaNac" CssClass="form-control form-control-md" TextMode="Date" runat="server"></asp:TextBox>

                                                    </div>
                                                    <div class="col-md-6 mb-4">
                                                        <asp:Label ID="Label6" runat="server" CssClass="fw-normal" Text="Telefono"></asp:Label>
                                                        <asp:TextBox ID="TextBoxTel" CssClass="form-control form-control-md" placeholder="00000000" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="row">
                                                        <asp:Label ID="Label7" runat="server" CssClass="fw-normal" Text="Correo Electronico"></asp:Label>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <br />
                                                            <asp:TextBox ID="TextBoxEmail" CssClass="form-control form-control-md" placeholder="Email" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="col">
                                                            <br />
                                                            <asp:Label ID="Label9" CssClass="fw-normal" runat="server" Text="@smartbrain.com"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-auto">
                                                            <br />
                                                            <asp:Label ID="Label8" CssClass="fw-normal" runat="server" Text="Contraseña"></asp:Label>
                                                        </div>
                                                        <div class="row">
                                                            <br />
                                                            <div class="col">
                                                                <asp:TextBox ID="TextBoxPass" TextMode="Password" CssClass="form-control form-control-md" placeholder="Contraseña" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="pt-1 mb-4">
                                                        <br />
                                                        <asp:Button ID="Button1" CssClass="btn btn-lg btn-block btn-outline-success" Width="100%" runat="server" Text="Registrarse" OnClick="Button1_Click" />
                                                    </div>

                                                    <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                                        Posees Ya una Cuenta?<a href="Login.aspx"
                                                            style="color: #393f81;">Da Clic Aqui!</a>
                                                    </p>
                                                    <a href="#" class="small text-muted">Terms of use.</a>
                                                    <a href="#" class="small text-muted">Privacy policy</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
