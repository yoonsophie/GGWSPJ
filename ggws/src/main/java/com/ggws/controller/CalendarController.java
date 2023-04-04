package com.ggws.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ggws.model.Calendar;

public class CalendarController {
	
	//일정보기
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public ModelAndView getCalendarList(ModelAndView mv, HttpServletRequest request) {
		String viewpage = "calendar2";
		List<Calendar> calendar = null;
		try {
			calendar = CalendarServiceImpl.getCalendar();
			request.setAttribute("calendarList", calendar);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName(viewpage);
		return mv;
	}
	
	

}
