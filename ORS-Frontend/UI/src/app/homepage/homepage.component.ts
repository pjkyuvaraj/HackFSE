import { Component, OnInit } from '@angular/core';
//import { enableProdMode } from '@angular/core';
import { Login } from '../Shared/login.model';
import { Router } from '@angular/router';
//enableProdMode();

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  Login = new Login();

  constructor(private router: Router) {

     var userName = sessionStorage.getItem('currentUserName');
    // var userRole = localStorage.getItem('currentUserRole')
    //var LoginStatus = localStorage.getItem('currentUserLoginSuccess');
    console.log(userName);
    if (userName != null) {
    }
    else {
      alert("Session Expired.Please login to Continue...");
      this.signoutClick();
      this.router.navigate(['app-login']);
    }
  }

  ngOnInit() {
  }

  signoutClick() {
    sessionStorage.removeItem('currentUserName');
    sessionStorage.removeItem('currentUserRole');
    localStorage.removeItem('currentUserLoginSuccess');
  }

}
