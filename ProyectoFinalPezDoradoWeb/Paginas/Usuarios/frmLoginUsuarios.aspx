<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="frmLoginUsuarios.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.frmLoginUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group col-md-6">
        <label for="tbxIDUsuario">ID Usuario</label>

        <asp:RegularExpressionValidator ID="regexIDUsuario" runat="server" ErrorMessage="El ID usuarios debe contener solo numeros"
            ValidationExpression="^[0-9]+$" ControlToValidate="tbxIDUsuario" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
        <asp:TextBox ID="tbxIDUsuario" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
    </div>

    <div class="form-group col-md-6">
        <label for="tbxPassword">Password.</label>


        <asp:TextBox ID="tbxPassword" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
    </div>

    <asp:Button ID="btAcceder" CssClass="btn btn-primary" runat="server" Text="Acceder" />

    <br />
    <br />
    <div>
        <asp:LinkButton ID="lnkBtAcceder" runat="server">Cambiar Permisos de usuarios</asp:LinkButton>
    </div>

</asp:Content>
