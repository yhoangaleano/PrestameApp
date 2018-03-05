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
                <h3 class="box-title">Información principal
                    <small>Los campos marcados con <span class="text-danger">*</span> son requeridos.
                    </small>
                </h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                        title="Collapsar">
                        <i class="fa fa-minus"></i>
                    </button>

                </div>
            </div>
            <div class="box-body">

                <div class="row">
                    <div class="col-md-12">

                        <asp:ValidationSummary ID="vsInformacionEmpresa" runat="server" DisplayMode="BulletList" CssClass="alert alert-danger" HeaderText="El formulario presenta los siguientes errores: " ShowSummary="true" ValidationGroup="InformacionEmpresa" />

                    </div>
                </div>

                <div class="row">

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="NIT" runat="server" AssociatedControlID="txtNIT" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtNIT" runat="server" placeholder="Ejm: 890101897-2" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtNITRequired" runat="server" ErrorMessage="El campo de NIT es requerido" CssClass="text-danger" ControlToValidate="txtNIT" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="txtNITUnique" runat="server" ErrorMessage="El NIT ya existe, por favor intente con otro." CssClass="text-danger" ControlToValidate="txtNIT" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa" OnServerValidate="txtNITUnique_ServerValidate"></asp:CustomValidator>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Razón Social" runat="server" AssociatedControlID="txtRazonSocial" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtRazonSocial" runat="server" placeholder="Ejm: Colanta S.A.S" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtRazonSocialRequired" runat="server" ErrorMessage="El campo de Razón Social es requerido" CssClass="text-danger" ControlToValidate="txtRazonSocial" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Teléfono" runat="server" AssociatedControlID="txtTelefono" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ejm: 4445050" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtTelefonoRequired" runat="server" ErrorMessage="El campo de Teléfono es requerido" CssClass="text-danger" ControlToValidate="txtTelefono" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Nombre Responsable" runat="server" AssociatedControlID="txtNombreResponsable" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtNombreResponsable" runat="server" placeholder="Ejm: Juan Carmona" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtNombreResponsableRequired" runat="server" ErrorMessage="El campo de Nombre Responsable es requerido" CssClass="text-danger" ControlToValidate="txtNombreResponsable" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Correo Electrónico" runat="server" AssociatedControlID="txtCorreoElectronico" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtCorreoElectronico" TextMode="Email" runat="server" placeholder="Ejm: info@colanta.com.co" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtCorreoElectronicoRequired" runat="server" ErrorMessage="El campo de Correo Electrónico es requerido" CssClass="text-danger" ControlToValidate="txtCorreoElectronico" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="txtCorreoElectronicoUnique" runat="server" ErrorMessage="El Correo Electrónico ya existe, por favor intente con otro." CssClass="text-danger" ControlToValidate="txtCorreoElectronico" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa" OnServerValidate="txtCorreoElectronicoUnique_ServerValidate"></asp:CustomValidator>
                            <asp:RegularExpressionValidator ID="txtCorreoElectronicoRegularEmail" runat="server" ErrorMessage="El campo Correo Electrónico no cumple con el formato." CssClass="text-danger" ControlToValidate="txtCorreoElectronico" Display="Dynamic" ValidationGroup="InformacionEmpresa" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Usuario" runat="server" AssociatedControlID="txtUsuario" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ejm: colanta1" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtUsuarioRequired" runat="server" ErrorMessage="El campo de Usuario es requerido" CssClass="text-danger" ControlToValidate="txtUsuario" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="txtUsuarioUnique" runat="server" ErrorMessage="El Usuario ya existe, por favor intente con otro." CssClass="text-danger" ControlToValidate="txtUsuario" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa" OnServerValidate="txtUsuarioUnique_ServerValidate"></asp:CustomValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Contraseña" runat="server" AssociatedControlID="txtContrasena" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtContrasena" TextMode="Password" runat="server" placeholder="Ejm: 123456" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtContrasenaRequired" runat="server" ErrorMessage="El campo de Contraseña es requerido" CssClass="text-danger" ControlToValidate="txtContrasena" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label Text="Confirmar Contraseña" runat="server" AssociatedControlID="txtConfirmarContrasena" />
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtConfirmarContrasena" TextMode="Password" runat="server" placeholder="Ejm: 123456" CssClass="form-control" ValidationGroup="InformacionEmpresa" />
                            <asp:RequiredFieldValidator ID="txtConfirmarContrasenaRequired" runat="server" ErrorMessage="El campo de Confirmar Contraseña es requerido" CssClass="text-danger" ControlToValidate="txtConfirmarContrasena" Display="Dynamic" SetFocusOnError="true" ValidationGroup="InformacionEmpresa"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="txtConfirmarContrasenaCompare" runat="server" ErrorMessage="El campo Contraseña y Confirmar Contraseña no coinciden." CssClass="text-danger" Display="Dynamic" ControlToValidate="txtConfirmarContrasena" ControlToCompare="txtContrasena" Operator="Equal" ValidationGroup="InformacionEmpresa"></asp:CompareValidator>
                        </div>
                    </div>

                </div>

            </div>
            <!-- /.box-body -->
            <div class="box-footer">

                <div class="row pull-right">

                    <div class="col-md-12">

                        <asp:Button Text="Cancelar" ID="btnCancelarEmpresa" runat="server" CssClass="btn btn-default" CausesValidation="false" />

                        <asp:LinkButton ID="btnGuardarEmpresa" runat="server" CssClass="btn btn-success" OnClick="btnGuardarEmpresa_Click" CausesValidation="true" ValidationGroup="InformacionEmpresa">
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
