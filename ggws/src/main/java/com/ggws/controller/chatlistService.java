package com.ggws.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


import com.ggws.model.chatDAO;
import com.ggws.model.chatVO;


public class chatlistService implements com.ggws.Command.Command {
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
    	
   
    	
    	if(fromID==null || fromID.equals("") || toID==null || toID.equals("") || listType==null || listType.equals("")) {
    		return "";
    	}else if(listType.equals("ten")) {
        	return getTen(fromID, toID, chatID);
    	}else if(listType.equals(listType)){
    		return getID(fromID, toID, listType); 	
    	}else {
    		return "";
    	}
    	
}
	
	// 기존 채팅 메시지 불러오기
	public String getTen(String fromID, String toID, String chatID) {
		com.ggws.model.chatDAO dao = new chatDAO();
		List<chatVO> chatList = dao.getChatListByRecent(fromID, toID,chatID);
		if(chatList.size() == 0) return "";		
		List<String> myName = null;
//		for(int i = 0; i<chatList.size(); i++) {
//			chatList.get(i).setToID((dao.getChatName(toID)));
//		}
		Gson gson = new Gson();
		String result1 = gson.toJson(chatList);
		return result1;
	}
	
	
	// 새로 작성된 채팅 메시지 불러오기
	public String getID(String fromID, String toID, String chatID) {
		chatDAO chatDAO = new chatDAO();
		List<chatVO> chatList = chatDAO.getChatListByID(Integer.parseInt(chatID) , fromID, toID);
		if(chatList == null) return " ";
//		for(int i = 0; i<chatList.size(); i++) {
//			chatList.get(i).setToID((chatDAO.getChatName(toID)));
//		}
		Gson gson = new Gson();
		String result1 = gson.toJson(chatList);
		return result1;
	}

		

}
