package com.ggws.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.NonNull;

@Getter
public class noticeBoardVO {

	private BigDecimal board_seq;
	private BigDecimal club_seq;
	private String user_id;
	private String board_type;
	private String board_title;
	private String board_content;
	private String board_pic;
	private Timestamp board_date;
	private Timestamp board_mod_date;
	
	
	// 공지사항 insert
	public noticeBoardVO(BigDecimal club_seq, String user_id, String board_type, String board_title, String board_content) {
		super();
		this.club_seq = club_seq;
		this.user_id = user_id;
		this.board_type = board_type;
		this.board_title = board_title;
		this.board_content = board_content;
	}
	
	
	
	// 공지사항 List
	public noticeBoardVO(BigDecimal board_seq, String user_id, String board_title, String board_content, Timestamp board_date ) {
		this.board_seq = board_seq;
		this.user_id = user_id;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_date = board_date;
	}
	
	
	
	// 공지사항 select
	public noticeBoardVO(BigDecimal club_seq , String board_type) {
		
		this.club_seq = club_seq;
		this.board_type = board_type;
		
	}
	
	
}
