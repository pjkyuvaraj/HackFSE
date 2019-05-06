using ORS_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ORS_Business
{
    public class CommonService
    {
        public List<Event_Details> GetAllEventList()
        {
            CommonRepository commonService = new CommonRepository();
            return commonService.GetAllEventList();
        }


        public bool AddNewEvent(Event_Details eventDetails)
        {
            CommonRepository commonRepository = new CommonRepository();
            return commonRepository.AddNewEvent(eventDetails);

        }


        public bool DeleteEvent(string id)
        {
            CommonRepository commonRepository = new CommonRepository();
            return commonRepository.DeleteEvent(id);

        }


    }
}