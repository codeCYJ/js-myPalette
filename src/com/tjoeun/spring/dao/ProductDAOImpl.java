package com.tjoeun.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tjoeun.spring.beans.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ProductDTO> listProduct() {
		
		return sqlSession.selectList("product.list_product"); 
	}

	@Override
	public ProductDTO detailProduct(int product_id) {
		 return sqlSession.selectOne("product.detail_product",product_id);
	}

	@Override
	public List<ProductDTO> imgProduct(int product_id) {
		return sqlSession.selectList("product.img_product",product_id);
	}


}
