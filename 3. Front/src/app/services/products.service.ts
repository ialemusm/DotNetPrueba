import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Products } from './../interfaces/products'

@Injectable({
  providedIn: 'root'
})
export class ProductsService {

  constructor(private http: HttpClient) { }

  private api = 'https://localhost:44322/api/Product'

  getAllProducts() {
    const path = this.api;
    return this.http.get<Products[]>(path);
  }

  getProduct(id: string) {
    const path = `${this.api}/${id}`;
    return this.http.get<Products>(path);
  }

  putProduct(product){
    const path = this.api;
    return this.http.put(path, product);
  }

  postProduct(product){
    const path = this.api;
    return this.http.post(path, product);
  }
}
