export class BaseLocation
{
    BaseLocationID:number;
    BaseLocation:string;
}
export class BusinessUnit
{
    BusinessUnitID:number;
    BusinessUnit:string;
}

export class commonResponse
{
 
    baseLocations:BaseLocation[];
    businessUnits:BusinessUnit[];
}

export class IDParam
{
    id:string;
}


export class ReportFilter
{
    StartDate:any;
    EndDate:any;
    BusinessUnit:any;
    BaseLocation:any;
  

}


export class ParticipationMetric
{

    Totalnoofvolunteers:string;
    BusinessUnit:string;
    BaseLocation:string;
    EventID:string;
    startDate:string;
    endDate:string;
}