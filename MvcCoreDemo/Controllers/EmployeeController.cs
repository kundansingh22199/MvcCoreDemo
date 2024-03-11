using Microsoft.AspNetCore.Mvc;
using MvcCoreDemo.ClassFile;
using MvcCoreDemo.Implementation;
using MvcCoreDemo.Models;
using System.Collections.Generic;
using System.Net.Mail;
using System.Net;
using System.Reflection;

namespace MvcCoreDemo.Controllers
{
    public class EmployeeController : Controller
    {
        private readonly IContract _contractServices;
        private readonly IResponseList _Resplist;
        public EmployeeController(IContract contractServices, IResponseList resplist)
        {
            _contractServices = contractServices;
            _Resplist = resplist;
        }
        [HttpGet]
        public IActionResult Index()
        {
            var list = _Resplist.GetEmployeeList();
            ViewData["list"] = list;
            return View();
        }
        [HttpGet]
        public IActionResult getEmployee()
        {
            var list = _Resplist.GetEmployeeList();
            //ViewData["list"] = list;
            return Json(list);
        }
        [HttpGet]
        public IActionResult getEmployeeById(int Id)
        {
            var list = _Resplist.GetEmployee(Id);
            //ViewData["list"] = list;
            return Json(list);
        }
        [HttpPost]
        public IActionResult Index(EmployeeModel emp)
        {
            string st = "";
            if (emp.Name != null && emp.Mobile != null && emp.Email != null && emp.Mobile != null && emp.State != null && emp.City != null)
            {
                if (_contractServices.saveUpdateDelData(emp, "Insert"))
                {
                    st = "Successfull Save Employee";
                }
                else
                {
                    st = "Not Saved";
                }
            }
            return Json(st);
        }
        [HttpPost]
        public IActionResult Update(EmployeeModel emp)
        {
            string st = "";
            if (emp.Id != 0 && emp.Name != null && emp.Mobile != null && emp.Email != null && emp.Mobile != null && emp.State != null && emp.City != null)
            {
                if (_contractServices.saveUpdateDelData(emp, "Update"))
                {
                    st = "Successfull Update Employee";
                }
                else
                {
                    st = "Not Updated";
                }
            }
            return Json(st);
        }
        [HttpPost]
        public IActionResult Delete(EmployeeModel emp)
        {
            string st = "";
            if (emp.Id != 0)
            {
                if (_contractServices.saveUpdateDelData(emp, "Delete"))
                {
                    st = "Successfull Delete Employee";
                }
                else
                {
                    st = "Not Deleted";
                }
            }
            return Json(st);
        }
        [HttpGet]
        public IActionResult getState()
        {
            var list = _Resplist.GetStateList();
            return Json(list);
        }
        [HttpGet]
        public IActionResult getCity(int id)
        {
            var list = _Resplist.GetCityList(id);
            return Json(list);
        }
        [HttpPost]
        public IActionResult SendOTP(string email, string subject, string body)
        {
            string senderEmail = "kundansingh22199@gmail.com";
            string senderPassword = "wzzz gpps ellf lycr";
            using (SmtpClient client = new SmtpClient("smtp.gmail.com"))
            {
                client.Port = 587;
                client.Credentials = new NetworkCredential(senderEmail, senderPassword);
                client.EnableSsl = true;

                using (MailMessage message = new MailMessage(senderEmail, email, subject, body))
                {
                    try
                    {
                        client.Send(message);
                        return Json("Employee Details sent successfully.");
                    }
                    catch (Exception ex)
                    {
                        return Json(500, $"Error sending Details: {ex.Message}");
                    }
                }
            }
        }
    }
}