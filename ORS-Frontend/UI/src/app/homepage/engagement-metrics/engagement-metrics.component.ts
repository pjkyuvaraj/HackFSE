import { Component, OnInit } from '@angular/core';
import { EngagementMetric } from '../../Shared/Reports.model';
import { Service } from '../../Shared/service';
import { NgForm } from '@angular/forms';
import { DomSanitizer } from '@angular/platform-browser';

import { saveAs as importedSaveAs } from "file-saver";


@Component({
  selector: 'app-engagement-metrics',
  templateUrl: './engagement-metrics.component.html',
  styleUrls: ['./engagement-metrics.component.css']
})

export class EngagementMetricsComponent implements OnInit {

  EngagementMetric: EngagementMetric = new EngagementMetric;
  EngagementMetricList: EngagementMetric[] = null;
  formData: FormData;

  resetForm(form?: NgForm) {
    if (form != null)
      form.reset();
    this.EngagementMetric = {
      Interval: '',
      EmployeeID: '',
      EmployeeName: '',
      Count: ''
    }
    this.formData = null;
  }

  intervalvalues: ['0- 1 Times', '2-5 Times', ' > 5 Times'];

  constructor(public Service: Service) { }

  ngOnInit() {
    this.Service.getData("http://localhost/ORS_api/api/EventInformation/GetEngagementMetrics").subscribe((data: any) => {
      console.log(data);
      this.EngagementMetricList = data;
    });

  }


  onSubmit(form: NgForm) {
    console.log(JSON.stringify(form.value));
    this.Service.postData('http://localhost/ORS_api/api/EventInformation/GetEngagementMetricsbyInput', form.value).subscribe((data: any) => {
      //this.resetForm(form);
      this.EngagementMetricList = data;

    });

  }

  onChange(id : string) {
    console.log(JSON.stringify(id));
    var Metric: EngagementMetric=new EngagementMetric();
    Metric.Interval = id;
    this.Service.postData('http://localhost/ORS_api/api/EventInformation/GetEngagementMetricsbyInput', Metric).subscribe((data: any) => {
      //this.resetForm(form);
      this.EngagementMetricList = data;

    });
  }

  onDownload(form: NgForm) {
    console.log(JSON.stringify(form.value));
    this.Service.downloadFile('http://localhost/ORS_api/api/EventInformation/DownloadengagementMetricReportExcel', form.value).subscribe((data: any) => {
       //this.resetForm(form);
      console.log(data);
      var blob = new Blob([data], { type: 'application/octet-stream' });
      importedSaveAs(blob, "Report.xlsx");
    });
  }

}
