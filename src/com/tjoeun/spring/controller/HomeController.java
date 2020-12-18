package com.tjoeun.spring.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tjoeun.spring.beans.UserDTO;

@Controller
public class HomeController {
  /*
  // UserDTO Bean을 이름으로 주입받기
  @Resource(name="loginUserBean")
  @Lazy
  // Annotation 방식에서는
  // 최초 요청이 발생하면 주입되지만,
  // Xml방식에서는 Server가 시작할 때
  // 주입을 시도하므로 설정과 실행이 충돌됨
  // @Lazy (lazy-init) 으로 설정함
  */
  private UserDTO loginUserBean;
  
  @RequestMapping(value="/", method= RequestMethod.GET)
  public String home(HttpServletRequest request) {
    // System.out.println("loginUserBean : " + loginUserBean);
  	System.out.println(request.getServletContext().getRealPath("/"));
    return "redirect:/main";
  }
}







