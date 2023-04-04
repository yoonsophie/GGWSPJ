package com.ggws.frontController;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.Command.Command;
import com.ggws.controller.BoardDeleteService;
import com.ggws.controller.BoardWriteService;
import com.ggws.controller.DeleteMember;
import com.ggws.controller.LoginService;
<<<<<<< HEAD
import com.ggws.controller.MemberUpdateService;



=======
import com.ggws.controller.chatlistService;
import com.ggws.controller.chatlistServiceTeam;
import com.ggws.controller.chatsubmitService;
import com.ggws.controller.chatsubmitServiceTeam;
import com.ggws.controller.psaService;
>>>>>>> branch 'main' of https://github.com/yoonsophie/GGWSPJ.git

public class frontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// post방식 인코딩
<<<<<<< HEAD
				request.setCharacterEncoding("UTF-8");
				
				// 어떤 요청이 들어왔는지 구분
				String reqURI =  request.getRequestURI();
				System.out.println("ㅇㄷㅇㄷ" + reqURI);
				
				// ContextRoot출력
				String contextPath = request.getContextPath();
				System.out.println(contextPath);
				
				// 요청한 값만 출력하기(substring 메소드 사용)
				// substring( start ) : start 위치부터 끝까지 문자열 자르기
				// substring( start, end ) : start 위치부터 end 전까지 문자열 자르기
				String result =  reqURI.substring(contextPath.length()+1);
				System.out.println(result);
				
				Command service = null;
				
				
				if(result.equals("LoginService.do")) {
					// 로그인기능		
					 service = new LoginService();		
				}else if(result.equals("startbootstrap-sb-admin-2-gh-pages/BoardDeleteService.do")) {
					System.out.println("게시글삭제");
					// 게시글 삭제
					service = new BoardDeleteService();
				}else if(result.equals("startbootstrap-sb-admin-2-gh-pages/BoardWriteService.do")) {
					// 게시글 업로드
					service = new BoardWriteService();
				}else if(result.equals("startbootstrap-sb-admin-2-gh-pages/DeleteMember.do")) {
					// 동호회회원 삭제
					service = new DeleteMember();
				}else if(result.equals("startbootstrap-sb-admin-2-gh-pages/MemberUpdateService.do")) { 
					// 동호회원 수락 
					service = new MemberUpdateService(); 
				}
					 
				
				String moveURL = service.execute(request, response);
				response.sendRedirect(moveURL);
=======
		request.setCharacterEncoding("UTF-8");
>>>>>>> branch 'main' of https://github.com/yoonsophie/GGWSPJ.git

		// 어떤 요청이 들어왔는지 구분
		String reqURI = request.getRequestURI();
		System.out.println("ㅇㄷㅇㄷ" + reqURI);

		// ContextRoot출력
		String contextPath = request.getContextPath();
		// System.out.println(contextPath);

		// 요청한 값만 출력하기(substring 메소드 사용)
		// substring( start ) : start 위치부터 끝까지 문자열 자르기
		// substring( start, end ) : start 위치부터 end 전까지 문자열 자르기
		String result = reqURI.substring(contextPath.length() + 1);
		// System.out.println(result);

		Command service = null;

		if (result.equals("LoginService.do")) {
			// 로그인기능
			service = new LoginService();
		} else if (result.equals("startbootstrap-sb-admin-2-gh-pages/chatsubmitService.do")) {
			// 1대1 채팅 테이블 insert 기능
			service = new chatsubmitService();
		} else if (result.equals("startbootstrap-sb-admin-2-gh-pages/chatsubmitServiceTeam.do")) {
			// 팀 채팅창 서브밋
			service = new chatsubmitServiceTeam();
		} else if (result.equals("startbootstrap-sb-admin-2-gh-pages/chatlistService.do")) {
			// 1대1 채팅창
			service = new chatlistService();
		} else if (result.equals("startbootstrap-sb-admin-2-gh-pages/chatlistServiceTeam.do")) {
			// 팀 채팅창
			service = new chatlistServiceTeam();
		} else if (result.equals("startbootstrap-sb-admin-2-gh-pages/psaService.do")) {
			// 프사
			service = new psaService();
		} else if (result.equals("startbootstrap-sb-admin-2-gh-pages/BoardDeleteService.do")) {
			System.out.println("게시글삭제");
			// 게시글 삭제
			service = new BoardDeleteService();
		} else if (result.equals("startbootstrap-sb-admin-2-gh-pages/BoardWriteService.do")) {
			// 게시글 업로드
			service = new BoardWriteService();
		} else {
			System.out.println("실패");
		}

		String moveURL = service.execute(request, response);
		// response.sendRedirect(moveURL);

		if (moveURL.length() > 50) {
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(moveURL);
		} else {
			response.sendRedirect(moveURL);
		}

	}

}
