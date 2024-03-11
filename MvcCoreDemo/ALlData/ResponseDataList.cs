using MvcCoreDemo.ClassFile;
using MvcCoreDemo.Implementation;
using MvcCoreDemo.Models;
using System.Data;
using System.Security.Cryptography.X509Certificates;

namespace MvcCoreDemo.ALlData
{
    public class ResponseDataList : IResponseList
    {
        private readonly IContract _contractServices;
        public ResponseDataList(IContract iservices)
        {
            _contractServices = iservices;
        }

        public List<CityModel> GetCityList(int StateId)
        {
            List<CityModel> sm = new List<CityModel>();
            DataTable dt = _contractServices.GetCity(StateId);
            if (dt != null)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    sm.Add(new CityModel
                    {
                        Id = Convert.ToInt32(dr["city_id"]),
                        CityName = Convert.ToString(dr["city_name"])
                    });
                }
            }

            return sm;
        }

        public List<StateModel> GetStateList()
        {
            List<StateModel> sm = new List<StateModel>();
            DataTable dt = _contractServices.GetState();
            if (dt != null)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    sm.Add(new StateModel
                    {
                        Id = Convert.ToInt32(dr["state_id"]),
                        StateName = Convert.ToString(dr["state_name"])
                    });
                }
            }
            return sm;
        }
        public List<EmployeeModel> GetEmployeeList()
        {
            List<EmployeeModel> sm = new List<EmployeeModel>();
            DataTable dt = _contractServices.GetEmployeeList();
            foreach (DataRow dr in dt.Rows)
            {
                sm.Add(new EmployeeModel
                {
                    Id = Convert.ToInt32(dr["Id"]),
                    Name = Convert.ToString(dr["Name"]),
                    Mobile = Convert.ToString(dr["MobileNo"]),
                    Email = Convert.ToString(dr["Email"]),
                    Dob = Convert.ToString(dr["Dob"]),
                    State = Convert.ToString(dr["State"]),
                    City = Convert.ToString(dr["City"])
                });
            }
            return sm;
        }
        public List<EmployeeModel> GetEmployee(int id)
        {
            List<EmployeeModel> sm = new List<EmployeeModel>();
            DataTable dt = _contractServices.GetEmployee(id, "SearchById");
            foreach (DataRow dr in dt.Rows)
            {
                sm.Add(new EmployeeModel
                {
                    Id = Convert.ToInt32(dr["Id"]),
                    Name = Convert.ToString(dr["Name"]),
                    Mobile = Convert.ToString(dr["MobileNo"]),
                    Email = Convert.ToString(dr["Email"]),
                    Dob = Convert.ToString(dr["Dob"]),
                    State = Convert.ToString(dr["State"]),
                    City = Convert.ToString(dr["City"]),
                    CityName = Convert.ToString(dr["CityName"]),
                    StateName = Convert.ToString(dr["StateName"])
                });
            }
            return sm;
        }
    }
}