import { Component, OnInit } from '@angular/core';
import { Service } from '../../Shared/service';
import { NgForm } from '@angular/forms';
import { Event } from './event.model'
import { NgbTypeahead } from '@ng-bootstrap/ng-bootstrap';
import { Observable, Subject, merge } from 'rxjs';
import { debounceTime, distinctUntilChanged, filter, map } from 'rxjs/operators';
import { saveAs as importedSaveAs } from "file-saver";

@Component({
  selector: 'app-addevent',
  templateUrl: './addevent.component.html',
  styleUrls: ['./addevent.component.css']
})
export class AddeventComponent implements OnInit {

  formData: FormData;
  //eventService :EventService
  EventList: Event[];
  eventData: Event;
  constructor(private Service: Service) {
    this.eventData = new Event();
  }

  resetForm(form?: NgForm) {
    if (form != null)
      form.reset();
    this.eventData = {
      EventID: '',
      EventName: '',
      EventDate: '',
      EventDescription: '',
      Status: '0',
      BaseLocation: '',
      BeneficiaryName: '',
      Project: '',
      Category: '',
      VenueAddress: '',
      TotalVolunteers: 0,
      TotalVolunteerHours: 0,
      TotalTravelHours: 0,
      OverallVolunteerHours: 0,
      LivesImpacted: 0
    }
    this.formData = null;
  }


  ngOnInit() {

    this.getEventList();
  }
  onSubmit(form: NgForm) {

    this.Service.postData('http://localhost/ORS_api/api/EventSummary/AddNewEvent', form.value).subscribe((data: Event[]) => {
      this.resetForm(form);
      this.EventList = data;
      this.getEventList();
    });

  }

  getEventList() {

    this.Service.getData("http://localhost/ORS_api/api/EventSummary/GetEventDetailsSummaryList").subscribe((data: Event[]) => {
      console.log(data);
      this.EventList = data;
    });
  }

  onDelete(id: string) {
    if (confirm('Are you sure to delete this Event?') == true) {
      this.Service.postData(`http://localhost/ORS_api/api/EventSummary/DeleteEvent/${id}`, id).subscribe((data: any) => {
        this.getEventList();

      });
    }
  }

  onUpload(form: NgForm) {
    console.log(form.value);

    this.Service.uploadFile('http://localhost/ORS_api/api/Upload/UploadeventSummaryExcelFile', form.value.FilePath).subscribe((data: any) => {
      this.resetForm(form);
      this.getEventList();
    });
  }

  onFileChange(event) {
    let fileList: FileList = event.target.files;
    if (fileList.length > 0) {
      let file: File = fileList[0];
      this.formData = new FormData();
      this.formData.append('uploadFile', file, file.name);
    }
  }
  onDownload(form: NgForm) {
    //console.log(JSON.stringify(form.value));
    this.Service.downloadFile('http://localhost/ORS_api/api/EventSummary/DownloadeventSummaryReportExcel', "").subscribe((data: any) => {
      //this.resetForm(form);
      console.log(data);
      var blob = new Blob([data], { type: 'application/octet-stream' });
      importedSaveAs(blob, "Report.xlsx");
    });
  }

}

