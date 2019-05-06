import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions, RequestMethod,ResponseContentType } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';

@Injectable({
  providedIn: 'root'
})

export class Service {
  constructor(private http: Http) { }

  getData(url: string): Observable<any> {

    return this.http.get(url)
      .map((data: Response) => {
       // console.log(data);
        return data.json();
      });
  }

  postData(url: string, postData: any) {
    var body = JSON.stringify(postData);
    var headerOptions = new Headers({ 'Content-Type': 'application/json' });
    var requestOptions = new RequestOptions({ method: RequestMethod.Post, headers: headerOptions });
    return this.http.post(url, body, requestOptions).map(x => x.json());
  }

  uploadFile(url: string, postData: FormData) {
    var headerOptions = new Headers();
    headerOptions.append('Accept', 'application/json');
    var requestOptions = new RequestOptions({ headers: headerOptions });
    return this.http.post(url, postData, requestOptions).map(x => x.json());
  }

  downloadFile(url: string, postData: any) {
    var body = JSON.stringify(postData);
    var headerOptions = new Headers({ 'Content-Type': 'application/json' });
    var requestOptions = new RequestOptions({ method: RequestMethod.Post, headers: headerOptions, responseType: ResponseContentType.Blob });
    return this.http.post(url, body, requestOptions).map(res => {
      console.log(res);
      return res.blob();
    })
  }
}