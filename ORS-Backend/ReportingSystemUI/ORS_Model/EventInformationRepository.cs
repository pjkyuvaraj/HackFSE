using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;

namespace ORS_Model
{
    public class EventInformationRepository
    {

        ReportingSystemDBEntities entity = new ReportingSystemDBEntities();
        ILog log = LogManager.GetLogger(typeof(EventInformationRepository));

        public List<EngagementMetric> GetEngagementMetrics(EngagementMetric metricreport)
        {
            try
            {
                int interval = Convert.ToInt16(metricreport.Interval ?? "0");

                var results = entity.spEngagementMetrics(interval).ToList();
                List<EngagementMetric> EngagementMetrics = new List<EngagementMetric>();
                foreach (EngagementMetricReport evt in results)
                {
                    EngagementMetric rpt = new EngagementMetric();
                    rpt.EmployeeID = evt.EmployeeID.ToString();
                    rpt.EmployeeName = evt.EmployeeName.ToString();
                    rpt.Count = evt.Count.ToString();
                    rpt.Interval = metricreport.Interval;
                    EngagementMetrics.Add(rpt);
                }
                return EngagementMetrics;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to get the Engagement Metrics" + e.Message.ToString(), e);
                throw;
            }           

        }


    }

    public class EngagementMetric
    {
        public string Interval { get; set; }
        public string EmployeeID { get; set; }
        public string EmployeeName { get; set; }
        public string Count { get; set; }


    }



}
