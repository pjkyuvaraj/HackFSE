using MVCLogin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLogin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Authorization(MVCLogin.Models.UserDetail userDetail)
        {
            using (MVCLearningEntities dd = new MVCLearningEntities())
            {
                var userdetailsexist = dd.UserDetails.Where(x => x.UserName == userDetail.UserName && x.Password == userDetail.Password).FirstOrDefault();

                if (userdetailsexist ==null)
                {
                    userDetail.LoginErrorMessage = "test";
                    return View("Index", userDetail);
                }
                else
                {
                    Session["Login"] = userdetailsexist;
                   return RedirectToAction("Index", "Home");
                }
            }         
        }

        public ActionResult LogOut()
        {
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }
    }
}