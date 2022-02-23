package com.test.ozone.calendar;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CalendarController {
	
	private ICalendarService service;
	
	@Autowired
	public CalendarController(ICalendarService service) {
		this.service = service;
	}
	
	
	@GetMapping("/calendar")
	public String calendar(HttpSession session,Model model) {
		
		List<CalendarDTO> list = new ArrayList<CalendarDTO>();
		list = service.list(session);
		
		return "calendar.calendar";
	}
	
	

}
