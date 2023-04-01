package com.ggws.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("calendar.do")
public class newDalControllerTest {
	@Autowired(required = false)
	private newDalServiceTest service;
	
	@GetMapping(params = "method=list")
	public String list() {
		return "../startbootstrap-sb-admin-2-gh-pages/newDaltest.html";
	}
	
	@GetMapping(params = "method=data")
	public String data(Model d) {
		d.addAttribute("list", service.calenlist());
		return "";
	}
	
	@GetMapping("/event")
	public @ResponseBody List<Map<String, Object>> getEvent(){
		return newDalServiceTest.calenList();
	}

}
