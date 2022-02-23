package com.test.ozone.calendar;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CalendarService implements ICalendarService {
	
	private CalendarDAO dao;
	@Autowired
	public CalendarService(CalendarDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<CalendarDTO> list(HttpSession session) {
		
		List<CalendarDTO> list = new ArrayList<CalendarDTO>();
		list = dao.list(session.getAttribute("id"));
		
		return list;
	}

	

}
