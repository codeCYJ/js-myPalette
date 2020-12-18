package com.tjoeun.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tjoeun.spring.beans.CartDTO;
import com.tjoeun.spring.service.CartService;
import com.tjoeun.spring.service.UserService;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	CartService cartService;

	@Autowired
	UserService userService;

	@RequestMapping("insert.do")
	public String insert(@ModelAttribute CartDTO dto, HttpSession session) {

		String user_id = (String) session.getAttribute("user_id");
		if (user_id == null) {
			return "redirect:/user/login";
		}
		dto.setUser_id(user_id);
		cartService.insert(dto);
		return "redirect:/cart/list.do";
	}

	@RequestMapping("/payment.do")
	public ModelAndView payment(HttpSession session, ModelAndView mav) {
		Map<String, Object> map = new HashMap<>();
		String user_id = (String) session.getAttribute("user_id");

		if (user_id != null) {
			List<CartDTO> list = cartService.listCart(user_id);// 장바구니 목록
			int sumMoney = cartService.sumMoney(user_id);// 금액합계
			int fee = sumMoney >= 30000 ? 0 : 3000;// 배달료 3만원이상 무료

			map.put("sumMoney", sumMoney);
			map.put("fee", fee); // 배송료
			map.put("sum", sumMoney + fee); // 전체 금액
			map.put("list", list); // 장바구니 목록
			map.put("count", list.size()); // 레코드 갯수

			mav.setViewName("cart/payment");
			mav.addObject("map", map);
			mav.addObject("info", userService.UserInfo(user_id));

			return mav;
		} else {
			return new ModelAndView("cart/main", "", null);
		}

	}

	@RequestMapping("/list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav) {
		Map<String, Object> map = new HashMap<>();

		String user_id = (String) session.getAttribute("user_id");

		if (user_id != null) {
			List<CartDTO> list = cartService.listCart(user_id);// 장바구니 목록
			int sumMoney = cartService.sumMoney(user_id);// 금액합계
			int fee = sumMoney >= 30000 ? 0 : 3000;// 배달료 3만원이상 무료

			map.put("sumMoney", sumMoney);
			map.put("fee", fee); // 배송료
			map.put("sum", sumMoney + fee); // 전체 금액
			map.put("list", list); // 장바구니 목록
			map.put("count", list.size()); // 레코드 갯수

			mav.setViewName("cart/main");
			mav.addObject("map", map);

			return mav;
		} else {
			return new ModelAndView("cart/main", "", null);
		}
	}

	@RequestMapping("/delete.do")
	public String delete(@RequestParam int cart_id) {
		cartService.delete(cart_id);
		return "redirect:/cart/list.do";
	}

	@RequestMapping("deleteAll.do")
	public String deleteAll(HttpSession session) {
		String user_id = (String) session.getAttribute("user_id");
		if (user_id != null) {
			cartService.deleteAll(user_id);
		}
		return "redirect:/cart/list.do";
	}
	
	@RequestMapping("/paymentDone.do")
	public String paymentDone(HttpSession session) {
		String user_id = (String) session.getAttribute("user_id");
		if (user_id != null) {
			cartService.deleteAll(user_id);
		}		
		
		return "cart/main";
	}
	
	

}
