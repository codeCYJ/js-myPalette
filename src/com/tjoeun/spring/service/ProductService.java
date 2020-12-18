package com.tjoeun.spring.service;

import java.util.List;

import com.tjoeun.spring.beans.ProductDTO;

public interface ProductService {

  List<ProductDTO> listProduct();
  ProductDTO detailProduct(int product_id);
  List<ProductDTO> imgProduct(int product_id);
  
}
