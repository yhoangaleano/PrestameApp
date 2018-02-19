<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrestameApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />

    <title>PrestameApp - Inicio de Sesión</title>

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
                <p class="login-box-msg">Iniciar Sesión</p>


                <div class="form-group has-feedback">
                    <asp:TextBox runat="server" ID="txtUsuario" CssClass="form-control" placeholder="Ejm: yhoang"/>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox runat="server" ID="txtContrasena" TextMode="Password" CssClass="form-control" placeholder="Ejm: 123456" />
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <asp:CheckBox ID="chkRecordarme" Text="Recordarme" runat="server" Checked="true" />
                    </div>
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <asp:Button ID="btnIniciar" Text="Iniciar" CssClass="btn btn-primary btn-block btn-flat" runat="server" />
                    </div>
                    <!-- /.col -->
                </div>

                <asp:LinkButton PostBackUrl="RecuperarContrasena.aspx" Text="¿Olvidaste tu contraseña?" runat="server" /> <br />
                <asp:LinkButton PostBackUrl="RegistrarEmpresa.aspx" Text="Registrarme como nueva empresa" runat="server" />

            </div>
            <!-- /.login-box-body -->
        </div>


    </form>

    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

</body>
</html>
