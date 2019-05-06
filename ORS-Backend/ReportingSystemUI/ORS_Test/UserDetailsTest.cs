using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ORS_Api.Controllers;
using ORS_Business;
using ORS_Model;
using System.Collections.Generic;
using System.Linq;
using ORS_Model.Helper;
using System.Web.Http.Results;
using System.Net.Http;
using System.Web.Http;


namespace ORS_Test
{
    [TestClass]
    public class UserDetailsTest
    {

        [TestMethod]
        public void GetAllUser()
        {
            UserRepository userRepo = new UserRepository();
            Assert.IsNotNull(userRepo.GetAllUserList());
        }

        [TestMethod]
        public void AddNewUser()
        {
            UserRepository userRepo = new UserRepository();
            AssociateDetails user = new AssociateDetails();
            user.ID = 1;
            user.AssociateID = 123456;
            user.AssociateName = "Latha";
            user.Designation = "Associate";
            user.Location = "Coimbatore";
            user.BU = "Technology";
            Assert.IsTrue(userRepo.AddNewUser(user));
        }
        [TestMethod]
        public void ValidateUser()
        {
            LoginRepository userRepo = new LoginRepository();
            LoginDetails login = new LoginDetails();
            login.UserName = "Yuvaraj";
            login.UserRole = "admin";
            login.IsDeleted = 0;
            login.Password = "user123";
            Assert.IsNotNull(userRepo.ValidateUser(login));
        }

        [TestMethod]

        public void DeleteUser()
        {
            UserRepository userRepo = new UserRepository();
            Assert.IsNotNull(userRepo.DeleteUser(123456));
        }

    }
}
