import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class DjangoService {

  URL="http://localhost:8000";
  constructor(private http: HttpClient) { }

  analizar_post(data:any){
    return this.http.post(`${this.URL}/facebook/`,data)
  }
}
