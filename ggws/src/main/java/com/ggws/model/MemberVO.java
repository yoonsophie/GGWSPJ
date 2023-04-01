package com.ggws.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;


@AllArgsConstructor
@Getter
public class MemberVO {
	private String user_id;
	private String user_pw;
	private String user_nick;
	private String user_gender;
	private BigDecimal user_age;
	private String user_email;
	private String user_area;
	private String user_phone;
	private BigDecimal user_trust;
	private String user_pic;
	private Timestamp user_date;
	private Timestamp user_mod_date;
	
	//회원관리페이지 전체회원
	public MemberVO(String user_id, String user_nick, String user_gender, BigDecimal user_age, BigDecimal user_trust,
			Timestamp user_date) {
		super();
		this.user_id = user_id;
		this.user_nick = user_nick;
		this.user_gender = user_gender;
		this.user_age = user_age;
		this.user_trust = user_trust;
		this.user_date = user_date;
	}
	
	// 로그인용
	public MemberVO(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	
	
	
	
}
