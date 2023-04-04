<%@page import="com.ggws.model.MemberVO"%>
<%@page import="com.ggws.model.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ggws.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<!-- sytle -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<%
	BoardDAO dao = new BoardDAO();
	List<BoardVO> list = dao.showBoard();	
	MemberVO login_vo = (MemberVO) session.getAttribute("login_vo");
	%>	
	<div class="content">
		<div class="container">
		<!-- 제목 -->
			<h1 class="mb-5">게시판</h1>
			<div class="table-responsive">
			<!-- 게시판
					번호(#), 제목, 이름, 작성일자, (삭제=x) -->
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">제목</th>
				      <th scope="col">이름</th>
				      <th scope="col">작성일자</th>
				      <th></th>
				    </tr>
				  </thead>
				  <tbody class="table-group-divider">
				    <%for(int i=0; i<list.size();i++){ %>
				    <tr>
				      <th scope="row"><%=i+1 %></th>
				      <td><a href="BoardDetail.jsp?board_seq=<%=list.get(i).getBoard_seq()%>"><%=list.get(i).getBoard_title()%></a></td>
				      <td><%=list.get(i).getUser_id() %></td>
				      <td><%=list.get(i).getBoard_date() %></td>
				      
				      <td><a href="BoardDeleteService.do?board_title=<%=list.get(i).getBoard_title()%>">Delete</a></td>
				    </tr>
				    <%} %>
				  </tbody>
				</table>
				 <!-- 회원리스트 페이지 페이지 넘기기 -->
		          <nav aria-label="Page navigation">
		            <ul class="pagination justify-content-center">
		              <li class="page-item">
		                <a class="page-link" href="#" aria-label="Previous">
		                  <span aria-hidden="true">&laquo;</span>
		                </a>
		              </li>
		              <li class="page-item"><a class="page-link" href="#">1</a></li>
		              <li class="page-item"><a class="page-link" href="#">2</a></li>
		              <li class="page-item"><a class="page-link" href="#">3</a></li>
		              <li class="page-item">
		                <a class="page-link" href="#" aria-label="Next">
		                  <span aria-hidden="true">&raquo;</span>
		                </a>
		              </li>
		            </ul>
		            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
						 <a href="BoardWrite.jsp"><button class="btn btn-primary me-md-2" type="button">작성하기</button></a> 
						  <!-- <button class="btn btn-primary" type="button">Button</button> -->
					</div>
		              
		          </nav>
				</div>
			</div>
		</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>