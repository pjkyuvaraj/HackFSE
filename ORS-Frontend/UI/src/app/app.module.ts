import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms'
import { ReactiveFormsModule } from '@angular/forms';

import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatTableModule } from '@angular/material';
import { MatPaginatorModule } from '@angular/material';
import { MatButtonModule } from '@angular/material/button';
import { ToastrModule } from 'ngx-toastr';

import { HttpModule } from "@angular/http";
import { MatInputModule, MatNativeDateModule } from '@angular/material';



import { NgbTypeahead } from '@ng-bootstrap/ng-bootstrap';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';


import { RouterModule, Routes } from '@angular/router';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { UserloginComponent } from './userlogin/userlogin.component';
import { HomepageComponent } from './homepage/homepage.component';
import { AdduserComponent } from './homepage/adduser/adduser.component';
import { DashboardComponent } from './homepage/dashboard/dashboard.component';
import { UserComponent } from './homepage/adduser/user/user.component';
import { UserListComponent } from './homepage/adduser/user-list/user-list.component';
import { UploadvolunteerComponent } from './homepage/uploadvolunteer/uploadvolunteer.component';
import { EmailComponent } from './homepage/email/email.component';
import { AddeventComponent } from './homepage/addevent/addevent.component';
import { GenericMetricsReportComponent } from './homepage/generic-metrics-report/generic-metrics-report.component';
import { EngagementMetricsComponent } from './homepage/engagement-metrics/engagement-metrics.component';
import { ParticipationMetricsComponent } from './homepage/participation-metrics/participation-metrics.component';


const appRoutes: Routes = [
  {
    path: '',
    component: UserloginComponent
  },
  {
    path: 'app-login',
    component: UserloginComponent
  },
  {
    path: 'app-homepage',
    component: HomepageComponent,
    children: [
      { path: '', component: DashboardComponent },
      { path: 'dashboard', component: DashboardComponent },
      { path: 'adduser', component: AdduserComponent },
      { path: 'email', component: EmailComponent },
      { path: 'uploadvolunteer', component: UploadvolunteerComponent },
      { path: 'AddEvent', component: AddeventComponent },
      { path: 'GenericMetrics', component: GenericMetricsReportComponent },
      { path: 'EngagementMetrics', component: EngagementMetricsComponent },
      { path: 'ParticipationMetrics', component: ParticipationMetricsComponent },

    ]
  }

];

@NgModule({
  declarations: [
    AppComponent,
    UserloginComponent,
    HomepageComponent,
    AdduserComponent,
    DashboardComponent,
    UserComponent,
    UserListComponent,
    EmailComponent,
    UploadvolunteerComponent,
    AddeventComponent,
    GenericMetricsReportComponent,
    EngagementMetricsComponent,
    ParticipationMetricsComponent

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    RouterModule.forRoot(appRoutes),
    ReactiveFormsModule,
    BrowserAnimationsModule,
    HttpModule,
    MatTableModule,
    MatInputModule,
    FormsModule,
    ToastrModule.forRoot(),
    NgbModule,
    MatPaginatorModule,
    MatButtonModule

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }