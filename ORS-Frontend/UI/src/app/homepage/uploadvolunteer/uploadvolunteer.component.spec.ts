import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UploadvolunteerComponent } from './uploadvolunteer.component';

describe('UploadvolunteerComponent', () => {
  let component: UploadvolunteerComponent;
  let fixture: ComponentFixture<UploadvolunteerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UploadvolunteerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UploadvolunteerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
