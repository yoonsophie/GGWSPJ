package com.ggws.model;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("calendarDao")
public class CalendarDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<com.ggws.model.Calendar> getCalendar() throws Exception {
		List<com.ggws.model.Calendar> calendar = null;
		calendar = sqlSession.selectList("Calendar.calendarList");
		return calendar;
		
	}
	
	
}
