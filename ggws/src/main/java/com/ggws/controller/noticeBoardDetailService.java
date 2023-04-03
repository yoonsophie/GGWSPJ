package com.ggws.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.model.noticeBoardDAO;
import com.ggws.model.noticeBoardVO;

/**
 * Servlet implementation class noticeBoardDetailService
 */
public class noticeBoardDetailService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BigDecimal boardSeq = new BigDecimal(Integer.parseInt(request.getParameter("boardSeq"))) ;
	
		System.out.println(boardSeq);
		
		noticeBoardDAO dao = new noticeBoardDAO();
		
		noticeBoardVO vo = dao.selectDetail(boardSeq);
		
		request.setAttribute("noticeBoardDetail", vo);
		request.getRequestDispatcher("noticeBoardDetail.jsp").forward(request, response);
		
	}

}
