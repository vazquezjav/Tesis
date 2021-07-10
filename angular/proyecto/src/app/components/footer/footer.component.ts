import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { DashboardComponent } from '../dashboard/dashboard.component';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {
  email:String;
  message:String;
  
  constructor(private router: Router) { }

  ngOnInit(): void {
  }

  enviar(){
    console.log('enviar ', this.email," | ", this.message)
    this.message = '';
    this.email = '';
    alert('Pronto el equipo de desarrollo se comunicara con usted')
  }
  home(){
    console.log('llega home ')
    this.router.navigate(['home'])
  }
  login(){
    this.router.navigate(['login']).then(()=>{window.location.reload})
  }
  register(){
    this.router.navigate(['register']).then(()=>{window.location.reload})
  }
}
