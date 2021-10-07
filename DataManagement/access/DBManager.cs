using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using DataManagement.model;

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
            int carnet2 =Int16.Parse(carnet);
            double fecha2 =Convert.ToDouble(fecha);
            try
            {
                String check_id = "SELECT carnet FROM estudiante WHERE carnet='" + carnet + "'";
                SqlCommand cmd = new SqlCommand(check_id, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (carnet=="")
                {
                    response.success = false;
                    response.message = "Debe ingresar un Carnet para poder registrarse";
                }
                else if (reader.HasRows)
                {
                    response.success = false;
                    response.message = "Este Carnet ya ha sido registrado, por favor ingrese otro Carnet";
                }
                else
                {
                    String query = "INSERT INTO estudiante (carnet, pNombre, sNombre, pApellido, sApellido, nacimiento,edad) VALUES (@carnet, @pn, @sn, @pa, @sa, @fecha, @edad)";

                    SqlCommand sqlCommand = new SqlCommand(query, connection);
                    double calculo = fecha2 / 31536000000;

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
    }
}
