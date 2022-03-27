<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmRegistroServicio.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.FrmRegistroServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
        <div class="form-row">
        <div class="form-group col-md-4">
            <label for="lblServicio">Servicio por registrar.</label>
            <asp:TextBox ID="TxbServicio" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
    </div>
        <div class="form-row">
        <div class="form-group col-md-6">
            <label for="lblCosteServicio">Coste del servicio (¢) </label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="el Costo debe contener solo numeros y punto (.) para decimales Ejemplo 12500.50"
                ValidationExpression="^\d+(\.\d+)?$" ControlToValidate="tbxCosteServicio" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

            <asp:TextBox ID="tbxCosteServicio" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
        </div>
    </div>
    
    <asp:Button ID="BtnRegistrarServicio" CssClass="btn btn-primary" runat="server" Text="Registrar servicio." />

    <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
        <asp:ValidationSummary ID="vSumaryRegistroMascotas" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
    </div>

</asp:Content>
