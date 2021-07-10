import { Component, OnInit } from '@angular/core';
import { DashboardComponent } from '../dashboard/dashboard.component';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {
  email:String;
  message:String;
  
  constructor() { }

  ngOnInit(): void {
  }

  enviar(){
    console.log('enviar ', this.email," | ", this.message)
    this.message = '';
    this.email = '';
    alert('Pronto el equipo de desarrollo se comunicara con usted')
  }
}
