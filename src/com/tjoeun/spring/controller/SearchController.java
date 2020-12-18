package com.tjoeun.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tjoeun.spring.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired
	SearchService searchService;
	
	@RequestMapping("/searchList.do")
	public ModelAndView searchList(@RequestParam("sh") String sh, ModelAndView mav) {
		
		mav.setViewName("search/searchList");
		mav.addObject("dto", searchService.getSearchList(sh));
		mav.addObject("sh", sh);
		
		return mav;
	}
	

	
	
	
	
	
	
}
