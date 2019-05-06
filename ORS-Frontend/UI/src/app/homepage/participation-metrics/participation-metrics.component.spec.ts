import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ParticipationMetricsComponent } from './participation-metrics.component';
import { FormsModule } from '@angular/forms';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import {HttpModule} from "@angular/http";
import { ToastrModule } from 'ngx-toastr';

describe('ParticipationMetricsComponent', () => {
  let component: ParticipationMetricsComponent;
  let fixture: ComponentFixture<ParticipationMetricsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ParticipationMetricsComponent ],
      imports:[FormsModule, NgbModule, HttpModule, ToastrModule.forRoot()]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ParticipationMetricsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
