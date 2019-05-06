import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { Login } from '../Shared/login.model';
import { Service } from '../Shared/service';

@Component({
  selector: 'app-userlogin',
  templateUrl: './userlogin.component.html',
  styleUrls: ['./userlogin.component.css']
})
export class UserloginComponent implements OnInit {
  formdata;
  login = new Login();

  constructor(private router: Router, private service: Service) {
    this.login.errorMsg = "";
  }


  ngOnInit() {
    var userInfo = sessionStorage.getItem('currentUserName');
    if (userInfo == null) {
    }
    else {
      this.router.navigate(['app-homepage']);
    }

  }

  passwordvalidation(formcontrol) {
    if (formcontrol.value.length < 5) {
      return { "passwd": true };
    }
  }

  onClickSubmit(form: NgForm) {
    
    this.service.postData('http://localhost/ORS_api/api/Login/Login', form.value).subscribe((data: Login) => {
      this.login = data;
      console.log(this.login.UserName);
      if (this.login.UserName != null) {
        this.login.errorMsg = "";
        this.login.LoginSuccess = true;
        console.log(JSON.stringify(this.login.UserName));
        this.router.navigate(['app-homepage'])
        sessionStorage.setItem('currentUserName', JSON.stringify(this.login.UserName));
        sessionStorage.setItem('currentUserRole', JSON.stringify(this.login.UserRole));
        sessionStorage.setItem('currentUserLoginSuccess', JSON.stringify(this.login.LoginSuccess));
      } else {
        this.login.errorMsg = "Username, password or combination of both is invalid.";
        this.login.LoginSuccess = false;
        return false;
      }
    });
  }

}