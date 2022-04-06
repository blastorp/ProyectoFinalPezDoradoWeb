<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmBusquedaMAscotaConsulta.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.FrmBusquedaCM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <label for="LblIdentificadorcliente" class="form-label">Mascotas Ingresadas.</label>

    </div>
    <div>
        <br>
        <button class="btnBuscarMascota btn-primary" type="submit">Buscar Mascota.</button>
    </div>
    <br>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">ID Mascota.</th>
                <th scope="col">Nombre de la mascota.</th>
                <th scope="col">ID cliente.</th>
                <th scope="col">Tipo.</th>
                <th scope="col">Peso.</th>
                <th scope="col">Raza.</th>
                <th scope="col">Estado de salud.</th>
                <th scope="col">Fecha de nacimiento.</th>
            </tr>
        </thead>
        <tbody>
            <tr>
    </table>

</asp:Content>
