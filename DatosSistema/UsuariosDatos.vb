Imports Entidades
Imports datos
Imports System.Data.SqlClient

Public Class UsuariosDatos
    Public Function GetUsuario(ByVal IdUsuario As String) As Usuario
        Dim dtEmpleados As DataTable = Me.GetUsuarios(IdUsuario)
        Dim iUsuario As Usuario = Nothing
        If dtEmpleados.Rows.Count > 0 Then

            For Each drUsuario As DataRow In dtEmpleados.Rows
                iUsuario = New Usuario With {
                .Identificador = drUsuario("Id_Empleado"),
                .NombreEmpleado = drUsuario("Nombre_Empleado"),
                .ApellidoEmpleado = drUsuario("Apellido_Empleado"),
                .IdentificacionEmpleado = drUsuario("Identificacion_Empleado"),
                .CorreoElectronicoEmpleado = drUsuario("CorreoElectronico_Empleado"),
                .UsuarioEmpleado = drUsuario("Usuario_Empleado"),
                .ContrasenaUsuario = drUsuario("Contrasena_Usuario")
                }
                'falta rol usuario


                Return iUsuario
            Next

        End If

    End Function
    Public Function GetUsuarios(ByVal Optional IdUsuario As String = "") As DataTable
        'consulta a tabla usuaruios por completo
        Dim strConsultaSql As String = "Select IdEmpleado ""Id_Empleado"",NombreEmpleado ""Nombre_Empleado"",ApellidoEmpleado  ""Apellido_Empleado"",IdentificacionEmpleado ""Identificacion_Empleado"", CorreoElectronicoEmpleado ""CorreoElectronico_Empleado"",UsuarioEmpleado ""Usuario_Empleado"",ContrasenaUsuario ""Contrasena_Usuario"" FROM Empleados"
        If Not String.IsNullOrEmpty(IdUsuario) Then
            strConsultaSql &= " WHERE IdEmpleado = '" & IdUsuario & "'"
        End If

        Dim iConexionSql As New ConexionSQL
        Return iConexionSql.QueryDBWithDT(strConsultaSql)

    End Function
    Public Sub GrabarUsuario(ByVal iUsuario As Usuario, ByVal accion As Enumeradores.Accion)
        Dim strNombreSp As String = "SpGrabarEmpleados"
        Dim lstParametros As New List(Of SqlParameter)

        With lstParametros
            .Add(New SqlParameter("@Accion", CShort(accion)))
            .Add(New SqlParameter("@Identificador", iUsuario.Identificador))
            .Add(New SqlParameter("@NombreEmpleado", iUsuario.NombreEmpleado))
            .Add(New SqlParameter("@ApellidoEmpleado", iUsuario.ApellidoEmpleado))
            .Add(New SqlParameter("@CorreoElectronicoEmpleado", iUsuario.CorreoElectronicoEmpleado))
            .Add(New SqlParameter("@UsuarioEmpleado", iUsuario.UsuarioEmpleado))
            .Add(New SqlParameter("@ContrasenaUsuario", iUsuario.ContrasenaUsuario))
        End With
        Dim iConexionSql As New ConexionSQL
        iConexionSql.ExecuteSP(strNombreSp, lstParametros)

    End Sub
End Class
