
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
    public class EventSummaryService
    {

        public List<EventDetailsSummary> GetEventDetailsSummaryList()
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.GetEventDetailsSummaryList();
        }


        public bool AddNewEvent(EventDetailsSummary eventDetails)
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.AddNewEvent(eventDetails);

        }

        public bool DeleteEvent(string id)
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.DeleteEvent(id);

        }

        public List<BaseLocations> GetBaseLocations()
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.GetBaseLocations();
        }


        public List<BusinessUnits> GetBusinessUnits()
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.GetBusinessUnits();
        }


        public List<metricreport> GetMetricReportByInput(metricreport metricreport)
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.GetMetricReportByInput(metricreport);


        }

        public List<participationreport> GetParticipationReportByInput(participationreport participationreport)
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.GetParticipationReportByInput(participationreport);


        }


        public List<metricreport> DownloadMetricReport(metricreport metricreport)
        {
            EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
            return eventSummaryRepository.GetMetricReportByInput(metricreport);


        }


        public MemoryStream DownloadMetricReportExcel(metricreport metricreport)
        {
            try
            {
                List<metricreport> result = new List<metricreport>();
                EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
                result = eventSummaryRepository.GetMetricReportByInput(metricreport);

                List<string[]> Header = new List<string[]>()            {
                new string[] { "EventInterval", "Total_no#_of_volunteers", "Total_Volunteer_Hours", "Total Travel Hours", "Overall Volunteering Hours"}
                };

                List<string[]> reportValues = new List<string[]>();
                foreach (metricreport rpt in result)
                {
                    reportValues.Add(new string[] { rpt.eventInterval, rpt.Totalnoofvolunteers, rpt.TotalVolunteerHours, rpt.TotalTravelHours, rpt.OverallVolunteeringHours });
                }


                using (ExcelPackage excel = new ExcelPackage())
                {
                    string headerRange = "A1:" + Char.ConvertFromUtf32(Header[0].Length + 64) + "1";
                    var worksheet = excel.Workbook.Worksheets.Add("Report");
                    worksheet.Cells[headerRange].LoadFromArrays(Header);
                    worksheet.Cells[2, 1].LoadFromArrays(reportValues);

                    var stream = new MemoryStream();
                    excel.SaveAs(stream);
                    //FileInfo file = new FileInfo(@"C:/UploadFile/AssociateDetails1.xlsx");
                    //excel.SaveAs(file);
                    return stream;
                }

            }
            catch (Exception e)
            {
                return new MemoryStream();
            }

        }




        public MemoryStream DownloadeventSummaryReportExcel()
        {
            try
            {
                List<EventDetailsSummary> result = new List<EventDetailsSummary>();
                EventSummaryRepository eventSummaryRepository = new EventSummaryRepository();
                result = eventSummaryRepository.GetEventDetailsSummaryList();

                List<string[]> Header = new List<string[]>()            {
                new string[] { "EventID", "EventName", "EventDate", "BaseLocation", "Status"}
                };

                List<string[]> reportValues = new List<string[]>();
                foreach (EventDetailsSummary rpt in result)
                {
                    reportValues.Add(new string[] { rpt.EventID, rpt.EventName, (rpt.EventDate != null) ? rpt.EventDate.ToString() : "", rpt.BaseLocation, rpt.Status });
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
