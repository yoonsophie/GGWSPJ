package com.ggws.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ggws.Command.Command;
import com.ggws.model.MemberDAO;
import com.ggws.model.MemberVO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		MemberVO resultVO = null;
		String result = "";
		
		// 요청데이터 값 가져오기
		String id = (String)request.getParameter("user_id");
		String pw = (String)request.getParameter("user_pw");
		
		/* System.out.println(id + pw); */
		
		// email, pw 한 번에 필드에 저장
		MemberVO vo = new MemberVO(id, pw);
		MemberDAO dao = new MemberDAO();
		
		resultVO = dao.login(vo);
		
		if(resultVO != null) {
			System.out.println("로그인 성공");
			HttpSession session =  request.getSession();
			session.setAttribute("login_vo", resultVO);
			result = "html5up-stellar/football.jsp?user_id"+id;
		} else {
			System.out.println("로그인 실패");
			result= "index.html";
		}
		return result;
		
	}

}
