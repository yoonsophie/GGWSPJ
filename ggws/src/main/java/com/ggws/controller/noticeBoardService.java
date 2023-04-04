package com.ggws.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.model.noticeBoardDAO;
import com.ggws.model.noticeBoardVO;

/**
 * Servlet implementation class noticeBoardService
 */
public class noticeBoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 임시데이터 
		 * 유저의 id값 */
		String userId = "test";
		
		BigDecimal boardSeq = null;
		try {
			boardSeq = new BigDecimal(Integer.parseInt(request.getParameter("boardSeq")));			
		}catch (Exception e){
			
		}
		
		List<noticeBoardVO> list = null;
		
		BigDecimal clubSeq = new BigDecimal(1);
		String boardType = "noticeboard";
		
		noticeBoardDAO dao = new noticeBoardDAO();
		list = dao.select(new noticeBoardVO(clubSeq, boardType));
		
		if(list != null) {
			System.out.println("(공지사항)List select 성공");
		}else {
			System.out.println("(공지사항)List select 실패");
		}
		
//		동호회장인지 판단
		String user_id = dao.check(new noticeBoardVO(clubSeq, userId));
		
		if(user_id != null) {
			System.out.println("(공지사항)회장 select 성공");
		}else {
			System.out.println("(공지사항)회장 select 실패");
		}
		
		if(boardSeq != null) {
			int cnt = dao.delete(boardSeq);
			
			if(cnt > 0) {
				System.out.println("(공지사항)delete 성공");
			}else {
				System.out.println("(공지사항)delete 실패");
			}
		}
		
		request.setAttribute("checkMember",user_id);
		request.setAttribute("noticeBoardList", list);
		request.getRequestDispatcher("noticeBoardMain.jsp").forward(request, response);
		
		
		
	
	}


}
