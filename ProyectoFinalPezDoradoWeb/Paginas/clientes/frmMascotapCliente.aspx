﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmMascotapCliente.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.frmMascotapCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <form class="row g-3 needs-validation" novalidate>
            <div class="col-sm">
                <label for="LblIdentificadorCliente" class="form-label">Identificador del cliente.</label>
                <asp:RegularExpressionValidator ID="regexID" CssClass="form-control" runat="server" ErrorMessage="La identificacion debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxIdConsultaClientexMascota" ForeColor="Red" Text="">* La identificacion solo debe contener numeros</asp:RegularExpressionValidator>
                <asp:TextBox ID="tbxIdConsultaClientexMascota" runat="server" required="Requerido"></asp:TextBox>
                
                <div class="valid-feedback">
                    Looks good!
                </div>
                <br>
                <div>
                      <br>
                      <button class="btnBuscarclientexMascota btn-primary" type="submit">Buscar cliente.</button>
                </div>
              
            </div>
        </form>
    </div>
    <br>
<table class="table">
  <thead>
    <tr>
      <th scope="col">ID cliente.</th>
      <th scope="col">Nombre cliente.</th>
      <th scope="col">ID Mascota.</th>
      <th scope="col">Nombre de la mascota.</th>
      <th scope="col">Fecha de nacimiento.</th>
      <th scope="col">Estado de la mascota.</th>
      <th scope="col">Tipo de mascota.</th>
      <th scope="col">Peso de la mascota.</th>
      <th scope="col">Raza de la mascota.</th>
    </tr>
  </thead>
  <tbody>
    <tr>
</table>

</asp:Content>
