package com.test.ozone.calendar;


import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CalendarDAO {
	
	private SqlSessionTemplate template;
	
	@Autowired
	public CalendarDAO(SqlSessionTemplate template) {
		this.template = template;
	}

	public List<CalendarDTO> list(String id) {
		
		return template.selectList("calendar.list",id);
	}
	
	
	
	

}
