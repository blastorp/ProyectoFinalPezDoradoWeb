Imports System.Data.SqlClient
Imports System.Configuration

Public Class ConexionSQL

    'objeto que se utilizará para la conexión a la base de datos
    Dim sqlConn As SqlConnection

    Public Sub New()
        Try
            'objeto para almacenar el strinde de conexión
            Dim strConnectionString As New System.Text.StringBuilder

            'agrega la información necesaria para el string de conexión a la base de datos SQL
            With strConnectionString
                .Append("Data Source=")
                .Append(ConfigurationManager.AppSettings("ServerName"))
                .Append(";Initial Catalog=")
                .Append(ConfigurationManager.AppSettings("DBName"))
                .Append(";Integrated Security=True")
                '.Append(";User=")
                '.Append(ConfigurationManager.AppSettings("UserDB"))
                '.Append(";Password=")
                '.Append(ConfigurationManager.AppSettings("PassDB"))
            End With

            'crea el objeto conexión
            Me.sqlConn = New SqlConnection(strConnectionString.ToString)

        Catch sql As SqlException
            Throw sql
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Public Sub QueryDB(ByVal QuerySQL As String)
        Try
            'indica la consulta de base de datos que se desea ejecutar
            Dim cmd As New SqlCommand(QuerySQL) With {
                .Connection = Me.sqlConn
            }

            'abrimos la conexion con la BD
            sqlConn.Open()

            'ejecuta la consulta de base de datos
            cmd.ExecuteNonQuery()

            'cierra la conexión con la base de datos
            sqlConn.Close()

        Catch sql As SqlException
            If sqlConn.State = ConnectionState.Open Then sqlConn.Close()
            Throw sql
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Public Function QueryDBWithDS(ByVal QuerySQL As String) As DataSet
        Try
            'indica la consulta de base de datos que se desea ejecutar
            Dim cmd As New SqlCommand(QuerySQL) With {
                .Connection = Me.sqlConn
            }

            'objeto para ejecutar la consulta de la base de datos que retorna información
            Dim adapter As New SqlDataAdapter(cmd)

            'objeto para almacenar la información que se obtiene de la base de datos
            Dim dsDatos As New DataSet

            'ejecuta la consulta
            adapter.Fill(dsDatos)

            'retorna el resultado obtenido
            Return dsDatos

        Catch sql As SqlException
            If sqlConn.State = ConnectionState.Open Then sqlConn.Close()
            Throw sql
        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function QueryDBWithDT(ByVal QuerySQL As String) As DataTable
        Try
            'indica la consulta de base de datos que se desea ejecutar
            Dim cmd As New SqlCommand(QuerySQL) With {
                .Connection = Me.sqlConn
            }

            'objeto para ejecutar la consulta de la base de datos que retorna información
            Dim adapter As New SqlDataAdapter(cmd)

            'objeto para almacenar la información que se obtiene de la base de datos
            Dim dtDatos As New DataTable

            'ejecuta la consulta
            adapter.Fill(dtDatos)

            'retorna el resultado obtenido
            Return dtDatos

        Catch sql As SqlException
            If sqlConn.State = ConnectionState.Open Then sqlConn.Close()
            Throw sql
        Catch ex As Exception
            Throw ex
        End Try
    End Function

#Region "Manejo de Procedimientos Almacenados"
    Public Sub ExecuteSP(ByVal SPName As String, ByVal ListaParametros As List(Of SqlParameter))
        Try
            'indica la consulta de base de datos que se desea ejecutar
            Dim cmd As New SqlCommand() With {
                .CommandType = CommandType.StoredProcedure,
                .CommandText = SPName,
                .Connection = Me.sqlConn
            }

            'agrega los parametros a la ejecución del SP
            For Each sqlParam As SqlParameter In ListaParametros
                cmd.Parameters.Add(sqlParam)
            Next

            'abrimos la conexion con la BD
            sqlConn.Open()

            'ejecuta la consulta de base de datos
            cmd.ExecuteNonQuery()

            'cierra la conexión con la base de datos
            sqlConn.Close()

        Catch sql As SqlException
            If sqlConn.State = ConnectionState.Open Then sqlConn.Close()
            Throw sql
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Public Function ExecutSPWithDS(ByVal SPName As String, ByVal ListaParametros As List(Of SqlParameter)) As DataSet
        Try
            'indica la consulta de base de datos que se desea ejecutar
            Dim cmd As New SqlCommand() With {
                .CommandType = CommandType.StoredProcedure,
                .CommandText = SPName,
                .Connection = Me.sqlConn
            }

            'agrega los parametros a la ejecución del SP
            For Each sqlParam As SqlParameter In ListaParametros
                cmd.Parameters.Add(sqlParam)
            Next

            'objeto para ejecutar la consulta de la base de datos que retorna información
            Dim adapter As New SqlDataAdapter(cmd)

            'objeto para almacenar la información que se obtiene de la base de datos
            Dim dsDatos As New DataSet

            'ejecuta la consulta
            adapter.Fill(dsDatos)

            'retorna el resultado obtenido
            Return dsDatos

        Catch sql As SqlException
            If sqlConn.State = ConnectionState.Open Then sqlConn.Close()
            Throw sql
        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function ExecuteSPWithDT(ByVal SPName As String, ByVal ListaParametros As List(Of SqlParameter)) As DataTable
        Try
            'indica la consulta de base de datos que se desea ejecutar
            Dim cmd As New SqlCommand() With {
                .CommandType = CommandType.StoredProcedure,
                .CommandText = SPName,
                .Connection = Me.sqlConn
            }

            'agrega los parametros a la ejecución del SP
            For Each sqlParam As SqlParameter In ListaParametros
                cmd.Parameters.Add(sqlParam)
            Next

            'objeto para ejecutar la consulta de la base de datos que retorna información
            Dim adapter As New SqlDataAdapter(cmd)

            'objeto para almacenar la información que se obtiene de la base de datos
            Dim dtDatos As New DataTable

            'ejecuta la consulta
            adapter.Fill(dtDatos)

            'retorna el resultado obtenido
            Return dtDatos

        Catch sql As SqlException
            If sqlConn.State = ConnectionState.Open Then sqlConn.Close()
            Throw sql
        Catch ex As Exception
            Throw ex
        End Try
    End Function

#End Region

End Class
