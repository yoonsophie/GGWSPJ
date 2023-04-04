package com.ggws.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ggws.Command.CalendarService;
import com.ggws.model.Calendar;
import com.ggws.model.CalendarDao;

public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	private static CalendarDao calendardao;

	public static List<Calendar> getCalendar() throws Exception {
		// TODO Auto-generated method stub
		return calendardao.getCalendar();
	}

}
