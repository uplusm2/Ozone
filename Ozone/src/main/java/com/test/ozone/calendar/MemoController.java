package com.test.ozone.calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemoController {
	
	private IMemoService service;
	
	@Autowired
	public MemoController(IMemoService service) {
		this.service = service;
	}
	
	@GetMapping("/memoadd")
	public String memoAdd(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "memo.memoadd";
	}
	
	@PostMapping("/addok")
	public String addOk(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model, @ModelAttribute MemoDTO dto) {
		
		
		
		return "redirect:/addcalendar";
	}
	
	@GetMapping("/memodetail")
	public String memoDetail(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "memo.memodetail";
	}
	
	@GetMapping("/memolist")
	public String memoList(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "memo.memolist";
	}
	
	@GetMapping("/addmemolist")
	public String addmemoList(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "memo.addmemolist";
	}
	
	@GetMapping("/addmemodetail")
	public String addmemodetail(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "memo.addmemodetail";
	}
	
	// map 관련 두가지
	@GetMapping("/addlocation")
	public String addlocation(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "map.addlocation";
	}
	
	@GetMapping("/location")
	public String location(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "map.location";
	}
	
	
}
