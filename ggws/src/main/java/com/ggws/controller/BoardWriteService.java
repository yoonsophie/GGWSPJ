package com.ggws.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggws.Command.Command;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.ggws.model.BoardDAO;
import com.ggws.model.BoardVO;

/**
 * Servlet implementation class BoardWriteService
 */
public class BoardWriteService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String path = request.getServletContext().getRealPath("./file");
		System.out.println("저장위치 : "+path);
					
		// 3. 파일의 max size
		int maxSize = 10*1024*1024; // 10MB
		
		// 4. 인코딩 방식(JSP의 charset도 UTF-8로 맞춰주기
		String encoding = "UTF-8";
		
		// 5. 중복제거 -> 파일명 뒤에 숫자로 식별할 수 있게 해주는 객체
		//				: DefaultFileRenamePolicy 객체
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		// 파일 업로드 -> MultipartRequest
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB에 저장하기 위해 게시글 정보 가져오기
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String filename = multi.getFilesystemName("filename");
		String content = multi.getParameter("content");
		
		System.out.println("title : " + title);
		System.out.println("writer : " + writer);
		System.out.println("filename : " + filename);
		System.out.println("content : " + content);
					
		// vo로 담기
		BoardVO vo = new BoardVO(title, writer, filename, content);
		BoardDAO dao = new BoardDAO();
		int cnt = dao.upload(vo);
					
		if(cnt>0) {
			// 업로드 성공
			System.out.println("업로드 성공~");
//			HttpSession session = request.getSession();
//			session.setAttribute("upload_vo", vo);
		}else {
			// 업로드 실패
			System.out.println("업로드 실패~");
		}
		// response.sendRedirect("BoardMain.jsp");
		String moveURL = "board.html";			
		return moveURL;
	}

}
