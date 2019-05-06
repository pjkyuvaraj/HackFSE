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
    public class EventDetailsTest
    {
        [TestMethod]
        public void GetEventDetailsList()
        {
            EventSummaryRepository eventRepo = new EventSummaryRepository();
            Assert.IsNotNull(eventRepo.GetEventDetailsSummaryList());
        }
      
    }
}
