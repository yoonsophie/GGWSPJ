package com.ggws.controller;

import com.ggws.Command.Command;
import com.ggws.model.MemberDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeleteMember extends HttpServlet implements Command {
	private static final long serialVersionUID = 1L;


    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
    		
    		String user_id = request.getParameter("user_id");
    		MemberDAO dao = new MemberDAO();
    		int cnt = dao.delete(user_id);
    	
    		if(cnt>0) {
    			// 삭제성공
    			System.out.println("삭제성공");
    		}else {
    			// 삭제실패
    			System.out.println("삭제실패");
    		}
//    		response.sendRedirect("BoardMain.jsp");
    		String moveURL = "memberMng.jsp";
    		return moveURL;
    }



}
