package com.tjoeun.spring.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tjoeun.spring.beans.UserDTO;

@Repository
public class UserDAO {
  
  @Autowired
  private SqlSessionTemplate sqlSessionTemplate;
  
  public String checkUserId(String user_id) {
    return sqlSessionTemplate.selectOne("user.checkUserId",user_id);
  }
  public void insertUserInfo(UserDTO userDTO) {
    sqlSessionTemplate.insert("user.insertUserInfo",userDTO);
  }
  public UserDTO getLoginUserInfo(UserDTO initLoginUserBean) {
		/*
		 * String name= sqlSessionTemplate.selectOne("user.getLoginUserInfo",
		 * initLoginUserBean); return (Integer.parseInt(name)==0)?false:true;
		 */
	  return sqlSessionTemplate.selectOne("user.getLoginUserInfo", initLoginUserBean);
  }
  public void logout(HttpSession session) {
		session.invalidate();
	}
  

  public UserDTO UserInfo(String user_id) {
  	
  return	sqlSessionTemplate.selectOne("user.UserInfo",user_id);

  }
  
}
