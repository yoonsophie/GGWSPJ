package com.ggws.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggws.model.calendarDAO;
import com.ggws.model.calendarVO;

@Service
public class newDalServiceTest {
	@Autowired(required = false)
	private calendarDAO dao;
	
	public List<calendarVO> calenlist(){
		return dao.showCalendar();
	}
	 
}
