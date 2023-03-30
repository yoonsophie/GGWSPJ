package com.ggws.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.ggws.Command.Command;
import com.ggws.model.calendarDAO;
import com.ggws.model.calendarVO;

public class calendarService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		/*
		 * JSONParser jsonParser = new JSONParser(); 
		 * JSONObject jsonObject = (JSONObject) jsonParser.parse(addEvent);
		 */
		
		
		
		String title = request.getParameter("allData");
		System.out.println(title);
		
		calendarVO vo = new calendarVO(title);
		calendarDAO dao = new calendarDAO();
	
		
		int cnt = dao.insertCalendar(vo);
		
		if(cnt > 0) {
			console.log("성공");
		}else {
			console.log("실패");
		}
		
		
		return "calendar.html";
	}

}
