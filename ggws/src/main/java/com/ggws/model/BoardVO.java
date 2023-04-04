package com.ggws.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Getter
public class BoardVO {
		
	private int board_seq;
	private int club_seq;
	@NonNull private String board_title;
	@NonNull private String user_id;
	@NonNull private String board_content;
	private String board_date;
	private String board_mod_date;
}
