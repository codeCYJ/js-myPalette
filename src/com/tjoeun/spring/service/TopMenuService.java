package com.tjoeun.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tjoeun.spring.beans.TopDTO;
import com.tjoeun.spring.dao.TopMenuDAO;

@Service
public class TopMenuService {
  
  @Autowired
  private TopMenuDAO topMenuDAO;
  
  public List<TopDTO> getTopMenuList(){
    
    List<TopDTO> topMenuList = 
        topMenuDAO.getTopMenuList();
    
    return topMenuList;
    
  }
  
  

}




