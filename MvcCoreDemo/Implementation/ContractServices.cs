using Microsoft.CodeAnalysis.Elfie.Diagnostics;
using MvcCoreDemo.ClassFile;
using MvcCoreDemo.Models;
using System.Data;
using System.Data.SqlClient;

namespace MvcCoreDemo.Implementation
{
    public class ContractServices : IContract
    {
        private readonly IConfiguration _configuration;
        public ContractServices(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        public bool saveUpdateDelData(EmployeeModel emp, string Action)
        {
            using (var connection = new SqlConnection(_configuration.GetConnectionString("SqlCon")))
            {
                try
                {
                    connection.Open();
                    using (SqlCommand cmd = new SqlCommand("SP_Employee", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", emp.Id);
                        cmd.Parameters.AddWithValue("@Name", emp.Name);
                        cmd.Parameters.AddWithValue("@Email", emp.Email);
                        cmd.Parameters.AddWithValue("@MobileNo", emp.Mobile);
                        cmd.Parameters.AddWithValue("@Dob", emp.Dob);
                        cmd.Parameters.AddWithValue("@State", emp.State);
                        cmd.Parameters.AddWithValue("@City", emp.City);
                        cmd.Parameters.AddWithValue("@Action", Action);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            return true; ;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }
        public DataTable GetEmployee(int Id, string Action)
        {
            using (var con = new SqlConnection(_configuration.GetConnectionString("SqlCon")))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("SP_Employee", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", Id);
                        cmd.Parameters.AddWithValue("@Action", Action);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        if (dt != null && dt.Rows.Count > 0)
                        {
                            return dt;
                        }
                        else
                        {
                            return null;
                        }
                    }


                }
                catch (Exception)
                {
                    return null;
                }
            }

        }
        public DataTable GetEmployeeList()
        {
            using (var con = new SqlConnection(_configuration.GetConnectionString("SqlCon")))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("SP_Employee", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "AllData");
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        if (dt != null && dt.Rows.Count > 0)
                        {
                            return dt;
                        }
                        else
                        {
                            return null;
                        }
                    }


                }
                catch (Exception)
                {
                    return null;
                }
            }

        }
        public DataTable GetCity(int StateId)
        {
            try
            {
                using(var con=new SqlConnection(_configuration.GetConnectionString("SqlCon")))
                {
                    SqlCommand cmd = new SqlCommand("SP_CityMaster", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id", StateId);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        return dt;
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
        public DataTable GetState()
        {
            try
            {
                using(var con=new SqlConnection(_configuration.GetConnectionString("SqlCon")))
                {
                    SqlCommand cmd = new SqlCommand("SP_StateMaster", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        return dt;
                    }
                    else
                    {
                        return null;
                    }
                }
                
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
