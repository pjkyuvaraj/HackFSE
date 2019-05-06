
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ORS_Model;

namespace ORS_Business
{
    public class LoginService
    {

        public LoginDetails ValidateLogin(LoginDetails login)
        {
            LoginRepository loginRepo = new LoginRepository();
            return loginRepo.ValidateUser(login);
        }


    }
}
