import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  selectedUser: User;
  userList: User[];
}

export class User {
  ID : number;
  AssociateID: number;
  AssociateName: string;
  Designation: string;
  Location: string;
  BU: string;
  IsAdmin:number;
}
