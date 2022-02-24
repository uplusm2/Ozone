package com.test.ozone.calendar;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface ICalendarService {

	List<CalendarDTO> list(HttpSession session);
	
	
	
}
