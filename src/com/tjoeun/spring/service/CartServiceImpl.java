package com.tjoeun.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tjoeun.spring.beans.CartDTO;
import com.tjoeun.spring.dao.CartDAO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	CartDAO cartDao;
	
	
	 @Override
   public List<CartDTO> cartMoney() {
       return null;
   }
   @Override
   public void insert(CartDTO dto) {
       cartDao.insert(dto);
   }

   @Override
   public List<CartDTO> listCart(String user_id) {
       return cartDao.listCart(user_id);
   }

   @Override
   public void delete(int cart_id) {
       cartDao.delete(cart_id);
   }

   @Override
   public void deleteAll(String user_id) {
       cartDao.deleteAll(user_id);
   }

   @Override
   public void update(int cart_id) {
       // TODO Auto-generated method stub

   }

   @Override
   public int sumMoney(String user_id) {
       return cartDao.sumMoney(user_id);
   }

   @Override
   public int countCart(String user_id, int product_id) {
       // TODO Auto-generated method stub
       return 0;
   }

   @Override
   public void updateCart(CartDTO dto) {
       // TODO Auto-generated method stub

   }

   @Override
   public void modifyCart(CartDTO dto) {
       cartDao.modifyCart(dto);
   }
   
 
}
