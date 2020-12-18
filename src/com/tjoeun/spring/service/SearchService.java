package com.tjoeun.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tjoeun.spring.beans.ProductDTO;
import com.tjoeun.spring.dao.SearchDAO;

@Service
public class SearchService {
	
	@Autowired
	SearchDAO searchDao;
	
	
	public List<ProductDTO> getSearchList(String sh){
		return searchDao.getSearchList(sh);
	}
}
