<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarEmpresa.aspx.cs" Inherits="PrestameApp.RegistrarEmpresa" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />

    <title>PrestameApp - Registrarme como nueva empresa</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/ionicons.min.css" rel="stylesheet" />
    <link href="Content/AdminLTE.min.css" rel="stylesheet" />

</head>
<body class="hold-transition login-page">
    <form id="form1" runat="server">

        <div class="login-box">
            <div class="login-logo">
                <a href="#"><b>Prestame</b>App</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Registrarme como nueva empresa</p>


                <div class="form-group has-feedback">
                    <asp:Label Text="NIT" runat="server" AssociatedControlID="txtNIT" />
                    <asp:TextBox ID="txtNIT" runat="server" placeholder="Ejm: 890101897-2" CssClass="form-control" />
                    <span class="fa fa-address-card form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <asp:Label Text="Razón Social" runat="server" AssociatedControlID="txtRazonSocial" />
                    <asp:TextBox ID="txtRazonSocial" runat="server" placeholder="Ejm: Colanta S.A.S" CssClass="form-control" />
                    <span class="fa fa-address-book form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <asp:Label Text="Teléfono" runat="server" AssociatedControlID="txtTelefono" />
                    <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ejm: 4445050" CssClass="form-control" />
                    <span class="fa fa-phone form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <asp:Label Text="Nombre Responsable" runat="server" AssociatedControlID="txtNombreResponsable" />
                    <asp:TextBox ID="txtNombreResponsable" runat="server" placeholder="Ejm: Juan Carmona" CssClass="form-control" />
                    <span class="fa fa-black-tie form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <asp:Label Text="Correo Electrónico" runat="server" AssociatedControlID="txtCorreoElectronico" />
                    <asp:TextBox ID="txtCorreoElectronico" TextMode="Email" runat="server" placeholder="Ejm: info@colanta.com.co" CssClass="form-control" />
                    <span class="fa fa-envelope form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <asp:Label Text="Usuario" runat="server" AssociatedControlID="txtUsuario" />
                    <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ejm: colanta1" CssClass="form-control" />
                    <span class="fa fa-user form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <asp:Label Text="Contraseña" runat="server" AssociatedControlID="txtContrasena" />
                    <asp:TextBox ID="txtContrasena" TextMode="Password" runat="server" placeholder="Ejm: 123456" CssClass="form-control" />
                    <span class="fa fa-lock form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">
                    <asp:Label Text="Confirmar Contraseña" runat="server" AssociatedControlID="txtConfirmarContrasena" />
                    <asp:TextBox ID="txtConfirmarContrasena" TextMode="Password" runat="server" placeholder="Ejm: 123456" CssClass="form-control" />
                    <span class="fa fa-retweet form-control-feedback"></span>
                </div>

                <div class="form-group has-feedback">

                    <div class="row">

                        <div class="col-md-6">
                            <asp:Button ID="btnCancelar" Text="Cancelar" CssClass="btn btn-default btn-block btn-flat" runat="server" />
                        </div>
                        <div class="col-md-6">
                            <asp:Button ID="btnRegistrarme" Text="Registrarme" CssClass="btn btn-primary btn-block btn-flat" runat="server" />
                        </div>

                    </div>

                </div>

            </div>
            <!-- /.login-box-body -->
        </div>


    </form>

    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

</body>
</html>

