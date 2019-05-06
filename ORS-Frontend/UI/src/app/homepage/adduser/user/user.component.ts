import { Component, OnInit, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';

import { UserService, User } from '.././shared/user.model';
import { ToastrService } from 'ngx-toastr';
import { Service } from '../../../Shared/service';

import { NgbTypeahead } from '@ng-bootstrap/ng-bootstrap';
import { Observable, Subject, merge } from 'rxjs';
import { debounceTime, distinctUntilChanged, filter, map } from 'rxjs/operators';


@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {

  formData: FormData;
  fileName: string;
  @ViewChild('instance') instance: NgbTypeahead;

  constructor(private toastr: ToastrService, private userService: UserService, private service: Service) { }

  ngOnInit() {
    this.resetForm();
  }

  resetForm(form?: NgForm) {
    if (form != null)
      form.reset();
    this.userService.selectedUser = {
      ID: 0,
      AssociateID: 0,
      AssociateName: '',
      Designation: '',
      Location:'',
      BU: '',
      IsAdmin:0
      
    }

    this.formData = null;
    this.fileName = '';
  }

  onSubmit(form: NgForm) {
    this.service.postData('http://localhost/ORS_api/api/user/AddNewuser', form.value).subscribe((data: User[]) => {
      this.resetForm(form);
      this.userService.userList = data;
      this.toastr.success('New Record Added Successfully', 'Employee Register');
      this.getUserDetailsList();
    });
  }

  getUserDetailsList() {
    this.service.getData("http://localhost/ORS_api/api/user/GetAllUserDetails").subscribe((data: User[]) => {
      this.userService.userList = data;
    });
  }

  onUpload(form: NgForm) {
    console.log(form.value);

    this.service.uploadFile('http://localhost/ORS_api/api/Upload/UploadVolunteerExcelFile', form.value.FilePath).subscribe((data: any) => {
      this.resetForm(form);
      this.getUserDetailsList(); 
    });
  }

  onFileChange(event) {
    let fileList: FileList = event.target.files;
    if (fileList.length > 0) {
      let file: File = fileList[0];
      this.formData = new FormData();
      this.formData.append('uploadFile', file, file.name);
    }
  }

}
