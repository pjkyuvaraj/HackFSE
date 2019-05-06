import { Component, OnInit, ViewChild } from '@angular/core';
import { commonResponse, ReportFilter,ParticipationMetric } from '../../Shared/Common.model';
import { Service } from '../../Shared/service';
import { Observable, Subject, merge } from 'rxjs';
import { debounceTime, distinctUntilChanged, map, filter } from 'rxjs/operators';
import { NgbTypeahead } from '@ng-bootstrap/ng-bootstrap';
import { NgForm } from '@angular/forms';


@Component({
  selector: 'app-participation-metrics',
  templateUrl: './participation-metrics.component.html',
  styleUrls: ['./participation-metrics.component.css']
})
export class ParticipationMetricsComponent implements OnInit {

  constructor(private Service: Service) { }
  CommonDataList: commonResponse = new commonResponse();
  modelBusinessUnit: any;
  modelBaseLocation: any;
  startDate: any;
  endDate: any;
  ParticipationMetricList:ParticipationMetric[];

  @ViewChild('instance') instanceBaseLocation: NgbTypeahead;
  focusBaseLocation$ = new Subject<string>();
  clickBaseLocation$ = new Subject<string>();


  @ViewChild('instance') instanceBusinessUnit: NgbTypeahead;
  focusBusinessUnit$ = new Subject<string>();
  clickBusinessUnit$ = new Subject<string>();



  ngOnInit() {

    this.Service.getData("http://localhost/ORS_api/api/EventSummary/GetAllMasterValues").subscribe((data: any) => {
     // console.log(data);
      this.CommonDataList = data;
    });

  }


  BaseLocationSearch = (text$: Observable<string>) => {
    const debouncedText$ = text$.pipe(debounceTime(200), distinctUntilChanged());
    const clicksWithClosedPopup$ = this.clickBaseLocation$.pipe(filter(() => !this.instanceBaseLocation.isPopupOpen()));
    const inputFocusBaseLocation$ = this.focusBaseLocation$;
    return merge(debouncedText$, inputFocusBaseLocation$, clicksWithClosedPopup$).pipe(
      map(term => (term === '' ? this.CommonDataList.baseLocations
        : this.CommonDataList.baseLocations.filter(v => v.BaseLocation.toLowerCase().indexOf(term.toLowerCase()) > -1).slice(0, 10)))
    );
  }
  BaseLocationformatter = (x: { BaseLocation: string }) => x.BaseLocation;

  BusinessUnitSearch = (text$: Observable<string>) => {
    const debouncedText$ = text$.pipe(debounceTime(200), distinctUntilChanged());
    const clicksWithClosedPopup$ = this.clickBusinessUnit$.pipe(filter(() => !this.instanceBusinessUnit.isPopupOpen()));
    const inputFocusBusinessUnit$ = this.focusBusinessUnit$;
    return merge(debouncedText$, inputFocusBusinessUnit$, clicksWithClosedPopup$).pipe(
      map(term => (term === '' ? this.CommonDataList.businessUnits
        : this.CommonDataList.businessUnits.filter(v => v.BusinessUnit.toLowerCase().indexOf(term.toLowerCase()) > -1).slice(0, 10)))
    );
  }
  BusinessUnitformatter = (x: { BusinessUnit: string }) => x.BusinessUnit;

  onSubmit(form: NgForm) {

    var FilterData: ReportFilter = new ReportFilter();
    FilterData.StartDate = this.startDate;
    FilterData.EndDate = this.endDate;
    FilterData.BusinessUnit = this.modelBusinessUnit.BusinessUnit;
    FilterData.BaseLocation = this.modelBaseLocation.BaseLocation;
    console.log(FilterData);
    this.Service.postData("http://localhost/ORS_api/api/EventSummary/GetParticipationReportByInput", FilterData).subscribe((data: any) => {
    console.log(data);  
    this.ParticipationMetricList = data;

    });
  }

}
