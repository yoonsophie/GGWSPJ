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
	private Timestamp member_reg_date;
	private BigDecimal club_user_tier;
	private BigDecimal user_pos;
	
	//회원관리페이지 전체회원
	public MemberVO(String user_nick, String user_id, String user_gender, BigDecimal user_age, String user_area,
			Timestamp member_reg_date, BigDecimal club_user_tier) {
		super();
		this.user_nick = user_nick;
		this.user_id = user_id;
		this.user_gender = user_gender;
		this.user_age = user_age;
		this.user_area = user_area;
		this.member_reg_date = member_reg_date;
		this.club_user_tier = club_user_tier;
	}
	
	
	// 로그인용
	public MemberVO(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	
	
}
