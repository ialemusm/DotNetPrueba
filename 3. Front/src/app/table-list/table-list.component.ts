import { Component, OnInit } from '@angular/core';
import { Products } from 'app/interfaces/products';
import { ProductsService } from './../services/products.service'
import { Router } from '@angular/router'

@Component({
  selector: 'app-table-list',
  templateUrl: './table-list.component.html',
  styleUrls: ['./table-list.component.css']
})
export class TableListComponent implements OnInit {

  constructor(private productService: ProductsService, private router: Router) { }

  dataProduct: Products[] = []

  ngOnInit() {
    this.getAllProducts();
  }

  refresh(): void {
    window.location.reload();
  } 

  goToProduct(id: number) {
    console.log(id);
  }

  sellProduct(prod) {
    const product = {
      id : prod.prodId,
      condition : 0,
      status : '1'
    }

    console.log(product)

    this.productService.putProduct(product)
    .subscribe(response => {
      console.log(response);
    });

    this.refresh()
  }

  getAllProducts() {
    this.productService.getAllProducts()
    .subscribe(prod => {
      this.dataProduct = prod;
    });
  }

}
