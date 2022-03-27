<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmRegistrarClientes.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.FrmRegistroClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="LblNombreCliente">Nombre.</label>

            <asp:RegularExpressionValidator ID="regexNombre" runat="server" ErrorMessage="El nombre debe contener solo letras"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxNombreCliente" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxNombreCliente" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="LblApellidos">Apellidos.</label>

            <asp:RegularExpressionValidator ID="regexApellidos" runat="server" ErrorMessage="Los apellidos deben contener solo letras"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxApellidos" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxApellidos" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="LblIdentificacion">Identificación.</label>

            <asp:RegularExpressionValidator ID="regexID" runat="server" ErrorMessage="La identificacion debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxID" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxID" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="LblTelefono">Telefono</label>

            <asp:RegularExpressionValidator ID="regexTelefeno" runat="server" ErrorMessage="El telefono debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxTelefono" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxTelefono" CssClass="form-control" required="Requerido" runat="server" placeholder="12345678"></asp:TextBox>
        </div>
        <div class="form-group col-md-8">
            <label for="Lblemail">Email.</label>
            <asp:RegularExpressionValidator ID="regexMail" runat="server" ErrorMessage="Correo Invalido"
                ValidationExpression="^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$" ControlToValidate="tbxMail" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxMail" CssClass="form-control" required="Requerido" runat="server" placeholder="ejemplo@mail.com"></asp:TextBox>
        </div>
    </div>


    <div class="form-group">
        <label for="LblDirExa">Direccion.</label>
        <asp:TextBox ID="tbxDirExa" CssClass="form-control" runat="server"></asp:TextBox>

    </div>
    <div class="form-group">
        <label for="LblDistrito">Distrito.</label>

        <asp:RegularExpressionValidator ID="regexDistrito" runat="server" ErrorMessage="El distrito debe contener solo letras"
            ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxDistrito" ForeColor="Red" Text="Email Invalido">* invalido</asp:RegularExpressionValidator>
        <asp:TextBox ID="tbxDistrito" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>

    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputProvincia">Provincia:</label>
                    <asp:RegularExpressionValidator ID="regexProv" runat="server" ErrorMessage="Seleccione una Provincia"
            ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="inputProvincia" ForeColor="Red" Text="Email Invalido">*</asp:RegularExpressionValidator>

            <select id="inputProvincia" class="form-control" runat="server">
                <option selected>...</option>
                <option>San Jose</option>
            </select>
        </div>

        <div class="form-group col-md-4">
            <asp:RegularExpressionValidator ID="regexCanton" runat="server" ErrorMessage="Seleccione un Canton"
            ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="inputCanton" ForeColor="Red" Text="Email Invalido">*</asp:RegularExpressionValidator>
            <label for="inputCanton">Canton:</label>
            <select id="inputCanton" class="form-control" runat="server">
                <option selected>...</option>
                <option>Curridabat</option>
            </select>
        </div>
    </div>

    <asp:Button ID="btnRegistrarCliente" CssClass="btn btn-primary" runat="server" Text="Registrar cliente." />

    <br />

    <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
        <asp:ValidationSummary ID="vSumaryClientes" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
    </div>
</asp:Content>

