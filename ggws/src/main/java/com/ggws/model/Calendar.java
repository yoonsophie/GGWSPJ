package com.ggws.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Calendar{

	private int calendarNo;
	private String calendarTitle;
	private String calendarMemo;
	private String calendarStart;
	private String calendarEnd;

	
	
}

