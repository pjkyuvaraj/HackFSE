using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;

namespace ORS_Model
{
    public class UserRepository
    {
        ReportingSystemDBEntities entity = new ReportingSystemDBEntities();
        ILog log = LogManager.GetLogger(typeof(UserRepository));



        public List<AssociateDetails> GetAllUserList()
        {
            List<AssociateDetails> lstUserData = new List<AssociateDetails>();
            try
            {
                lstUserData = entity.AssociateDetails.Select(p => p).ToList();
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get All User List" + e.Message.ToString(), e);
                throw e;
            }
            return lstUserData;
        }



        public bool AddNewUser(AssociateDetails associateDetails)
        {
            bool result = false;
            try
            {

                entity.AssociateDetails.Add(associateDetails);
                int value = entity.SaveChanges();
                result = (value > 0) ? true : false;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Add New User" + e.Message.ToString(), e);
                result = false;
            }
            return result;
        }

        public List<AssociateDetails> DeleteUser(int Id)
        {

            List<AssociateDetails> lstUserData = new List<AssociateDetails>();
            try
            {
                AssociateDetails associateDetails = entity.AssociateDetails.First(x => x.ID == Id);
                entity.AssociateDetails.Remove(associateDetails);
                int value = entity.SaveChanges();
                lstUserData = entity.AssociateDetails.Select(p => p).ToList();
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Delete User" + e.Message.ToString(), e);
                return lstUserData;
            }
            return lstUserData;

        }





    }
}
