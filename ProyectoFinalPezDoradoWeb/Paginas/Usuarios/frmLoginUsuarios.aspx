<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmLoginUsuarios.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.frmLoginUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="LblNombreUsuario">Nombre de usuario.</label>

            <asp:RegularExpressionValidator ID="regexNombre" runat="server" ErrorMessage="El nombre debe contener solo letras"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxNombreUsuario" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxNombreUsuario" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="LblApellidosUsuario">Apellidos del usuario.</label>
            <asp:RegularExpressionValidator ID="regexApellidos" runat="server" ErrorMessage="Los apellidos deben contener solo letras"
                ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxApellidosUsuario" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxApellidosUsuario" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="LblIdentificacion">Identificación del usuario.</label>
            <asp:RegularExpressionValidator ID="regexID" runat="server" ErrorMessage="La identificacion debe contener solo numeros"
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxIDUsuario" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxIDUsuario" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group col-md-8">
            <label for="Lblemail">Email.</label>
            <asp:RegularExpressionValidator ID="regexMail" runat="server" ErrorMessage="Correo Invalido"
                ValidationExpression="^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$" ControlToValidate="tbxemailUsuario" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxemailUsuario" CssClass="form-control" required="Requerido" runat="server" placeholder="ejemplo@mail.com"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label for="LblLogInUsuario">LogIn Usuario.</label>
        <asp:TextBox ID="tbxLoginUsuario" CssClass="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="form-group col-md-8">
        <label for="LblContrasennaUsuario">Contrasenna del Usuario.</label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Contrasena invalida."
         ValidationExpression="^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$" ControlToValidate="TbxContrasennaUsuario" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
        <asp:TextBox ID="TbxContrasennaUsuario" CssClass="form-control" required="Requerido" runat="server" ></asp:TextBox>
    </div>

    <asp:Button ID="btnRegistrarCliente" CssClass="btn btn-primary" runat="server" Text="Registrar cliente." />

    <br />

    <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
        <asp:ValidationSummary ID="vSumaryClientes" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
    </div>
</asp:Content>
