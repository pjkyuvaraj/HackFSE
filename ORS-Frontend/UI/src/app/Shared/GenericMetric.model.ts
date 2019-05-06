export class GenericMetricInput
{
    eventInterval:String;   //Date - 0, Day - 1, WeekDay - 2, WeekEnd-3, Month - 4.
    startDate:any;
    endDate:any;

}

export class GenericMetric
{

    Totalnoofvolunteers:string;
    TotalVolunteerHours:string;
    TotalTravelHours:string;
    OverallVolunteeringHours:string;
    eventInterval:String;   //Date - 0, Day - 1, WeekDay - 2, WeekEnd-3, Month - 4.
    startDate:string;
    endDate:string;
}