import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ProductsService } from '../services/products.service';
import { Products } from 'app/interfaces/products';
import { Router } from '@angular/router'

@Component({
  selector: 'app-form-product',
  templateUrl: './form-product.component.html',
  styleUrls: ['./form-product.component.css']
})
export class FormProductComponent implements OnInit {

  constructor(private route: ActivatedRoute, private productService: ProductsService, private router: Router) { }

  public id: string
  public product: Products


  
  formData = {
    condition: undefined
  }


  ngOnInit(): void {
    this.id = this.route.snapshot.paramMap.get('id');

    this.productService.getProduct(this.id)
      .subscribe(prod => {
        this.product = prod;
        console.log(prod);
      });
  }

  submitChanges(){

    var product = {
      id : this.product.prodId,
      status : this.product.prodStatus,
      condition : this.formData?.condition
    }

    console.log(product)

    this.productService.putProduct(product)
      .subscribe(response => {
        console.log(response);
      });

    this.router.navigate(['/'])
  }
}
