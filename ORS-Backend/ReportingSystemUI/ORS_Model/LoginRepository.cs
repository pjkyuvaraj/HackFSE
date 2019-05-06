using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ORS_Model
{
    public class LoginRepository
    {

        ReportingSystemDBEntities entity = new ReportingSystemDBEntities();
        ILog log = LogManager.GetLogger(typeof(LoginRepository));

        public LoginDetails ValidateUser(LoginDetails request)
        {
            LoginDetails loginDetails = new LoginDetails();

            try
            {
                loginDetails = entity.LoginDetails.Select(p => p).Where(o => o.UserName == request.UserName && o.Password == request.Password).ToList()[0];
                return loginDetails;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Validate User" + e.Message.ToString(), e);
                return loginDetails;
            }

        }
    }
}
