package com.tjoeun.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.tjoeun.spring.service.UserService;

@RestController
public class RestAPIController {
  
  @Autowired
  private UserService userService;
  
  @GetMapping("/user/checkUserId/{user_id}")
  public String checkUserId(@PathVariable String user_id) {
    
    boolean chkResult = userService.checkUserId(user_id);
    
    return chkResult + "";
  }
  

}




