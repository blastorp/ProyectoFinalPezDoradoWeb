<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmConsModifMascota.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.FrmConsModifMascota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="LblIdMascota">ID Mascota.</label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="El ID de la mascota debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxIdMascotaActualizar" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="tbxIdMascotaActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
            <br>
            <asp:Button ID="BtnActualizarMascota" CssClass="btn btn-primary" runat="server" Text="Actualizar informacion." />
            <div class="form-row">
            </div>
        </div>
    </div>
        <div class="form-row">
        <div class="form-group col-md-6">
            <label for="LblNombreMascotaActualizar">Nombre de mascota.</label>
                         <asp:RegularExpressionValidator ID="regexNombre" runat="server" ErrorMessage="El nombre debe contener solo letras"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxNombreMascotaActualizar" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="tbxNombreMascotaActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>

        </div>
        <div class="form-group col-md-4">
            <label for="inputTipoMascota">Tipo:</label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Elija un tipo de mascota"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="inputTipoMascotaEdit" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <select id="inputTipoMascotaEdit" class="form-control" runat="server">
                <option selected>...</option>
                <option>Ave</option>
                <option>Perro</option>
            </select>
        </div>
        <div class="form-group col-md-6">
            <label for="LblIdDuenioActualizar">Identificación del dueño.</label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="El ID del dueño debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxIdDuenioActualizar" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="tbxIdDuenioActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>

        </div>
        <div class="form-group col-md-6">
            <label for="LblPesoActualizar">Peso (Kg).</label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="el peso debe contener solo numeros y punto (.) para decimales Ejemplo: 1.45"
                ValidationExpression="^\d+(\.\d+)?$" ControlToValidate="tbxPesoActualizar" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="tbxPesoActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>

        </div>
        <div class="form-group col-md-6">
            <label for="LblRazaActualizar">Raza (Si aplica).</label>
            <asp:TextBox ID="tbxRazaActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>

        </div>

        <div class="form-group col-md-6">
            <label for="LblSaludActualizar">Estado de salud.</label>
            <asp:TextBox ID="tbxSaludActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>

        </div>
        <div class="form-group col-md-6">
            <label for="LblFechaActualizar">Fecha de nacimiento.</label>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="La Fecha debe ser formato dd/mm/aaaa (revise los valores)"
                ValidationExpression="^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$" ControlToValidate="tbxFechaActualizar" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="tbxFechaActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>


        </div>
    </div>
      <br>
            <asp:Button ID="BtnGuardarCambiosMascota" CssClass="btn btn-primary" runat="server" Text="Guardar cambios." />
    
    <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
        <asp:ValidationSummary ID="vSumaryRegistroMascotas" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
    </div>

</asp:Content>
