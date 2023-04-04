package com.ggws.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@AllArgsConstructor 
@NoArgsConstructor 
//@RequiredArgsConstructor 
@Getter
@Setter
@ToString
public class chatVO {

	public chatVO(String fromID, String toID, String chatContent) {
		this.fromID = fromID;
		this.toID = toID;
		this.chatContent = chatContent;
	}
	
	public chatVO(String fromID, String toID) {
		this.fromID = fromID;
		this.toID = toID;
	}

	public chatVO(int chatID, @NonNull String fromID, @NonNull String toID) {
		super();
		this.chatID = chatID;
		this.fromID = fromID;
		this.toID = toID;
	}

	public chatVO(String toID, int chatID) {
		this.toID = toID;
		this.chatID = chatID;
	}

	int chatID;
	String fromID;
	@NonNull String toID;
	@NonNull String chatContent;
	String chatTime;
	
	
}
