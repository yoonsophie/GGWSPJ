package com.ggws.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

public class test {
	
	  @PostMapping("/calendar-admin-update")
	    @ResponseBody
	    public String addEvent(@RequestBody List<Map<String, Object>> param) throws Exception {
	 
	        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",Locale.KOREA);
	 
	        for (int i = 0; i < param.size(); i++) {
	 
	            String title = (String) param.get(i).get("title");
	            String startDateString = (String) param.get(i).get("start");
	            String endDateString = (String) param.get(i).get("end");
	 
	            LocalDateTime startday = LocalDateTime.parse(startDateString, dateTimeFormatter);
	            LocalDateTime endday = LocalDateTime.parse(endDateString, dateTimeFormatter);
	            
	            System.out.println(title);
	            
	            
				/*
				 * UserDto userDto = UserDto.builder() .username(username) .build();
				 */
	 
				/*
				 * String user = userService.saveUser(userDto); User userEntity =
				 * userRepository.findById(user).get();
				 */
				/*
				 * ManagerHopeTimeDto managerHopeTimeDto = ManagerHopeTimeDto.builder()
				 * .user(userEntity) .managerHopeDateStart(startDate)
				 * .managerHopeDateEnd(endDate) .build();
				 * 
				 * managerHopeTimeService.saveManagerHopeTime(managerHopeTimeDto);
				 */
	        }
	        return "/full-calendar/calendar-admin-update";
	    }


}
