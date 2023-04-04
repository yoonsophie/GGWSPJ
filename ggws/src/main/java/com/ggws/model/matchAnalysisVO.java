package com.ggws.model;


import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class matchAnalysisVO {
	private BigDecimal game_seq;
	private BigDecimal h_club_seq;
	private BigDecimal a_club_seq;
	private BigDecimal h_club_score;
	private BigDecimal a_club_score;
	private String cancelation;
	private BigDecimal winner_club;
	private Timestamp game_date;
	private Timestamp game_mod_date;
	private BigDecimal a_club_game;
	private BigDecimal h_club_game;
	private BigDecimal myteamgame;
	private BigDecimal winner;
	
	public matchAnalysisVO(BigDecimal a_club_seq, BigDecimal a_club_game) {
		super();
		this.a_club_seq = a_club_seq;
		this.a_club_game = a_club_game;
	}

	
	
}
