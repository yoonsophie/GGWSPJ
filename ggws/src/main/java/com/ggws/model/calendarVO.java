package com.ggws.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.Command.Command;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

public class calendarVO{





	@AllArgsConstructor
	@RequiredArgsConstructor
	@NoArgsConstructor
	@Getter
	@Setter
	public class BoardVO {

		private int schd_num;
		private int club_num;
		private String id;
		private String type;
		@NonNull
		private String title;
		private String content;
		private String start;
		private String end;
		private String date3;
		
	}
	
	public calendarVO(String title) {
		// TODO Auto-generated constructor stub
	}
	
	
}
