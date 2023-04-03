package com.ggws.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.model.noticeBoardDAO;
import com.ggws.model.noticeBoardVO;

public class noticeBoardWriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		BigDecimal clubSeq = new BigDecimal(Integer.parseInt(request.getParameter("clubSeq")));
		String userId = request.getParameter("userId");
		String boardType = "noticeboard";
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		/* System.out.println(clubSeq + "/" + userId + "/" + title + "/" + content); */
		
		noticeBoardDAO dao = new noticeBoardDAO();
		int cnt = dao.insert(new noticeBoardVO( clubSeq, userId, boardType, title, content));
		
		if(cnt > 0) {
			System.out.println("(공지사항)insert 성공");
		}else {
			System.out.println("(공지사항)insert 실패");
		}
		
		response.sendRedirect("noticeBoardMain.jsp");
		
		

	}

}
