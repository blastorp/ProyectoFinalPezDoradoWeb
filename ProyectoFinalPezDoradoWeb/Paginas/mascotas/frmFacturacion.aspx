<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmFacturacion.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.frmFacturacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group col-md-6">
            <label for="LblIdMascota">ID Mascota.</label>
                     <asp:RegularExpressionValidator ID="regexNombre" runat="server" ErrorMessage="el ID de la mascota debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxIdMascotaFacturacion" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxIdMascotaFacturacion" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="LblIdServicio">ID Servicio.</label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="El Id del servicio debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="TbxIdServicioFacturacion" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>
            <asp:TextBox ID="TbxIdServicioFacturacion" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
      <div class="form-group col-md-6">
            <label for="LblFechaIngreso">Fecha de ingreso.</label>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="La Fecha debe ser formato dd/mm/aaaa (revise los valores)"
                ValidationExpression="^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$" ControlToValidate="tbxFechaIngreso" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxFechaIngreso" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
          <div class="form-group col-md-6">
            <label for="LblFechaSalida">Fecha de salida.</label>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="La Fecha debe ser formato dd/mm/aaaa (revise los valores)"
                ValidationExpression="^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$" ControlToValidate="TbxFechaDeSalida" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="TbxFechaDeSalida" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
    <asp:Button ID="BtnRegistrarFacturacion" CssClass="btn btn-primary" runat="server" Text="Registrar facturacion." />

     <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
        <asp:ValidationSummary ID="vSumaryRegistroMascotas" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
    </div>
    <br />

    <table class="table">
  <thead>
    <tr>
      <th scope="col">ID mascota.</th>
      <th scope="col">ServicioAplicado.</th>
      <th scope="col">Fecha de ingreso.</th>
      <th scope="col">Fecha de salida.</th>
      <th scope="col">Coste del servicio.</th>
    </tr>
  </thead>
  <tbody>
    <tr>
</table>
     <asp:Button ID="BtnGenerarFactura" CssClass="btn btn-primary" runat="server" Text="Finalizar facturacion." />
</asp:Content>
