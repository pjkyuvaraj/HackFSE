using OfficeOpenXml;
using ORS_Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ORS_Business
{
    public class EventInformationService
    {

        public List<EngagementMetric> GetEngagementMetrics(EngagementMetric metricreport)
        {
            EventInformationRepository eventSummaryRepository = new EventInformationRepository();
            return eventSummaryRepository.GetEngagementMetrics(metricreport);


        }

        public MemoryStream DownloadengagementMetricReportExcel(EngagementMetric metricreport)
        {
            try
            {
                List<EngagementMetric> result = new List<EngagementMetric>();
                EventInformationRepository eventSummaryRepository = new EventInformationRepository();
                result = eventSummaryRepository.GetEngagementMetrics(metricreport);

                List<string[]> Header = new List<string[]>()            {
                new string[] { "EventInterval", "EmployeeID", "EmployeeName", "Count" }
                };

                List<string[]> reportValues = new List<string[]>();
                foreach (EngagementMetric rpt in result)
                {
                    reportValues.Add(new string[] { rpt.Interval, rpt.EmployeeID, rpt.EmployeeName, rpt.Count });
                }


                using (ExcelPackage excel = new ExcelPackage())
                {
                    string headerRange = "A1:" + Char.ConvertFromUtf32(Header[0].Length + 64) + "1";
                    var worksheet = excel.Workbook.Worksheets.Add("Report");
                    worksheet.Cells[headerRange].LoadFromArrays(Header);
                    worksheet.Cells[2, 1].LoadFromArrays(reportValues);

                    var stream = new MemoryStream();
                    excel.SaveAs(stream);
                    return stream;
                }

            }
            catch (Exception e)
            {
                return new MemoryStream();
            }

        }



    }
}
