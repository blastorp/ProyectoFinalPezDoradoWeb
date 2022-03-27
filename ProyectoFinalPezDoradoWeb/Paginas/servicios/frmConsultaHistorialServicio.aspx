<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmConsultaHistorialServicio.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.frmConsultaHistorialServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <div class="container">
        <form class="row g-3 needs-validation" novalidate>
            <div class="col-sm">
                <label for="LblIdentificadorMascotaConsulta" class="form-label">Identificador de la mascota.</label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="El identificador de la mascota debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="inputIdentificadorMascotaConsulta" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

                <input type="Text" class="form-control" id="inputIdentificadorMascotaConsulta" value="" required runat="server">
                <div class="valid-feedback">
                    Looks good!
                </div>
                <br>
                <button class="BtnBuscarMascota btn-primary" type="submit">Buscar mascota.</button>
            </div>
        </form>
    </div>

     <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
        <asp:ValidationSummary ID="vSumaryRegistroMascotas" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
    </div>
    <br />
<table class="table">
  <thead>
    <tr>
      <th scope="col">ID mascota.</th>
      <th scope="col">Nombre.</th>
      <th scope="col">Tipo de mascota.</th>
      <th scope="col">Raza de mascota.</th>
      <th scope="col">Servicios brindados.</th>
    </tr>
  </thead>
  <tbody>
    <tr>
</table>

</asp:Content>
