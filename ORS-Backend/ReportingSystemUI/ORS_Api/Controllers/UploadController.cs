using ORS_Business;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using log4net;

namespace ORS_Api.Controllers
{
    public class UploadController : ApiController
    {

        ILog log = LogManager.GetLogger(typeof(UploadController));        
        [HttpPost]
        public void UploadVolunteerExcelFile(HttpRequestMessage request)
        {
            try
            {
                string filePath = ProcessInputFile(request);
                UploadService uploadservice = new UploadService();
                uploadservice.UploadVolunteerExcelFile(filePath);
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Upload Volunteer Excel File" + e.Message.ToString(), e);
                throw;
            }

        }


        [HttpPost]
        public void UploadeventSummaryExcelFile(HttpRequestMessage request)
        {
            try
            {
                string filePath = ProcessInputFile(request);
                UploadService uploadservice = new UploadService();
                uploadservice.UploadeventSummaryExcelFile(filePath);

            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Upload Event Summary Excel File" + e.Message.ToString(), e);
                throw;
            }

        }

        private string ProcessInputFile(HttpRequestMessage request)
        {

            var fileName = string.Empty;
            try
            {
                HttpResponseMessage response = new HttpResponseMessage();
                var abc = Request.Properties.Values;
                var httpRequest = HttpContext.Current.Request;
                if (httpRequest.Files.Count > 0)
                {
                    var postedFile = httpRequest.Files[0];
                    var filePath = @"C:/UploadFile/";

                    if (!Directory.Exists(filePath))
                        Directory.CreateDirectory(filePath);

                    fileName = filePath + postedFile.FileName;
                    postedFile.SaveAs(fileName);

                }
                return fileName;
            }
            catch (Exception e)
            {
                log.Error("Error Message: Unable to Process Input File" + e.Message.ToString(), e);                
                return string.Empty;
            }
        }
    }
}
