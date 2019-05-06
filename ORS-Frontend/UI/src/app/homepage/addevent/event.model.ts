import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})


export class Event {
  EventID:string;
  EventName : string;
  EventDate:string;
  EventDescription:string;
  Status:string;
  BaseLocation:string;
  BeneficiaryName:string;
  Project:string;
  Category:string;
  VenueAddress:string;
  TotalVolunteers:number;
  TotalVolunteerHours:number;
  TotalTravelHours:number;
  OverallVolunteerHours:number;
  LivesImpacted:number;
}
