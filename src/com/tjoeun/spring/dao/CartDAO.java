package com.tjoeun.spring.dao;

import java.util.List;

import com.tjoeun.spring.beans.CartDTO;

public interface CartDAO {
	List<CartDTO> cartMoney();
  void insert(CartDTO dto); //장바구니 추가
  List<CartDTO> listCart(String user_id); //장바구니 목록
  void delete(int cart_id); //장바구니 개별 삭제
  void deleteAll(String user_id); //장바구니 비우기
  void update(int cart_id); 
  int sumMoney(String user_id); //장바구니 금액 합계
  int countCart(String user_id, int product_id); //장바구니 상품 갯수
  void updateCart(CartDTO dto); //장바구니 수정 
  void modifyCart(CartDTO dto);
}
