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
	public String memoadd(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model) {
		
		
		
		return "memo.memoadd";
	}
	
	@PostMapping("/addok")
	public String addok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, Model model, @ModelAttribute MemoDTO dto) {
		
		
		
		return "redirect:/calendar";
	}
}
