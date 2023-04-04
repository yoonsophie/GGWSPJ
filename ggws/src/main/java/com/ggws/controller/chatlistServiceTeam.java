package com.ggws.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ggws.Command.Command;

import com.ggws.model.chatDAO;
import com.ggws.model.chatVO;


public class chatlistServiceTeam implements Command {
	private static final long serialVersionUID = 1L;

	// DM(1대1 채팅) PAGE 
	@Override
    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
		
		
		// 보낸 사람(나)
    	String fromID = request.getParameter("fromID");
    	// 받는 사람
    	String toID = request.getParameter("toID");
    	// 채팅 메시지 별 부여된 시퀀스 번호
    	String chatID = request.getParameter("chatID");
    	// 마지막 채팅 메시지 시퀀스 번호
    	String listType = request.getParameter("listType");
    	
   
    	
    	if(toID==null || toID.equals("")) {
    		return "";
    	}else if(listType.equals(listType)){
    		return getIDTeam(fromID, toID, listType); 	
    	}else if(listType.equals("team")) {
        	return getTenTeam(toID, chatID);
    	}else {
    		return "";
    	}
    	
}
	
	// 기존 채팅 메시지 불러오기
		public String getTenTeam(String toID, String chatID) {
			chatDAO dao = new chatDAO();
			List<chatVO> chatList = dao.getChatListByRecentTeam(toID,chatID);
			if(chatList.size() == 0) return "";		
			for(int i = 0; i<chatList.size(); i++) {
				chatList.get(i).setFromID(dao.getChatName(chatList.get(i).getFromID()));
			}
			Gson gson = new Gson();
			String result1 = gson.toJson(chatList);
			return result1;
		}
		
		
		// 새로 작성된 채팅 메시지 불러오기
		public String getIDTeam(String fromID, String toID, String chatID) {
			chatDAO dao = new chatDAO();
			List<chatVO> chatList = dao.getChatListByIDTeam(toID,chatID);
			if(chatList == null) return " ";
			for(int i = 0; i<chatList.size(); i++) {
				chatList.get(i).setFromID(dao.getChatName(chatList.get(i).getFromID()));
			}
			Gson gson = new Gson();
			String result1 = gson.toJson(chatList);
			return result1;
		}
}
