import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddeventComponent } from './addevent.component';
import { HttpModule } from "@angular/http";
import { FormsModule } from '@angular/forms'
import { NO_ERRORS_SCHEMA } from '@angular/core';

describe('AddeventComponent', () => {
  let component: AddeventComponent;
  let fixture: ComponentFixture<AddeventComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      imports: [HttpModule, FormsModule],
      declarations: [AddeventComponent],
      schemas: [NO_ERRORS_SCHEMA]
      
    })
      .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddeventComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
