using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ORS_Business;
using ORS_Model;
using log4net;

namespace ORS_Api.Controllers
{
    public class UserController : ApiController
    {
        ILog log = LogManager.GetLogger(typeof(UserController));

        [HttpGet]
        public List<AssociateDetails> GetAllUserDetails()
        {
            try
            {
                UserService userService = new UserService();
                return userService.GetAllUserList();

            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the user details" + e.Message.ToString(), e);
                throw;
            }
             
            
        }

        [HttpPost]
        public void AddNewuser(AssociateDetails associateDetails)
        {
            try
            {
                UserService userService = new UserService();
                userService.AddNewUser(associateDetails);

            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Add the New user " + e.Message.ToString(), e);
                throw;
            }
           
        }


        [HttpPost]
        public List<AssociateDetails> DeleteUser(int id)
        {
            try
            {
                UserService userService = new UserService();
                return userService.DeleteUser(id);

            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Delete the user " + e.Message.ToString(), e);
                throw;
            }
           
        }




    }
}