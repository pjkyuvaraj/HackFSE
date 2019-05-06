import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GenericMetricsReportComponent } from './generic-metrics-report.component';
import { FormsModule } from '@angular/forms';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import {HttpModule} from "@angular/http";
import { ToastrModule } from 'ngx-toastr';

describe('GenericMetricsReportComponent', () => {
  let component: GenericMetricsReportComponent;
  let fixture: ComponentFixture<GenericMetricsReportComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GenericMetricsReportComponent],
      imports:[FormsModule, NgbModule, HttpModule, ToastrModule.forRoot()]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GenericMetricsReportComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
