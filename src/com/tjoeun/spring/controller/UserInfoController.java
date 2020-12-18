package com.tjoeun.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tjoeun.spring.beans.CartDTO;
import com.tjoeun.spring.beans.UserDTO;
import com.tjoeun.spring.service.CartService;
import com.tjoeun.spring.service.UserService;

@Controller
@RequestMapping("/userInfo")
public class UserInfoController {

	 @Autowired
	  private UserService userService;
	
	 @Autowired
	 private CartService cartService;
	 
	 @RequestMapping("userorder.do")
	 public String userorder(UserDTO userDTO, Model model,HttpSession session) {
		 String user_id = (String)session.getAttribute("user_id");
		 
		 if(user_id == null) {
			 
			 return "redirect:/user/login";
		 }
		 model.addAttribute("info",userService.UserInfo(user_id));
		 List<CartDTO> list = cartService.listCart(user_id);
		 model.addAttribute("list",cartService.listCart(user_id));
		 return "userInfo/userorder";
	 }
	 @RequestMapping("/userinfo")
	 public String userinfo(UserDTO userDTO, Model model,HttpSession session) {
		 String user_id = (String)session.getAttribute("user_id");
		 
		 if(user_id == null) {
			 
			 return "redirect:/user/login";
		 }
		 model.addAttribute("info",userService.UserInfo(user_id));
		 
		 return "userInfo/userinfo";
	 }
	 
	 @RequestMapping("/question")
	 public String question(UserDTO userDTO, Model model,HttpSession session) {
		 String user_id = (String)session.getAttribute("user_id");
		 
		
		 model.addAttribute("info",userService.UserInfo(user_id));
		 
		 return "userInfo/question";
	 }
}