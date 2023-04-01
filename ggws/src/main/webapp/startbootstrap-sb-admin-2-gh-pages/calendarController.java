package com.ggws.controller;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ggws.model.MemberDAO;
import com.ggws.model.MemberVO;
import com.ggws.model.calendarDAO;
import com.ggws.model.calendarVO;

public class calendarController {
	
	
	 
	    @ResponseBody
	    public String addEvent(@RequestBody List<Map<String, Object>> param) throws Exception {
	 
		  String result = "";
	        //DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",Locale.KOREA);\
		  	
	 
	        for (int i = 0; i < param.size(); i++) {
	 
	            String title = (String) param.get(i).get("title");
	            Timestamp startday = (Timestamp) param.get(i).get("startday");
	            Timestamp endday = (Timestamp) param.get(i).get("endday");
	            String allday = (String) param.get(i).get("allday");
	 
				/*
				 * LocalDateTime start_day = LocalDateTime.parse(startday, dateTimeFormatter);
				 * LocalDateTime end_day = LocalDateTime.parse(endday, dateTimeFormatter);
				 */
	 
				/*
				 * UserDto userDto = UserDto.builder() .username(username) .build();
				 * 
				 * String user = userService.saveUser(userDto); User userEntity =
				 * userRepository.findById(user).get();
				 * 
				 * ManagerHopeTimeDto managerHopeTimeDto = ManagerHopeTimeDto.builder()
				 * .user(userEntity) .managerHopeDateStart(startDate)
				 * .managerHopeDateEnd(endDate) .build();
				 * 
				 * managerHopeTimeService.saveManagerHopeTime(managerHopeTimeDto);
				 */
	            
	            System.out.println(title + startday + endday + allday);
	            int resultVO= 0;
	            
	            calendarVO vo = new calendarVO(title, startday, endday, allday);
	    		calendarDAO dao = new calendarDAO();
	    		
	    		resultVO = dao.insertCalendar(vo);
	    		
	    		if(resultVO < 0) {
	    			System.out.println("insert 성공");
					/*
					 * HttpSession session = request.getSession();
					 * session.setAttribute("login",resultVO);
					 */
	    			result = "super.html";
	    		} else {
	    			System.out.println("insert 실패");
	    			result= "index.html";
	    		}
	    		
}
	        return result;
	  }
}
