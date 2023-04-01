package com.ggws.controller;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ggws.model.MemberDAO;
import com.ggws.model.MemberVO;
import com.ggws.model.calendarDAO;
import com.ggws.model.calendarVO;

@Controller
public class calendarController2 {
	
	@ResponseBody
	public String insertCalendar(@RequestParam("saveData") String addEvent, HttpServletRequest request) throws ParseException {
	
		
		System.out.println(saveData);
	 
	    
}
