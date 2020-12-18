package com.tjoeun.spring.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import com.tjoeun.spring.beans.TopDTO;
import com.tjoeun.spring.service.TopMenuService;



public class TopMenuInterceptor implements HandlerInterceptor{
  
  @Autowired
  private TopMenuService topMenuService;
  
  /*
    XML 방식에서는 Interceptor에서 자동 주입 받을 수 있음
    
  // Annotation 방식에서는  
  // TopMenuInterceptor 에서
  // TopMenuService 의 객체가 자동 주입이 안 되므로
  // 생성자에서 객체를 생성하고 할당해 줌
  public TopMenuInterceptor(TopMenuService topMenuService) {
    this.topMenuService = topMenuService;
  }
  */
  
  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    
    List<TopDTO> topMenuList = topMenuService.getTopMenuList();
    request.setAttribute("topMenuList", topMenuList);
    
    return true;
  }

}






