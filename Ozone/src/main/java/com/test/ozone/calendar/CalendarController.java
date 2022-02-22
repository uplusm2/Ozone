package com.test.ozone.calendar;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CalendarController {
	
	private ICalendarService service;
	
	@Autowired
	public CalendarController(ICalendarService service) {
		this.service = service;
	}
	
	
	@GetMapping("/calendar")
	public String calendar(Model model) {
		
		
		
		return "calendar.calendar";
	}
	
	

}
