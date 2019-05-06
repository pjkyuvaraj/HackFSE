using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ORS_Business;
using ORS_Model;

namespace ORS_Api.Controllers
{
    public class LoginController : ApiController
    {

        ILog log = LogManager.GetLogger(typeof(LoginController));

        [HttpGet]
        public string loginOk()
        {
            return "loginSucess";
        }


        [HttpPost]
        public LoginDetails Login(LoginDetails login)
        {
            LoginService service = new LoginService();
            return service.ValidateLogin(login);
        }

    }
}
