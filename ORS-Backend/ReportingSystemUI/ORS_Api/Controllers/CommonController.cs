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
    public class CommonController : ApiController
    {
        ILog log = LogManager.GetLogger(typeof(CommonController));

        [HttpGet]
        public List<Event_Details> GetAllEventList()
        {
            try
            {
                CommonService commonService = new CommonService();
                return commonService.GetAllEventList();
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the Event List" + e.Message.ToString(), e);
                throw;
            }
           
        }

        [HttpPost]
        public void AddNewEvent(Event_Details eventvalues)
        {
            try
            {
                CommonService commonService = new CommonService();
                commonService.AddNewEvent(eventvalues);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to add the new event" + e.Message.ToString(), e);
                throw;
            }           

        }

        [HttpPost]
        public void DeleteEvent(string id)
        {
            try
            {
                CommonService commonService = new CommonService();
                commonService.DeleteEvent(id);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to delete the event" + e.Message.ToString(), e);
                throw;
            }
           
        }

    }
}