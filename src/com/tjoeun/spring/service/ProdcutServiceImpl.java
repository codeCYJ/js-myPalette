package com.tjoeun.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tjoeun.spring.beans.ProductDTO;
import com.tjoeun.spring.dao.ProductDAO;

@Service
public class ProdcutServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDao;

	 @Override
   public List<ProductDTO> listProduct() {
       return productDao.listProduct(); //데이터베이스에 저장된 상품 리스트를 리턴한다.
   }

	@Override
	public ProductDTO detailProduct(int product_id) {
		 return productDao.detailProduct(product_id);  
	}


	@Override
	public List<ProductDTO> imgProduct(int product_id) {
		return productDao.imgProduct(product_id);
	}

	
	
}
