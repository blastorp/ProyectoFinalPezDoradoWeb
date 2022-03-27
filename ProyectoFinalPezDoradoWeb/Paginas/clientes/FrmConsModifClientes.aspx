<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmConsModifClientes.aspx.vb" Inherits="ProyectoFinalPezDoradoWeb.FrmConsModifClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="lblNombreClienteActualizar">ID Cliente.</label>
            <asp:RegularExpressionValidator ID="regexIDClienteActualizar" runat="server" 
                ValidationExpression="^[0-9]+$" ControlToValidate="tbxIDBusquedactualizar" ForeColor="Red" Text="">* Solo Numeros</asp:RegularExpressionValidator>
            <asp:TextBox ID="tbxIDBusquedactualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
            <br>
            <asp:Button ID="BtnActualizarCliente" CssClass="btn btn-primary" runat="server" Text="Actualizar informacion." />
            <div class="form-row">
                <div class="form-group col-md-6">
                    <br>
                    <label for="lblNombreClienteActualizar">Nombre.</label>
                    <asp:RegularExpressionValidator ID="regexNombreEdit" runat="server" ErrorMessage="El nombre debe contener solo letras"
                        ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="TxbNombreActualizar" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
                    <asp:TextBox ID="TxbNombreActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <br>
                    <label for="lblApellidosActualizar">Apellido.</label>
                    <asp:RegularExpressionValidator ID="regexApellidosActualizar" runat="server" ErrorMessage="Los apellidos deben contener solo letras"
                        ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxApellidosActualizar" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>

                    <asp:TextBox ID="tbxApellidosActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="lblidentificacionActualizar">Identificación.</label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="La identificacion debe contener solo numeros"
                        ValidationExpression="^[0-9]+$" ControlToValidate="tbxIdentificacionActualizar" ForeColor="Red" Text="">*</asp:RegularExpressionValidator>

                    <asp:TextBox ID="tbxIdentificacionActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <asp:RegularExpressionValidator ID="regexTelefeno" runat="server" ErrorMessage="El telefono debe contener solo numeros"
                        ValidationExpression="^[0-9]+$" ControlToValidate="tbxTelefonoActualizar" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>
                    <label for="lblTelefonoActualizar">Telefono.</label>
                    <asp:TextBox ID="tbxTelefonoActualizar" CssClass="form-control" required="Requerido" runat="server" placeholder="12345678"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="lblEMailActualizar">Email.</label>
                    <asp:RegularExpressionValidator ID="regexMail" runat="server" ErrorMessage="Correo Invalido"
                        ValidationExpression="^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$" ControlToValidate="tbxMailActualizar" ForeColor="Red" Text="">* </asp:RegularExpressionValidator>

                    <asp:TextBox ID="tbxMailActualizar" CssClass="form-control" required="Requerido" runat="server" placeholder="ejemplo@mail.com"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label for="lblDirExaActualizar">Direccion.</label>
                <asp:TextBox ID="tbxDirExaActualizar" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group">
                <label for="lblDistritoActualizar">Distrito.</label>
                <asp:RegularExpressionValidator ID="regexDistrito" runat="server" ErrorMessage="El distrito debe contener solo letras"
                    ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="tbxDistritoActualizar" ForeColor="Red" Text="Email Invalido">* invalido</asp:RegularExpressionValidator>

                <asp:TextBox ID="tbxDistritoActualizar" CssClass="form-control" required="Requerido" runat="server"></asp:TextBox>

            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputProvincia">Provincia:</label>
                    <asp:RegularExpressionValidator ID="regexProv" runat="server" ErrorMessage="Seleccione una Provincia"
                        ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="inputProvinciaEdit" ForeColor="Red" Text="Email Invalido">*</asp:RegularExpressionValidator>

                    <select id="inputProvinciaEdit" class="form-control" runat="server">
                        <option selected>Elija...</option>
                        <option>San Jose</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label for="inputCanton">Canton:</label>
                    <asp:RegularExpressionValidator ID="regexCanton" runat="server" ErrorMessage="Seleccione un Canton"
                        ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$" ControlToValidate="inputCantonEdit" ForeColor="Red" Text="Email Invalido">*</asp:RegularExpressionValidator>

                    <select id="inputCantonEdit" class="form-control" runat="server">
                        <option selected>Elija...</option>
                        <option>Curridabat</option>
                    </select>
                </div>
            </div>
            <br>
            <asp:Button ID="BtnGuardarCambiosModificarCliente" CssClass="btn btn-primary" runat="server" Text="Guardar cambios." />



        </div>

        <div class="alert alert-info" role="alert" id="lblAlertaClientesRegistro" runat="server" visible="True">
            <asp:ValidationSummary ID="vSumaryClientesEdit" runat="server" HeaderText="Favor verifique lo siguiente:" ForeColor="red" />
        </div>
</asp:Content>


