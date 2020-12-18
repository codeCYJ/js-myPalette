/*package com.tjoeun.spring.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.tjoeun.spring.beans.UserDTO;

public class UserValidator implements Validator{

  @Override
  public boolean supports(Class<?> clazz) {
    return UserDTO.class.isAssignableFrom(clazz);
  }
*/
	/*
	 * @Override public void validate(Object target, Errors errors) { UserDTO
	 * userDTO = (UserDTO)target;
	 * 
	 * String beanName = errors.getObjectName();
	 * 
	 * if(beanName.equals("userDTO")) {
	 * if(userDTO.getUser_pw().equals(userDTO.getUser_pw2()) == false) {
	 * errors.rejectValue("user_pw", "NotEquals"); errors.rejectValue("user_pw2",
	 * "NotEquals"); } if(userDTO.isCheckId() == false) {
	 * errors.rejectValue("user_id", "DontChecked"); } } }
	 

}
*/