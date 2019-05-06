
export class EventData
{
    EventID:string;
    EventName:string;
}

export class ResponseEmailDetails
{
    EmployeeName:string ;
    EventDate: Date ;
    FeedBack :string
}

export class lstRemainderEmail
{
    remainderEmailList:RemainderEmailDetails[];
}
export class RemainderEmailDetails
{
    EmployeeID :number;
    EmployeeName:string ;
    EventName :string;
    EmailAddress:string;
}