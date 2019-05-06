using ORS_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ORS_Business
{
    public class UserService
    {
       

        //public User_details GetUserDetails(User_details request)
        //{
        //    User_details UserDetails = new User_details();
        //    UserRepository userRepository = new UserRepository();
        //    UserDetails = userRepository.GetUserDetailsFromTable(request);
        //    return UserDetails;
        //}

        public List<AssociateDetails> GetAllUserList()
        {
            UserRepository userRepository = new UserRepository();
            return userRepository.GetAllUserList();
        }

     

        public bool AddNewUser(AssociateDetails associateDetails)
        {
            UserRepository userRepository = new UserRepository();
            return userRepository.AddNewUser(associateDetails);

        }

        public List<AssociateDetails> DeleteUser(int Id)
        {
            UserRepository userRepository = new UserRepository();
            return userRepository.DeleteUser(Id);

        }




    }
}
