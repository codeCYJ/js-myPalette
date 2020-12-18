package com.tjoeun.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tjoeun.spring.beans.BoardInfoDTO;
import com.tjoeun.spring.beans.ContentBean;
import com.tjoeun.spring.beans.PageBean;
import com.tjoeun.spring.beans.UserDTO;
import com.tjoeun.spring.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;

	@Resource(name = "loginUserBean")
	@Lazy
	private UserDTO loginUserBean;

	/*
	 * @GetMapping("/main.do") public String mainList(Model model) {
	 * 
	 * List<BoardInfoDTO> dto = boardService.getBoardList();
	 * model.addAttribute("dto",dto);
	 * 
	 * return "board/board_list"; }
	 */

	
	  @GetMapping("/main.do") 
	  public String mainList1(Model model) {
	  
	  ArrayList<List<ContentBean>> list = new ArrayList<List<ContentBean>>();
	 
	  for (int i = 1; i <= 4; i++) { 
	  List<ContentBean> list1 =
	  boardService.getMainList(i); 
	  list.add(list1); 
	  }
	  
	  model.addAttribute("list", list);
	  
	 List<BoardInfoDTO> board_list = boardService.getBoardList();
	  model.addAttribute("board_list", board_list);
	  
	  return "board/main"; 
	  }
	 

	@GetMapping("/main2")
	public String main(
			@RequestParam("board_info_idx") int board_info_idx,
			@RequestParam(value = "page", defaultValue = "1") int page,
		   Model model) {

	
		  List<BoardInfoDTO> board_list = boardService.getBoardList();
		  model.addAttribute("board_list", board_list);
		 
		 
		model.addAttribute("board_info_idx", board_info_idx);

		String boardInfoName = boardService.getBoardInfoName(board_info_idx);
		model.addAttribute("boardInfoName", boardInfoName);

		List<ContentBean> contentList = boardService.getContentList(board_info_idx, page);
		model.addAttribute("contentList", contentList);

		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);

		model.addAttribute("page", page);

		return "board/main2";

	}

	@GetMapping("/read")
	public String read(@RequestParam("board_info_idx") int board_info_idx, @RequestParam("content_idx") int content_idx,
			@RequestParam("page") int page, Model model) {

		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);

		ContentBean readContentBean = boardService.getContentInfo(content_idx);
		model.addAttribute("readContentBean", readContentBean);

		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("page", page);

		return "board/read";
	}

	@GetMapping("/write")
	public String write(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
			@RequestParam("board_info_idx") int board_info_idx,HttpSession session) {
		String user_id = (String)session.getAttribute("user_id");
		if(user_id == null) {
			
			return "redirect:/user/not_login";
		}
		writeContentBean.setContent_board_idx(board_info_idx);

		return "board/write";
	}

	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean,
			BindingResult result) {
		if (result.hasErrors()) {
			return "board/write";
		}

		 boardService.addContentInfo(writeContentBean);
		
		return "board/write_success";
	
	}

	@GetMapping("/modify")
	public String modify(@RequestParam("board_info_idx") int board_info_idx, @RequestParam("content_idx") int content_idx,
			@ModelAttribute("modifyContentBean") ContentBean modifyContentBean, @RequestParam("page") int page, Model model) {

		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("page", page);

		ContentBean tempContentBean = boardService.getContentInfo(content_idx);

		modifyContentBean.setContent_writer_name(tempContentBean.getContent_writer_name());
		modifyContentBean.setContent_date(tempContentBean.getContent_date());
		modifyContentBean.setContent_subject(tempContentBean.getContent_subject());
		modifyContentBean.setContent_text(tempContentBean.getContent_text());
		modifyContentBean.setContent_file(tempContentBean.getContent_file());
		modifyContentBean.setContent_writer_idx(tempContentBean.getContent_writer_idx());
		modifyContentBean.setContent_board_idx(board_info_idx);
		modifyContentBean.setContent_idx(content_idx);

		return "board/modify";
	}

	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyContentBean") ContentBean modifyContentBean,
			BindingResult result, @RequestParam("page") int page, Model model) {

		model.addAttribute("page", page);

		if (result.hasErrors()) {
			return "board/modify";
		}

		boardService.modifyContentInfo(modifyContentBean);

		return "board/modify_success";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("board_info_idx") int board_info_idx, @RequestParam("content_idx") int content_idx,
			Model model) {

		boardService.deleteContentInfo(content_idx);

		model.addAttribute("board_info_idx", board_info_idx);

		return "board/delete";
	}

	@GetMapping("/not_writer")
	public String not_writer() {
		return "board/not_writer";
	}

}
