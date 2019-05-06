import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { EngagementMetricsComponent } from './engagement-metrics.component';
import { FormsModule } from '@angular/forms';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import {HttpModule} from "@angular/http";
import { ToastrModule } from 'ngx-toastr';
describe('EngagementMetricsComponent', () => {
  let component: EngagementMetricsComponent;
  let fixture: ComponentFixture<EngagementMetricsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [EngagementMetricsComponent],
      imports:[FormsModule, NgbModule, HttpModule, ToastrModule.forRoot()]
    })
      .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EngagementMetricsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
