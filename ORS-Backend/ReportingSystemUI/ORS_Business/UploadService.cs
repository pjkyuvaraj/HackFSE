using ORS_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using System.Data.OleDb;
using System.Data;
using System.IO;

namespace ORS_Business
{
    public class UploadService
    {


        public bool UploadVolunteerExcelFile(string fileName)
        {
            UploadRepository uploadRepository = new UploadRepository();
            bool result = false;
            try
            {
                DataTable dataTable = ReadExcelFile(fileName);
                List<AssociateDetails> associateDetails = dataTable.DataTableToList<AssociateDetails>();
                foreach (AssociateDetails details in associateDetails)
                {
                    UserRepository userRepository = new UserRepository();
                    result = userRepository.AddNewUser(details);
                }

            }

            catch (Exception ex)
            {
                result = false;
            }

            return result;
        }

        public bool UploadeventSummaryExcelFile(string fileName)
        {
            UploadRepository uploadRepository = new UploadRepository();
            bool result = false;
            try
            {
                DataTable dataTable = ReadExcelFile(fileName);
                List<EventDetailsSummary> associateDetails = dataTable.DataTableToList<EventDetailsSummary>();
                foreach (EventDetailsSummary details in associateDetails)
                {
                    EventSummaryRepository userRepository = new EventSummaryRepository();
                    result = userRepository.AddNewEvent(details);
                }

            }

            catch (Exception ex)
            {
                result = false;
            }

            return result;
        }




        private DataTable ReadExcelFile(string path)
        {

            using (OleDbConnection conn = new OleDbConnection())
            {
                DataTable dt = new DataTable();
                string Import_FileName = path;
                string fileExtension = Path.GetExtension(Import_FileName);
                if (fileExtension == ".xls")
                    conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Import_FileName + ";" + "Extended Properties='Excel 8.0;HDR=YES;'";
                if (fileExtension == ".xlsx")
                    conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Import_FileName + ";" + "Extended Properties='Excel 12.0 Xml;HDR=YES;'";
                using (OleDbCommand comm = new OleDbCommand())
                {
                    comm.CommandText = "Select * from [Sheet1$]";
                    comm.Connection = conn;
                    using (OleDbDataAdapter da = new OleDbDataAdapter())
                    {
                        da.SelectCommand = comm;
                        da.Fill(dt);
                        return dt;
                    }

                }
            }
        }


        //public void UploadVolunteerExcelFile(string fileName)
        //{
        //    UploadRepository uploadRepository = new UploadRepository();

        //    try
        //    {
        //        using (SpreadsheetDocument spreadsheetDocument = SpreadsheetDocument.Open(fileName, false))
        //        {
        //            WorkbookPart workbookPart = spreadsheetDocument.WorkbookPart;
        //            SharedStringTablePart sstpart = workbookPart.GetPartsOfType<SharedStringTablePart>().First();
        //            SharedStringTable sst = sstpart.SharedStringTable;

        //            WorksheetPart worksheetPart = workbookPart.WorksheetParts.First();
        //            Worksheet sheet = worksheetPart.Worksheet;

        //            var rows = sheet.Descendants<Row>();
        //            int iColumn = 0;
        //            foreach (Row row in rows)
        //            {
        //                if (iColumn++ > 0)
        //                {
        //                    List<Cell> lstCell = row.Elements<Cell>().ToList();
        //                    AssociateDetails associateDetails = new AssociateDetails();
        //                    User_details userDetails = new User_details();

        //                    int ssid;
        //                    if (lstCell[1].DataType == null)
        //                        associateDetails.AssociateID =Convert.ToInt16(lstCell[0].CellValue.Text);
        //                    else
        //                    {
        //                        ssid = int.Parse(lstCell[0].CellValue.Text);
        //                        associateDetails.AssociateID = Convert.ToInt16(sst.ChildElements[ssid].InnerText.Trim());
        //                    }
        //                    if (lstCell[1].DataType == null)
        //                        associateDetails.AssociateName = lstCell[1].CellValue.Text;
        //                    else
        //                    {
        //                        ssid = int.Parse(lstCell[1].CellValue.Text);
        //                        associateDetails.AssociateName = sst.ChildElements[ssid].InnerText.Trim();
        //                    }
        //                    if (lstCell[1].DataType == null)
        //                        associateDetails.Designation = lstCell[2].CellValue.Text;
        //                    else
        //                    {
        //                        ssid = int.Parse(lstCell[1].CellValue.Text);
        //                        associateDetails.Designation = sst.ChildElements[ssid].InnerText.Trim();
        //                    }
        //                    if (lstCell[1].DataType == null)
        //                        associateDetails.Location = lstCell[3].CellValue.Text;
        //                    else
        //                    {
        //                        ssid = int.Parse(lstCell[1].CellValue.Text);
        //                        associateDetails.Location = sst.ChildElements[ssid].InnerText.Trim();
        //                    }
        //                    if (lstCell[1].DataType == null)
        //                        associateDetails.BU = lstCell[4].CellValue.Text;
        //                    else
        //                    {
        //                        ssid = int.Parse(lstCell[1].CellValue.Text);
        //                        associateDetails.BU = sst.ChildElements[ssid].InnerText.Trim();
        //                    }
        //                    UserRepository userRepository = new UserRepository();
        //                    userRepository.AddNewUser(associateDetails);

        //                }
        //            }
        //        }
        //    }

        //    catch (Exception ex)
        //    {
        //        throw new Exception("Invalid Content");
        //    }
        //}

    }
}
