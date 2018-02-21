<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EmpresasPendientes.aspx.cs" Inherits="PrestameApp.Formulario_web13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="encabezado" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">


    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Empresas pendientes
        <small>Estas son las empresas que se registraron y aún no pueden ingresar</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="Inicio.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="#">Empresas</a></li>
            <li class="active">Empresas pendientes</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Listado de empresas pendientes</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                        title="Collapsar">
                        <i class="fa fa-minus"></i>
                    </button>
                </div>
            </div>
            <div class="box-body">

                <asp:GridView runat="server" ID="gvEmpresasPendientes" CssClass="table table-hover table-bordered"
                    GridLines="Both" Width="100%" AutoGenerateColumns="false">

                    <EmptyDataTemplate>

                        <div class="row">
                            <div class="col-md-12">

                                <div class="jumbotron">

                                    <p>
                                        No se encontraron datos para mostrar.
                                    </p>

                                </div>

                            </div>
                        </div>

                    </EmptyDataTemplate>


                    <Columns>

                        <asp:BoundField DataField="idEmpresa" HeaderText="Código Empresa" />
                        <asp:BoundField DataField="NIT" HeaderText="NIT" />
                        <asp:BoundField DataField="razonSocial" HeaderText="Razón Social" />
                        <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
                        <asp:BoundField DataField="nombreResponsable" HeaderText="Nombre Responsable" />
                        <asp:BoundField DataField="correoElectronico" HeaderText="Correo Electrónico" />
                        <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                        <asp:ButtonField ButtonType="Button" CommandName="btnActivar" ControlStyle-CssClass="btn btn-success" HeaderText="Activar" />
                        <asp:ButtonField ButtonType="Button" CommandName="btnRechazar" ControlStyle-CssClass="btn btn-danger" HeaderText="Rechazar" />

                    </Columns>

                </asp:GridView>


            </div>
            <!-- /.box-body -->

            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->



</asp:Content>
