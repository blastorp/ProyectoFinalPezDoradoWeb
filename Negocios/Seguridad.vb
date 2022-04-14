Imports Entidades
Imports DatosSistema
Public Class Seguridad
    'Public Sub RegistrarUsuario(ByVal iUsuario As Usuario)
    '    Dim iDatos As New DatosSistema.UsuariosDatos
    '    iDatos.GrabarUsuario(iUsuario, Enumeradores.Accion.Registrar)

    'End Sub
    Public Sub GrabarUsuario(ByVal accion As Enumeradores.Accion, ByVal iUsuario As Usuario)
        Dim iDatos As New DatosSistema.UsuariosDatos
        iDatos.GrabarUsuario(iUsuario, accion)

    End Sub
End Class
