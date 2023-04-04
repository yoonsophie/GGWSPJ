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
	
	@RequestMapping(value = "/test2", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Resource> test(HttpServletRequest req)throws IOException{
		//readBody 메소드 호출
		String body = readBody(req);
		System.out.println(readBody(req));
		//fromYear=2021&fromMonth=8&fromDay=25&toYear=2021&toMonth=8&toDay=25

		//String 으로 바꾼 body부를 JSON형태로 변환하여 사용
		org.json.simple.parser.JSONParser parser = new org.json.simple.parser.JSONParser();
		Object obj = parser.parse(body);
		JSONObject jsonObj = (JSONObject) obj;
		String fromYear = (String) jsonObj.get("fromYear");
	    
		return new ResponseEntity<>("성공", HttpStatus.OK);
	}


	//body 읽는 메소드
	public static String readBody(HttpServletRequest request) throws IOException {
	        BufferedReader input = new BufferedReader(new InputStreamReader(request.getInputStream()));
	        StringBuilder builder = new StringBuilder();
	        String buffer;
	        while ((buffer = input.readLine()) != null) {
	            if (builder.length() > 0) {
	                builder.append("\n");
	            }
	            builder.append(buffer);
	        }
	        System.out.println(builder.toString());
	        return builder.toString();
	}
}
