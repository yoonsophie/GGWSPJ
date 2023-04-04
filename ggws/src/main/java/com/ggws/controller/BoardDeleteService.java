package com.ggws.controller;

import com.ggws.Command.Command;
import com.ggws.model.BoardDAO;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BoardDeleteService extends HttpServlet implements Command {
	private static final long serialVersionUID = 1L;

	
    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
    	String board_title = request.getParameter("board_title");
		BoardDAO dao = new BoardDAO();
		int cnt = dao.delete(board_title);
		
		if(cnt>0) {
			// 삭제성공
			System.out.println("삭제성공");
		}else {
			// 삭제실패
			System.out.println("삭제실패");
		}
//		response.sendRedirect("BoardMain.jsp");
		String moveURL = "boardMain.jsp";
		return moveURL;
    }

	

}