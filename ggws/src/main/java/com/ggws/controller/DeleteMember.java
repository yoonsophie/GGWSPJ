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
    		String id = request.getParameter("id");
    		
    		MemberDAO dao = new MemberDAO();
    		int cnt = dao.delete(id);
    	
			return null;
    }



}
