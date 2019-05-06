using ORS_Business;
using ORS_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Http;
using log4net;


namespace ORS_Api.Controllers
{
    public class EventSummaryController : ApiController
    {
        ILog log = LogManager.GetLogger(typeof(EventSummaryController));
        [HttpGet]
        public List<EventDetailsSummary> GetEventDetailsSummaryList()
        {
            try
            {
                EventSummaryService eventSummary = new EventSummaryService();
                return eventSummary.GetEventDetailsSummaryList();
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the Event details summary" + e.Message.ToString(), e);
                throw;
            }
            

        }


        [HttpPost]
        public void AddNewEvent(EventDetailsSummary eventvalues)
        {

            try
            {
                EventSummaryService eventSummary = new EventSummaryService();
                eventSummary.AddNewEvent(eventvalues);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Add new event" + e.Message.ToString(), e);
                throw;
            }  

        }

        [HttpPost]
        public void DeleteEvent(string id)
        {
            try
            {
                EventSummaryService eventSummary = new EventSummaryService();
                eventSummary.DeleteEvent(id);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Delete the event" + e.Message.ToString(), e);
                throw;
            }
           
        }



        [HttpGet]
        public CommonResponse GetAllMasterValues()
        {
            try
            {
                CommonResponse commonResponse = new CommonResponse();
                commonResponse.baseLocations = GetBaseLocations();
                commonResponse.businessUnits = GetBusinessUnits();
                return commonResponse;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Master Values" + e.Message.ToString(), e);
                throw;
            }
          
        }


        [HttpGet]
        public List<BaseLocations> GetBaseLocations()
        {
            try
            {
                EventSummaryService eventSummary = new EventSummaryService();
                return eventSummary.GetBaseLocations();
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Base locations" + e.Message.ToString(), e);
                throw;
            }
           
        }


        [HttpGet]
        public List<BusinessUnits> GetBusinessUnits()
        {
            try
            {
                EventSummaryService eventSummary = new EventSummaryService();
                return eventSummary.GetBusinessUnits();
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Business Units" + e.Message.ToString(), e);
                throw;
            }           
        }


        [HttpGet]
        public List<metricreport> Getmetricreport()
        {
            try
            {
                metricreport report = new metricreport();
                EventSummaryService eventSummary = new EventSummaryService();
                return eventSummary.GetMetricReportByInput(report);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Metrics report" + e.Message.ToString(), e);
                throw;
            }
            
        }


        [HttpPost]
        public List<metricreport> GetMetricReportByInput(metricreport metricreport)
        {
            try
            {
                EventSummaryService eventSummary = new EventSummaryService();
                return eventSummary.GetMetricReportByInput(metricreport);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Metrics report by input" + e.Message.ToString(), e);
                throw;
            }    
        }

        [HttpPost]
        public HttpResponseMessage DownloadMetricReportExcel(metricreport metricreport)
        {
            try
            {
                HttpResponseMessage result = new HttpResponseMessage(HttpStatusCode.OK);
                EventSummaryService eventSummary = new EventSummaryService();
                var stream = eventSummary.DownloadMetricReportExcel(metricreport);
                result.Content = new ByteArrayContent(stream.ToArray());
                result.Content.Headers.ContentType = new MediaTypeHeaderValue("application/octet-stream");
                result.Content.Headers.ContentDisposition = new ContentDispositionHeaderValue("attachment")
                {
                    FileName = "MetricsReport.xlsx"
                };

                return result;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to download the Excel Metrics report" + e.Message.ToString(), e);
                return Request.CreateResponse(HttpStatusCode.InternalServerError);
            }

        }

        [HttpPost]
        public HttpResponseMessage DownloadeventSummaryReportExcel(EventDetailsSummary eventdetails)
        {
            try
            {
                HttpResponseMessage result = new HttpResponseMessage(HttpStatusCode.OK);
                EventSummaryService eventSummary = new EventSummaryService();
                var stream = eventSummary.DownloadeventSummaryReportExcel();
                result.Content = new ByteArrayContent(stream.ToArray());
                result.Content.Headers.ContentType = new MediaTypeHeaderValue("application/octet-stream");
                result.Content.Headers.ContentDisposition = new ContentDispositionHeaderValue("attachment")
                {
                    FileName = "EventSummaryReport.xlsx"
                };

                return result;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to download the Event Summary Report" + e.Message.ToString(), e);
                return Request.CreateResponse(HttpStatusCode.InternalServerError);
            }

        }


        [HttpPost]
        public List<participationreport> GetParticipationReportByInput(participationreport metricreport)
        {
            try
            {
                EventSummaryService eventSummary = new EventSummaryService();
                return eventSummary.GetParticipationReportByInput(metricreport);
                
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Get the Metrics report by input" + e.Message.ToString(), e);
                throw;
            }
        }


    }


    public class CommonResponse
    {
        public List<BaseLocations> baseLocations { get; set; }
        public List<BusinessUnits> businessUnits { get; set; }
    }




}
