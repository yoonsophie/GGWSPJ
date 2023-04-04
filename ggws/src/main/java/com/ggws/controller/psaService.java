package com.ggws.controller;

import com.ggws.Command.Command;
import com.ggws.model.MemberDAO;
import com.ggws.model.MemberVO;
import com.ggws.model.psaDAO;
import com.ggws.model.psaVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class psaService implements Command {

	@Override
    public String execute(HttpServletRequest request, HttpServletResponse response)  { 
    	// 파일 업로드 ---> MultipartRequest ---> cos.jar
		// 1. 모든 요청데이터가 들어있는 request 객체
		// 2. 업로드된 파일(이미지)를 저장할 경로(파일을 DB에 저장하지 않고 file에 따로 관리)
		String path = request.getServletContext().getRealPath("/startbootstrap-sb-admin-2-gh-pages/profilePic/");
		System.out.println("저장위치 : " + path);

		// 3. 파일의 max size(용량)
		int maxSize = 10 * 1024 * 1024; // 10MB

		// 4. 인코딩 방식
		String encoding = "UTF-8";

		// 5. 중복제거 -> 파일명 뒤에 숫자로 식별할 수 있게 해주는 객체
		// : DefaultFileRenamePolicy 객체
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		// 파일업로드 ---> MultipartRequest
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, path, maxSize, encoding, rename);
			// DB에 저장하기 위해 게시글 정보 가져오기
			String user_ID = multi.getParameter("userID");
			String userProfilePic = multi.getFilesystemName("userProfilePic");

			
			// VO로 담기
			psaVO vo = new psaVO(user_ID, userProfilePic);
			psaDAO dao = new psaDAO();
			int cnt = dao.uploadPsa(vo);
			
			if (cnt > 0) {
				System.out.println("업로드 성공");
			} else {
				System.out.println("업로드 안됨");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return "profilePic.jsp";
	}
    


}
