using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;


namespace ORS_Model
{
    public class CommonRepository
    {
        ReportingSystemDBEntities entity = new ReportingSystemDBEntities();
        ILog log = LogManager.GetLogger(typeof(CommonRepository));

        public List<Event_Details> GetAllEventList()
        {
            List<Event_Details> lstEventData = new List<Event_Details>();

            try
            {

                lstEventData = entity.Event_Details.Select(p => p).ToList();
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the Event List" + e.Message.ToString(), e);
                throw e;
            }
            return lstEventData;
        }



        public bool AddNewEvent(Event_Details EventDetails)
        {
            bool result = false;
            try
            {
                entity.Event_Details.Add(EventDetails);
                int value = entity.SaveChanges();
                result = (value > 0) ? true : false;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Add new event" + e.Message.ToString(), e);
                result = false;
            }
            return result;
        }


        public bool DeleteEvent(string Id)
        {

            bool result = false;
            try
            {
                Event_Details eventDetails = entity.Event_Details.First(x => x.EventID == Id);
                entity.Event_Details.Remove(eventDetails);
                int value = entity.SaveChanges();
                result = (value > 0) ? true : false;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to delete the event" + e.Message.ToString(), e);
                result = false;
            }
            return result;

        }



    }

}
