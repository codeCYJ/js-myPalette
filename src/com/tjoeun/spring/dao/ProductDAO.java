package com.tjoeun.spring.dao;

import java.util.List;

import com.tjoeun.spring.beans.ProductDTO;

public interface ProductDAO {
	
  List<ProductDTO> listProduct();
  ProductDTO detailProduct(int product_id);
  List<ProductDTO> imgProduct(int product_id);
	
}
