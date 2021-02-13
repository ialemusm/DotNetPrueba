import { Component, OnInit } from '@angular/core';
import { ProductsService } from '../services/products.service';
import { Products } from 'app/interfaces/products';
import { Router } from '@angular/router'

@Component({
  selector: 'app-create-product-form',
  templateUrl: './create-product-form.component.html',
  styleUrls: ['./create-product-form.component.css']
})
export class CreateProductFormComponent implements OnInit {

  constructor(private productService: ProductsService, private router: Router) { }

  public product = {
    name : undefined,
    condition : undefined
  }

  ngOnInit(): void {
  }

  submitChanges(){

    console.log(this.product)

    this.productService.postProduct(this.product)
      .subscribe(response => {
        console.log(response);
      });

    this.router.navigate(['/'])
  }

}
