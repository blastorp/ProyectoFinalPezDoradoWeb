<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmRegistrarMascotas.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="lblNombreMascota">Nombre de la mascota.</label>
             <asp:RegularExpressionValidator ID="regexNombre" runat="server" ErrorMessage="El nombre debe contener solo letras"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxNombreMascota" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="tbxNombreMascota" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-4">
            <label for="inputTipoMascota">Tipo:</label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Elija un tipo de mascota"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="inputTipoMascota" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>
            <select id="inputTipoMascota" class="form-control" runat="server">
                <option selected>...</option>
                <option>Ave</option>
                <option>Perro</option>
            </select>
        </div>
        <div class="form-group col-md-6">
            <label for="LblIdDueño">Identificación del dueño.</label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="El ID del dueño debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxIdDuenio" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxIdDuenio" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="LblPeso">Peso (Kg).</label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="el peso debe contener solo numeros y punto (.) para decimales Ejemplo 1.45"
                ValidationExpression="^\d+(\.\d+)?$" ControlToValidate="tbxPeso" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxPeso" CssClass="form-control" required="Requerido" runat="server" placeholder="1.45"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="lblRaza">Raza (Si aplica).</label>
            <asp:TextBox ID="tbxRaza" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label for="LblSalud">Estado de salud.</label>
            <asp:TextBox ID="tbxSalud" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="lblFecha">Fecha de nacimiento.</label>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="La Fecha debe ser formato dd/mm/aaaa (revise los valores)"
                ValidationExpression="^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$" ControlToValidate="tbxFecha" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxFecha" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>


        </div>
    </div>

    <asp:Button ID="btRegistrar" CssClass="btn btn-primary" runat="server" Text="Registrar Mascota." />

    <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
        <asp:ValidationSummary ID="vSumaryRegistroMascotas" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
    </div>
</asp:Content>
