package com.tjoeun.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tjoeun.spring.beans.CartDTO;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<CartDTO> cartMoney() {

		return null;
	}

	@Override
	public void insert(CartDTO dto) {
		
		 sqlSession.insert("cart.insert", dto);
		
	}

	@Override
	public List<CartDTO> listCart(String user_id) {
		return  sqlSession.selectList("cart.listCart", user_id);
	}

	@Override
	public void delete(int cart_id) {
		 sqlSession.delete("cart.delete", cart_id);
		
	}

	@Override
	public void deleteAll(String user_id) {
		 sqlSession.delete("cart.deleteAll", user_id);
		
	}

	@Override
	public void update(int cart_id) {
		
	}

	@Override
	public int sumMoney(String user_id) {
		 return sqlSession.selectOne("cart.sumMoney", user_id);
	}

	@Override
	public int countCart(String user_id, int product_id) {

		return 0;
	}

	@Override
	public void updateCart(CartDTO dto) {
		
	}

	@Override
	public void modifyCart(CartDTO dto) {
		
		 sqlSession.update("cart.modify", dto);
	}
	

	
}
