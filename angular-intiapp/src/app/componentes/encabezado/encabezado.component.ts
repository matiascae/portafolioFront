import { Component, OnInit } from '@angular/core';
import { PortfolioService } from '../../servicios/portfolio.service';
@Component({
  selector: 'app-encabezado',
  templateUrl: './encabezado.component.html',
  styleUrls: ['./encabezado.component.css']
})
export class EncabezadoComponent implements OnInit {
  miPortfolio:any;

  constructor(private datosPortolio:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortolio.obtenerDatos().subscribe(data=>{
      this.miPortfolio=data;
    });
  }

}
