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
    public class EventInformationController : ApiController
    {

        ILog log = LogManager.GetLogger(typeof(EventInformationController));

        [HttpGet]
        public List<EngagementMetric> GetEngagementMetrics()
        {
            try
            {
                EngagementMetric report = new EngagementMetric();
                EventInformationService eventInfo = new EventInformationService();
                return eventInfo.GetEngagementMetrics(report);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the Engagement Metrics" + e.Message.ToString(), e);
                throw;
            }
            
        }

        [HttpPost]
        public List<EngagementMetric> GetEngagementMetricsbyInput(EngagementMetric engagementMetric)
        {
            try
            {
                EventInformationService eventInfo = new EventInformationService();
                return eventInfo.GetEngagementMetrics(engagementMetric);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the Engagement Metrics by input" + e.Message.ToString(), e);
                throw;
            }
            
        }


        [HttpPost]
        public HttpResponseMessage DownloadengagementMetricReportExcel(EngagementMetric engagementMetric)
        {
            try
            {
                HttpResponseMessage result = new HttpResponseMessage(HttpStatusCode.OK);
                EventInformationService eventInfo = new EventInformationService();
                var stream = eventInfo.DownloadengagementMetricReportExcel(engagementMetric); 
                result.Content = new ByteArrayContent(stream.ToArray());
                result.Content.Headers.ContentType = new MediaTypeHeaderValue("application/octet-stream");
                result.Content.Headers.ContentDisposition = new ContentDispositionHeaderValue("attachment")
                {
                    FileName = "CertificationCard.xlsx"
                };

                return result;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to download the Excel Engagement Metrics report" + e.Message.ToString(), e);
                return Request.CreateResponse(HttpStatusCode.InternalServerError);
            }

        }



    }
}
