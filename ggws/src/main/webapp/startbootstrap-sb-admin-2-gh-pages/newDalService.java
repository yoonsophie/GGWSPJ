package com.ggws.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Service
public class newDalService {
	
	@RequestMapping(value = "/newDal", method = RequestMethod.GET)
	public String newDaltest() {
		return "newDaltest";
	}
	
	@ResponseBody
	@RequestMapping(value="/monthPlan", method = RequestMethod.POST)
	public void init(@RequestBody HashMap<String, Object> map) {
		

        HashMap<String, Object> map = HashMap<String, Object>();
        map.put("calendarVO", calendarVO);
    
		System.out.println(map);
	}
	
}
