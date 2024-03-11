using MvcCoreDemo.Models;
using System.Data;

namespace MvcCoreDemo.ClassFile
{
    public interface IContract
    {
        public bool saveUpdateDelData(EmployeeModel emp, string Action);
        public DataTable GetEmployee(int Id, string Action);
        public DataTable GetState();
        public DataTable GetCity(int Id);
        public DataTable GetEmployeeList();


    }
    public interface IResponseList
    {
        public List<StateModel> GetStateList();
        public List<EmployeeModel> GetEmployeeList();
        public List<CityModel> GetCityList(int StateId);
        public List<EmployeeModel> GetEmployee(int id);
    }
}