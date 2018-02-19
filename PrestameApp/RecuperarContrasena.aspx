<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContrasena.aspx.cs" Inherits="PrestameApp.RecuperarContrasena" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />

    <title>PrestameApp - Recuperar Contraseña</title>

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
                <p class="login-box-msg">Recuperar contraseña</p>


                <div class="form-group has-feedback">
                    <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" CssClass="form-control" placeholder="Ejm: yhoangaleano@gmail.com"/>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnEnviar" Text="Enviar acceso" CssClass="btn btn-primary btn-block btn-flat" runat="server" />
                </div>

            </div>
            <!-- /.login-box-body -->
        </div>


    </form>

    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

</body>
</html>
