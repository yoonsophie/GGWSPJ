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

public class calendarController3 {
	
	@Controller
	@RequiredArgsConstructor
	@RequestMapping("/full-calendar")
	public class CalendarController {
	 
	    private static final Logger log = LoggerFactory.getLogger(CalendarController.class);
	 
	    private final ScheduleService scheduleService;
	 
	    @GetMapping("/calendar-admin")
	    @ResponseBody
	    public List<Map<String, Object>> monthPlan() {
	        List<Schedule> listAll = scheduleService.findAll();
	 
	        JSONObject jsonObj = new JSONObject();
	        JSONArray jsonArr = new JSONArray();
	 
	        HashMap<String, Object> hash = new HashMap<>();
	 
	        for (int i = 0; i < listAll.size(); i++) {
	            hash.put("title", listAll.get(i).getId());
	            hash.put("start", listAll.get(i).getScheduleDate());
//	            hash.put("time", listAll.get(i).getScheduleTime());
	 
	            jsonObj = new JSONObject(hash);
	            jsonArr.add(jsonObj);
	        }
	        log.info("jsonArrCheck: {}", jsonArr);
	        return jsonArr;
	    }
	}
	 
}
