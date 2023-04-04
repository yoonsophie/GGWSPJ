package com.ggws.frontController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.Command.Command;
import com.ggws.controller.LoginService;

@WebServlet("*.do")
public class frontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// post방식 인코딩
				request.setCharacterEncoding("UTF-8");
				
				// 어떤 요청이 들어왔는지 구분
				String reqURI =  request.getRequestURI();
				//System.out.println("ㅇㄷㅇㄷ" + reqURI);
				
				// ContextRoot출력
				String contextPath = request.getContextPath();
				//System.out.println(contextPath);
				
				// 요청한 값만 출력하기(substring 메소드 사용)
				// substring( start ) : start 위치부터 끝까지 문자열 자르기
				// substring( start, end ) : start 위치부터 end 전까지 문자열 자르기
				String result =  reqURI.substring(contextPath.length()+1);
				//System.out.println(result);
				
				Command service = null;
				
				
				if(result.equals("LoginService.do")) {
					// 로그인기능		
					 service = new LoginService();
				
				}
				
				String moveURL = service.execute(request, response);
				response.sendRedirect(moveURL);

				
	
	
	
	}

}
