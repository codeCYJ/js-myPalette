package com.tjoeun.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tjoeun.spring.service.gameService;

@Controller
@RequestMapping("/game")
public class GameController {
	
	@Autowired
	gameService gameService;
	
	@GetMapping("/start")
	  public String start() {
	//	gameService.game(); 
		
		
		  return "game/start";
	  }
	
	@GetMapping("/gm")
	  public String game() {
	//	gameService.game(); 
		
		
		  return "game/gm";
	  }
	

}
