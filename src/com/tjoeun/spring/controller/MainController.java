package com.tjoeun.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.tjoeun.spring.beans.BoardInfoDTO;

@Controller
public class MainController {

  @GetMapping("/main")
  public String main() {
    return "main";
  }
  
  
 
  

}
