<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearEmpresa.aspx.cs" Inherits="PrestameApp.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="encabezado" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Crear Empresa
        </h1>
        <ol class="breadcrumb">
            <li><a href="Inicio.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="#">Empresas</a></li>
            <li class="active">Crear Empresa</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Información principal</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                        title="Collapsar">
                        <i class="fa fa-minus"></i>
                    </button>

                </div>
            </div>
            <div class="box-body">

                <div class="row">

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="NIT" runat="server" AssociatedControlID="txtNIT" />
                            <asp:TextBox ID="txtNIT" runat="server" placeholder="Ejm: 890101897-2" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Razón Social" runat="server" AssociatedControlID="txtRazonSocial" />
                            <asp:TextBox ID="txtRazonSocial" runat="server" placeholder="Ejm: Colanta S.A.S" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Teléfono" runat="server" AssociatedControlID="txtTelefono" />
                            <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ejm: 4445050" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Nombre Responsable" runat="server" AssociatedControlID="txtNombreResponsable" />
                            <asp:TextBox ID="txtNombreResponsable" runat="server" placeholder="Ejm: Juan Carmona" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Correo Electrónico" runat="server" AssociatedControlID="txtCorreoElectronico" />
                            <asp:TextBox ID="txtCorreoElectronico" TextMode="Email" runat="server" placeholder="Ejm: info@colanta.com.co" CssClass="form-control" OnTextChanged="txtCorreoElectronico_TextChanged" AutoPostBack="true" />
                            <asp:Label ID="lblErrorCorreoElectronico" runat="server" CssClass="help-block text-danger" Visible="false" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Usuario" runat="server" AssociatedControlID="txtUsuario" />
                            <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ejm: colanta1" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Contraseña" runat="server" AssociatedControlID="txtContrasena" />
                            <asp:TextBox ID="txtContrasena" TextMode="Password" runat="server" placeholder="Ejm: 123456" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Confirmar Contraseña" runat="server" AssociatedControlID="txtConfirmarContrasena" />
                            <asp:TextBox ID="txtConfirmarContrasena" TextMode="Password" runat="server" placeholder="Ejm: 123456" CssClass="form-control" />
                        </div>
                    </div>

                </div>


            </div>
            <!-- /.box-body -->
            <div class="box-footer">

                <div class="row pull-right">
                    
                    <div class="col-md-12">

                        <asp:Button Text="Cancelar" ID="btnCancelarEmpresa" runat="server" CssClass="btn btn-default" />

                        <asp:LinkButton ID="btnGuardarEmpresa" runat="server" CssClass="btn btn-success" OnClick="btnGuardarEmpresa_Click">
                            <i class="fa fa-check"></i>
                            Guardar Empresa
                        </asp:LinkButton>

                        

                    </div>

                </div>

            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->


</asp:Content>
