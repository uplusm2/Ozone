package com.test.ozone.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemoController {
	
	private IMemoService service;
	
	@Autowired
	public MemoController(IMemoService service) {
		this.service = service;
	}
	
	
	@GetMapping("/memolist")
	public String calendar(Model model) {
		
		
		
		return "memo.memolist";
	}
}
