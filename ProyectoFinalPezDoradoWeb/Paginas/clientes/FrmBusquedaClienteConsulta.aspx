<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmBusquedaClienteConsulta.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.FrmBusquedaClienteConsulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <label for="LblClientes" class="form-label">Clientes Ingresados.</label>
    </div>
    <div>
        <br>
        <button class="btnBuscarClientes btn-primary" type="submit">Buscar Clientes.</button>
    </div>
    <br>
<table class="table">
  <thead>
    <tr>
        <th scope="col">ID cliente.</th>
        <th scope="col">Nombre.</th>
        <th scope="col">Apellidos.</th>
        <th scope="col">Identificador</th>
        <th scope="col">Telefono</th>
        <th scope="col">Email</th>
        <th scope="col">Direccion</th>
        <th scope="col">Distrito.</th>
        <th scope="col">Provincia.</th>

                                                                                                                                                                                                                                                </th><th scope="col">Canton.</th>
    </tr>
  </thead>
  <tbody>
    <tr>
</table>

</asp:Content>
