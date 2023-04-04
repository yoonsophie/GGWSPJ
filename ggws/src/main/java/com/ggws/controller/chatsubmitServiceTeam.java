package com.ggws.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.Command.Command;

import com.ggws.model.chatDAO;
import com.ggws.model.chatVO;

public class chatsubmitServiceTeam implements Command {
	private static final long serialVersionUID = 1L;

	@Override
    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
		
		String moveURL = "";
		
		
    	String fromID = request.getParameter("fromID");
    	String toID = request.getParameter("toID");
    	String chatContent = request.getParameter("chatContent");
    	//System.out.println("비동기통신 요청완료");
    	System.out.println("챗서브밋서비스 fromID" + fromID);
    	chatVO dto = new chatVO(fromID, toID, chatContent);
    	chatDAO dao = new chatDAO();
    	
    	System.out.println(dto.toString());
    	
    	int cnt = dao.submitTeam(dto);
    	
		if (cnt > 0) {
			System.out.println("submitTeam 업로드 성공");
			moveURL = "chatScreen.jsp";
		} else {
			System.out.println("submitTeam 업로드 안됨");
			moveURL = "chatScreen.jsp";
		}
		
    	return moveURL;
    }

}
