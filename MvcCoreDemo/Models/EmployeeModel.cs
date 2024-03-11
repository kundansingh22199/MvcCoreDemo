﻿namespace MvcCoreDemo.Models
{
    public class EmployeeModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Dob { get; set; }
        public string State { get; set; }
        public string City { get; set; }
        public string StateName { get; set; }
        public string CityName { get; set; }
    }
    public class StateModel
    {
        public int Id { get; set; }
        public string StateName { get; set; }
    }
    public class CityModel
    {
        public int Id { get; set; }
        public string CityName { get; set; }
    }
}