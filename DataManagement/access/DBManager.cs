using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using DataManagement.model;
using System.Data;
using System.Linq;

namespace DataManagement.access
{
    public class DBManager
    {
        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-367IV5TH\\SQLEXPRESS;Initial Catalog=escuela;MultipleActiveResultSets=true;Integrated Security=True");

        public Response openConnection()
        {
            Response response = new Response();

            try
            {
                connection.Open();
                response.success = true;
                response.message = "DB connection open";
            }
            catch (SqlException ex)
            {
                response.success = false;
                response.message = ex.Message;
            }

            return response;
        }
        
        public SqlConnection AbrirConexion()//Metodo abrir conexion para mostrar datos
        {
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            return connection;
        }
        public SqlConnection CerrarConexion()//Metodo cerrar conexion para mostrar datos
        {
            if (connection.State == ConnectionState.Open)
                connection.Close();
            return connection;
        }


        public Response closeConnection()
        {
            Response response = new Response();

            try
            {
                connection.Close();
                response.success = true;
                response.message = "DB connection closed";
            }
            catch (SqlException ex)
            {
                response.success = false;
                response.message = ex.Message;
            }

            return response;
        }

        public Response insertNewEstudiante(String carnet, String pn, String sn, String pa, String sa, String fecha)
        {
            Response response = new Response();
            
            try
            {
                String check_id = "SELECT carnet FROM estudiante WHERE carnet='" + carnet + "'";
                SqlCommand cmd = new SqlCommand(check_id, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (carnet.Equals(""))
                {
                    response.success = false;
                    response.message = "Debe ingresar un Carnet para poder registrarse";
                }
                else if (!carnet.All(char.IsDigit))
                {
                    response.success = false;
                    response.message = "El carnet debe ser numerico.";
                }
                else if (reader.HasRows)
                {
                    response.success = false;
                    response.message = "Este Carnet ya ha sido registrado, por favor ingrese otro Carnet";
                }
                else if (pn.Equals(""))
                {
                    response.success = false;
                    response.message = "Debe ingresar un primer nombre!";
                }
                else if (pa.Equals(""))
                {
                    response.success = false;
                    response.message = "Debe ingresar un primer apellido!";
                }
                else
                {
                    String query = "INSERT INTO estudiante (carnet, pNombre, sNombre, pApellido, sApellido, nacimiento,edad) VALUES (@carnet, @pn, @sn, @pa, @sa, @fecha, @edad)";
                    int carnet2 =Int16.Parse(carnet);
                    double fecha2 =Convert.ToDouble(fecha);
                    SqlCommand sqlCommand = new SqlCommand(query, connection);
                    double calculo = fecha2 / 3.154e+10/*31536000000*/;

                    int edad = (int)calculo;

                    sqlCommand.Parameters.AddWithValue("@carnet", carnet2);

                    sqlCommand.Parameters.AddWithValue("@pn", pn);
                    sqlCommand.Parameters.AddWithValue("@sn", sn);
                    sqlCommand.Parameters.AddWithValue("@pa", pa);
                    sqlCommand.Parameters.AddWithValue("@sa", sa);
                    sqlCommand.Parameters.AddWithValue("@fecha", fecha2);
                    sqlCommand.Parameters.AddWithValue("@edad", edad);

                    sqlCommand.ExecuteNonQuery();

                    response.success = true;
                    response.message = "Estudiante creado con exito!";
                }
            }
            catch (SqlException ex)
            {
                response.success = false;
                response.message = ex.Message;
            }

            return response;
        }

        public Response insertNewCurso(String codigo, String nom, String des)
        {
            Response response = new Response();

            try
            {
                String check_id = "SELECT codigo FROM curso WHERE codigo='" + codigo + "'";
                SqlCommand cmd = new SqlCommand(check_id, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (codigo.Equals(""))
                {
                    response.success = false;
                    response.message = "Debe ingresar un codigo para poder registrar curso";
                }
                else if (codigo.All(char.IsDigit))
                {
                    response.success = false;
                    response.message = "El codigo debe ser alfanumerico.";
                }
                else if (reader.HasRows)
                {
                    response.success = false;
                    response.message = "Este codigo ya ha sido registrado, por favor ingrese otro codigo";
                }
                else if (nom.Equals(""))
                {
                    response.success = false;
                    response.message = "Ingrese un nombre de curso";
                }
                else
                {
                    String query = "INSERT INTO curso (codigo, nombre, descripcion) VALUES (@codigo, @nom, @des)";
                    SqlCommand sqlCommand = new SqlCommand(query, connection);

                    sqlCommand.Parameters.AddWithValue("@codigo", codigo);
                    sqlCommand.Parameters.AddWithValue("@nom", nom);
                    sqlCommand.Parameters.AddWithValue("@des", des);
                 
                    sqlCommand.ExecuteNonQuery();

                    response.success = true;
                    response.message = "Curso creado con exito!";
                }
            }
            catch (SqlException ex)
            {
                response.success = false;
                response.message = ex.Message;
            }

            return response;
        }

        public Response insertNewMaestro(String carnet, String pn, String sn, String pa, String sa, String fecha)
        {
            Response response = new Response();

            try
            {
                String check_id = "SELECT carnet FROM maestro WHERE carnet='" + carnet + "'";
                SqlCommand cmd = new SqlCommand(check_id, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (carnet.Equals(""))
                {
                    response.success = false;
                    response.message = "Debe ingresar un carnet para poder registrarse";
                }
                else if (!carnet.All(char.IsDigit))
                {
                    response.success = false;
                    response.message = "El carnet debe ser numerico.";
                }
                else if (reader.HasRows)
                {
                    response.success = false;
                    response.message = "Este Carnet ya ha sido registrado, por favor ingrese otro carnet";
                }
                else if (pn.Equals(""))
                {
                    response.success = false;
                    response.message = "Debe ingresar un primer nombre!";
                }
                else if (pa.Equals(""))
                {
                    response.success = false;
                    response.message = "Debe ingresar un primer apellido!";
                }
                else
                {
                    String query = "INSERT INTO maestro (carnet, pNombre, sNombre, pApellido, sApellido, nacimiento) VALUES (@carnet, @pn, @sn, @pa, @sa, @fecha)";
                    int carnet2 = Int16.Parse(carnet);
                    long fecha2 = Convert.ToInt64(fecha);
                    SqlCommand sqlCommand = new SqlCommand(query, connection);
                    
                    sqlCommand.Parameters.AddWithValue("@carnet", carnet2);

                    sqlCommand.Parameters.AddWithValue("@pn", pn);
                    sqlCommand.Parameters.AddWithValue("@sn", sn);
                    sqlCommand.Parameters.AddWithValue("@pa", pa);
                    sqlCommand.Parameters.AddWithValue("@sa", sa);
                    sqlCommand.Parameters.AddWithValue("@fecha", fecha);

                    sqlCommand.ExecuteNonQuery();

                    response.success = true;
                    response.message = "Maestro registrado con exito!";

                }
            }
            catch (SqlException ex)
            {
                response.success = false;
                response.message = ex.Message;
            }

            return response;
        }
        /*public DataTable Mostrar()
        {
            
            SqlCommand command = new SqlCommand();
            DataTable table = new DataTable();
            DBManager dbManager = new DBManager();
            SqlDataReader reader;

            command.Connection = AbrirConexion();
            command.CommandText = "MostrarEstudiantes";
            String query = "SELECT * FROM estudiante";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            command.CommandType = CommandType.StoredProcedure;
            reader = command.ExecuteReader();   <-Could not find stored procedure "Lo que esta en la linea 127"
            table.Load(reader);
            CerrarConexion();
            return table;
           
        }*/

        public Response updateEstudiante(String carnet, String pn, String sn, String pa, String sa, String fecha)
        {
            Response response = new Response();
            double fecha2 = Convert.ToDouble(fecha);
            double calculo = fecha2 / 31536000000;
            String query = "UPDATE estudiante  SET (@carnet, @pn, @sn, @pa, @sa, @fecha, @edad)";
           
            int carnet2 = Int16.Parse(carnet);
            
            SqlCommand sqlCommand = new SqlCommand(query, connection);
           

            int edad = (int)calculo;

            sqlCommand.Parameters.AddWithValue("@carnet", carnet2);

            sqlCommand.Parameters.AddWithValue("@pn", pn);
            sqlCommand.Parameters.AddWithValue("@sn", sn);
            sqlCommand.Parameters.AddWithValue("@pa", pa);
            sqlCommand.Parameters.AddWithValue("@sa", sa);
            sqlCommand.Parameters.AddWithValue("@fecha", fecha2);
            sqlCommand.Parameters.AddWithValue("@edad", edad);

            sqlCommand.ExecuteNonQuery();
            
            response.success = true;
            response.message = "Los datos del estudiante han sido modificados!";

            return response;
        }
    }
}
