import { Component, OnInit ,ViewChild} from '@angular/core';
import {MatPaginator, MatTableDataSource} from '@angular/material';
import {NgForm} from '@angular/forms';
import {NgbTypeahead} from '@ng-bootstrap/ng-bootstrap';
import {ToastrService} from 'ngx-toastr';
import {Observable, Subject, merge} from 'rxjs';
import {debounceTime, distinctUntilChanged, filter, map} from 'rxjs/operators';

import {EventData,ResponseEmailDetails,lstRemainderEmail,RemainderEmailDetails,} from './email.model';
import {Service} from '../../Shared/service';
const VolunteerType: {name: string, type : number}[] = 
[
  {'name':'participant','type':0},
  {'name':'Registered','type':1},
  {'name':'UnRegistered','type':2},
  {'name':'All','type':-1}

];

@Component({
  selector: 'app-email',
  templateUrl: './email.component.html',
  styleUrls: ['./email.component.css']
})
export class EmailComponent implements OnInit {
 model;
 model1;
 volunteermodel:any;
 typemodel:any;
 respondEmailList:ResponseEmailDetails[] = [];

 @ViewChild('instance') instance: NgbTypeahead;
 focus$ = new Subject<string>();
 click$ = new Subject<string>();
 @ViewChild('instance') volunteerinstance: NgbTypeahead;
 focusvolunteer$ = new Subject<string>();
 clickvolunteer$ = new Subject<string>();

 @ViewChild('instance') typeinstance: NgbTypeahead;
 focustype$ = new Subject<string>();
 clicktype$ = new Subject<string>();

 displayedColumns: string[] = ['EmployeeID', 'EmployeeName', 'EmailID','EventName'];

@ViewChild('scheduledOrdersPaginator') paginator: MatPaginator;
eventList:EventData[] = [];
 lstremainderEmail: lstRemainderEmail = new lstRemainderEmail();
 remainderEmailList:RemainderEmailDetails= new RemainderEmailDetails();

 
 dataSource:  MatTableDataSource<RemainderEmailDetails>;
 respondDataSource:  MatTableDataSource<ResponseEmailDetails>;

constructor(private service:Service) { }

  ngOnInit() {

    this.service.getData('http://localhost/FMS_Api/api/common/GetAllEventList').subscribe((data:any)=>{
   
      this.eventList = data;
      
    });

    this.service.getData('http://localhost/FMS_Api/api/Email/GetResponseEmail').subscribe((data:any)=>{
      console.log(data);
        this.respondEmailList=data;
      });

  }
  search = (text$: Observable<string>) => {
    const debouncedText$ = text$.pipe(debounceTime(200), distinctUntilChanged());
    const clicksWithClosedPopup$ = this.click$.pipe(filter(() => !this.instance.isPopupOpen()));
    const inputFocus$ = this.focus$;

    return merge(debouncedText$, inputFocus$, clicksWithClosedPopup$).pipe(
      map(term => (term === '' ? this.eventList
      :this.eventList.filter(v => v.EventName.toLowerCase().indexOf(term.toLowerCase()) > -1).slice(0, 10)))
       
    );
  }
  formatter = (x: {EventName: string}) => x.EventName;

  volunteerSearch= (text$: Observable<string>) => {
    const debouncedText$ = text$.pipe(debounceTime(200), distinctUntilChanged());
    const clicksWithClosedPopup$ = this.clickvolunteer$.pipe(filter(() => !this.instance.isPopupOpen()));
    const inputFocusvolunteer$ = this.focusvolunteer$;
    return merge(debouncedText$, inputFocusvolunteer$, clicksWithClosedPopup$).pipe(
      map(term => (term === '' ? VolunteerType
      :VolunteerType.filter(v => v.name.toLowerCase().indexOf(term.toLowerCase()) > -1).slice(0, 10)))
    );
  }
  volunteerformatter=(x:{ name: string}) => x.name;
  typeSearch= (text$: Observable<string>) => {
    const debouncedText$ = text$.pipe(debounceTime(200), distinctUntilChanged());
    const clicksWithClosedPopup$ = this.clicktype$.pipe(filter(() => !this.instance.isPopupOpen()));
    const inputFocustype$ = this.focustype$;
    return merge(debouncedText$, inputFocustype$, clicksWithClosedPopup$).pipe(
      map(term => (term === '' ? VolunteerType
      :VolunteerType.filter(v => v.name.toLowerCase().indexOf(term.toLowerCase()) > -1).slice(0, 10)))
    );
  }
  typeformatter=(x:{ name: string}) => x.name;
  onSubmitRemainder(form: NgForm) {
    console.log(form.value);
    this.service.postData('http://localhost/FMS_Api/api/Email/GetRemainderEmail',form.value).subscribe((data:RemainderEmailDetails[])=>{
        this.lstremainderEmail.remainderEmailList=data;
        console.log(this.lstremainderEmail.remainderEmailList);
        this.dataSource = new MatTableDataSource<RemainderEmailDetails>(this.lstremainderEmail.remainderEmailList);
        this.dataSource.paginator = this.paginator;
        console.log(this.dataSource);
        
      });
    
  }

  onSubmitResponse(form: NgForm) {
    console.log(form.value);
    this.service.postData('http://localhost/FMS_Api/api/Email/GetResponseEmail',form.value).subscribe((data:any)=>{
      console.log(data);
        this.respondEmailList=data;
      });
  }

  
}



