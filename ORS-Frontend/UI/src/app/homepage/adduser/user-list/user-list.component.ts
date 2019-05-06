import { Component, OnInit } from '@angular/core';
import {Service} from '../../../Shared/service';
import {ToastrService} from 'ngx-toastr';
import { Observable } from 'rxjs/Observable';
import{User} from '../shared/user.model'
import {UserService} from  '../shared/user.model';
import {IDParam} from '../../../Shared/Common.model';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrls: ['./user-list.component.css']
})
export class UserListComponent implements OnInit {

  EmployeeID:number
  
  constructor( public service : Service, public userService : UserService, private toastr : ToastrService) { }

  ngOnInit() {
   
    this.service.getData("http://localhost/ORS_api/api/user/GetAllUserDetails").subscribe((data:User[])=>{
      this.userService.userList = data;
    });
  }

  showForEdit(emp: User) {
     this.userService.selectedUser = Object.assign({}, emp);
  }

  onDelete(id: number) {
    if (confirm('Are you sure to delete this user?') == true) {
      var idParam:IDParam = new IDParam();
      idParam.id = id.toString() ;
      this.service.postData(`http://localhost/ORS_api/api/user/DeleteUser/${id}`,idParam).subscribe((data:User[])=>{
        this.userService.userList = data;
        this.toastr.warning("Deleted Successfully","User Register");
      });
    }

  }

}
