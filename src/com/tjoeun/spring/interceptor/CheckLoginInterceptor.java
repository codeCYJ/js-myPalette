package com.tjoeun.spring.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

import com.tjoeun.spring.beans.UserDTO;

public class CheckLoginInterceptor implements HandlerInterceptor{
	
	/*
	 * @Resource(name = "loginUserBean")
	 * 
	 * @Lazy private UserDTO loginUserBean;
	 * 
	 * 
	 * 
	 * @Override public boolean preHandle(HttpServletRequest request,
	 * HttpServletResponse response, Object handler) throws Exception {
	 * if(loginUserBean.isLogLogin() == false) { String contextPath =
	 * request.getContextPath(); response.sendRedirect(contextPath +
	 * "/user/not_login"); return false; } return false; }
	 */
	
}








