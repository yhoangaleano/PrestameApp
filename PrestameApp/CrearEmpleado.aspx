<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearEmpleado.aspx.cs" Inherits="PrestameApp.Formulario_web12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="encabezado" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Crear Empleado
        </h1>
        <ol class="breadcrumb">
            <li><a href="Inicio.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="#">Empleados</a></li>
            <li class="active">Crear Empleado</li>
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
                            <asp:Label Text="Tipo Documento" runat="server" AssociatedControlID="sltTipoDocumento" />
                            <asp:DropDownList runat="server" ID="sltTipoDocumento" CssClass="form-control">
                                <asp:ListItem Text="text1" />
                                <asp:ListItem Text="text2" />
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Documento" runat="server" AssociatedControlID="txtDocumento" />
                            <asp:TextBox ID="txtDocumento" runat="server" placeholder="Ejm: 890101897" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Nombre Completo" runat="server" AssociatedControlID="txtNombreCompleto" />
                            <asp:TextBox ID="txtNombreCompleto" runat="server" placeholder="Ejm: Yhoan Galeano" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Fecha Nacimiento" runat="server" AssociatedControlID="txtFechaNacimiento" />
                            <asp:TextBox ID="txtFechaNacimiento" TextMode="Date" runat="server" placeholder="Ejm: 15/02/1993" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Género" runat="server" AssociatedControlID="sltGenero" />
                            <asp:DropDownList runat="server" ID="sltGenero" CssClass="form-control">
                                <asp:ListItem Text="text1" />
                                <asp:ListItem Text="text2" />
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Empresa" runat="server" AssociatedControlID="sltEmpresa" />
                            <asp:DropDownList runat="server" ID="sltEmpresa" CssClass="form-control">
                                <asp:ListItem Text="text1" />
                                <asp:ListItem Text="text2" />
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Foto" runat="server" AssociatedControlID="txtFoto" />
                            <asp:FileUpload ID="txtFoto" CssClass="form-control" runat="server" AllowMultiple="false"  /> 
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Correo Electrónico" runat="server" AssociatedControlID="txtCorreoElectronico" />
                            <asp:TextBox ID="txtCorreoElectronico" TextMode="Email" runat="server" placeholder="Ejm: info@colanta.com.co" CssClass="form-control" />
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

                        <asp:Button Text="Cancelar" ID="btnCancelarEmpleado" runat="server" CssClass="btn btn-default" />

                        <asp:LinkButton ID="btnGuardarEmpleado" runat="server" CssClass="btn btn-success">
                            <i class="fa fa-check"></i>
                            Guardar Empleado
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
