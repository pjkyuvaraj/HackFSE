using ORS_Model.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;

namespace ORS_Model
{
    public class EventSummaryRepository
    {
        ReportingSystemDBEntities entity = new ReportingSystemDBEntities();
        ILog log = LogManager.GetLogger(typeof(EventSummaryRepository));

        public List<EventDetailsSummary> GetEventDetailsSummaryList()
        {

            List<EventDetailsSummary> eventSummaryList = new List<EventDetailsSummary>();
            try
            {
                eventSummaryList = entity.spGetEventDetails(string.Empty).Select(p => p).ToList();
                return eventSummaryList;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the event details summary list" + e.Message.ToString(), e);
                return null;
            }


        }


        public bool AddNewEvent(EventDetailsSummary EventDetails)
        {
            bool result = false;
            try
            {
                string inputString = string.Empty;
                inputString = XmlSerializerHelper.SerializeObject<EventDetailsSummary>(EventDetails);
                entity.spInsertEventDetails(inputString.Trim());
                int value = entity.SaveChanges();
                result = (value > 0) ? true : false;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to add the new event" + e.Message.ToString(), e);
                result = false;
            }
            return result;
        }




        public bool DeleteEvent(string id)
        {

            bool result = false;
            try
            {
                entity.spDeleteEventDetails(id);
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




        public List<BaseLocations> GetBaseLocations()
        {
            List<BaseLocations> masterBaseLocations = new List<BaseLocations>();

            try
            {
                masterBaseLocations = entity.BaseLocations.Select(p => p).ToList();
                return masterBaseLocations;

            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the base locations" + e.Message.ToString(), e);
                return null;
            }


        }


        public List<BusinessUnits> GetBusinessUnits()
        {
            List<BusinessUnits> masterBusinessUnit = new List<BusinessUnits>();

            try
            {
                masterBusinessUnit = entity.BusinessUnits.Select(p => p).ToList();
                return masterBusinessUnit;

            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the eBusiness units" + e.Message.ToString(), e);
                return null;
            }


        }


        public List<metricreport> GetMetricReportByInput(metricreport metricreport)
        {
            try
            {
                int intervel = 0;
                if (!string.IsNullOrEmpty(metricreport.eventInterval))
                {
                    EventIntervalEnum inputinterval = (EventIntervalEnum)Enum.Parse(typeof(EventIntervalEnum), metricreport.eventInterval ?? "Date");
                    intervel = (int)inputinterval;
                }

                DateTime? sDate = string.IsNullOrEmpty(metricreport.startDate) ? (DateTime?)null : DateTime.Parse(metricreport.startDate);
                DateTime? EDate = string.IsNullOrEmpty(metricreport.endDate) ? (DateTime?)null : DateTime.Parse(metricreport.endDate);

                var results = entity.spGetGenericMetrics(intervel, sDate, EDate).ToList();

                List<metricreport> metricreports = new List<metricreport>();

                foreach (GenericMetricsReport evt in results)
                {
                    metricreport rpt = new metricreport();
                    rpt.Totalnoofvolunteers = evt.TotalNoOfVolunteers.ToString();
                    rpt.TotalTravelHours = evt.TotalTravelHours.ToString();
                    rpt.TotalVolunteerHours = evt.TotalVolunteerHours.ToString();
                    rpt.OverallVolunteeringHours = evt.OverallVolunteeringHours.ToString();
                    rpt.eventInterval = evt.IntervalRange;
                    rpt.startDate = metricreport.startDate;
                    rpt.endDate = metricreport.endDate;
                    metricreports.Add(rpt);
                }
                return metricreports;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Metric Report By Input" + e.Message.ToString(), e);
                throw;
            }
        }

        public List<participationreport> GetParticipationReportByInput(participationreport rpt)
        {
            try
            {
                DateTime? sDate = string.IsNullOrEmpty(rpt.startDate) ? (DateTime?)null : DateTime.Parse(rpt.startDate);
                DateTime? EDate = string.IsNullOrEmpty(rpt.endDate) ? (DateTime?)null : DateTime.Parse(rpt.endDate);

                var results = entity.spGetParticipantMetrics(rpt.BusinessUnit,sDate, EDate).ToList();

                List<participationreport> participationreports = new List<participationreport>();

                foreach (ParticipantMetrics evt in results)
                {
                    participationreport rept = new participationreport();
                    rept.Totalnoofvolunteers = evt.TotalNoOfVolunteers.ToString();
                    rept.EventID = evt.EventID.ToString();
                    rept.BusinessUnit = evt.BusinessUint.ToString();

                    participationreports.Add(rept);
                }
                return participationreports;

            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Metric Report By Input" + e.Message.ToString(), e);
                throw;
            }
        }

    }


    public class metricreport
    {
        public string Totalnoofvolunteers { get; set; }
        public string TotalVolunteerHours { get; set; }
        public string TotalTravelHours { get; set; }
        public string OverallVolunteeringHours { get; set; }

        public string eventInterval { get; set; }

        public string startDate { get; set; }

        public string endDate { get; set; }

    }

    public class participationreport
    {
        public string BusinessUnit { get; set; }
        public string BaseLocation { get; set; }

        public string startDate { get; set; }

        public string endDate { get; set; }
        public string Totalnoofvolunteers { get; set; }

        public string EventID { get; set; }

    }


    public enum EventIntervalEnum
    {
        Date = 0,
        Day = 1,
        WeekDay = 2,
        WeekEnd = 3,
        Month = 4

    }



}
