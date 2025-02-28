//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ORS_Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class EventSummary
    {
        public int ID { get; set; }
        public string EventID { get; set; }
        public string Month { get; set; }
        public string BaseLocation { get; set; }
        public string BeneficiaryName { get; set; }
        public string VenueAddress { get; set; }
        public string CouncilName { get; set; }
        public string Project { get; set; }
        public string Category { get; set; }
        public string EventName { get; set; }
        public string EventDescription { get; set; }
        public Nullable<System.DateTime> EventDate { get; set; }
        public Nullable<double> TotalNoOfVolunteers { get; set; }
        public Nullable<double> TotalVolunteerHours { get; set; }
        public Nullable<double> TotalTravelHours { get; set; }
        public Nullable<double> OverallVolunteeringHours { get; set; }
        public Nullable<double> LivesImpacted { get; set; }
        public Nullable<double> ActivityType { get; set; }
        public string Status { get; set; }
        public string POCID { get; set; }
        public string POCName { get; set; }
        public string POCContact_Number { get; set; }
        public Nullable<bool> IsProcessed { get; set; }
    }
}
