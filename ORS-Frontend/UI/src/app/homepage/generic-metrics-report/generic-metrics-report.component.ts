import { Component, OnInit, ViewChild } from '@angular/core';
import { GenericMetric, GenericMetricInput } from '../../Shared/GenericMetric.model';
import { NgForm } from '@angular/forms';
import { Service } from '../../Shared/service';
import { DomSanitizer } from '@angular/platform-browser';

import { saveAs as importedSaveAs } from "file-saver";


@Component({
  selector: 'app-generic-metrics-report',
  templateUrl: './generic-metrics-report.component.html',
  styleUrls: ['./generic-metrics-report.component.css']
})
export class GenericMetricsReportComponent implements OnInit {

  GenericMetricInput: GenericMetricInput = new GenericMetricInput;
  GenericMetricList: GenericMetric[] = null;
  GenericMetric: GenericMetric;
  formData: FormData;

  constructor(public Service: Service) { }

  resetForm(form?: NgForm) {
    if (form != null)
      form.reset();
    this.GenericMetricInput = {
      eventInterval: '',
      startDate: '',
      endDate: ''
    }
    this.formData = null;
  }
  ngOnInit() {
    this.getGenericMetricReport();
  }

  onSubmit(form: NgForm) {
    console.log(JSON.stringify(form.value));
    this.Service.postData('http://localhost/ORS_api/api/EventSummary/GetMetricReportByInput', form.value).subscribe((data: any) => {
      //this.resetForm(form);
      this.GenericMetricList = data;

    });

  }

  getGenericMetricReport() {
    this.Service.getData("http://localhost/ORS_api/api/EventSummary/Getmetricreport").subscribe((data: any) => {
      console.log(data);
      this.GenericMetricList = data;
    });

  }

  onDownload(form: NgForm) {
    console.log(JSON.stringify(form.value));
    this.Service.downloadFile('http://localhost/ORS_api/api/EventSummary/DownloadMetricReportExcel', form.value).subscribe((data: any) => {
       //this.resetForm(form);
      console.log(data);
      var blob = new Blob([data], { type: 'application/octet-stream' });
      importedSaveAs(blob, "Report.xlsx");
    });
  }


}
