<%@page import="com.ggws.model.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ggws.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <!-- botton CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/fonts/icomoon/style.css">

    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="assets/css/style.css">
	<title>회원관리</title>
</head>
<body style="text-align: center;">
<%-- 	<%
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = dao.select();
		System.out.print(list.size());
	%> --%>
	<div class="content">
    
    <div class="container">
      <h1 class="mb-5">회원관리</h1>
      <!-- 회원검색 -->
      <div class="d-grid gap-2 d-md-flex justify-content-md-end">
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      </div>

      <!-- 회원메뉴탭 -->	      
		      <ul class="nav nav-tabs">
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">전체회원</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" aria-current="page" href="JoinMemberManager.jsp">가입신청 회원</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" aria-current="page" href="GhostMemberManager.jsp">휴면회원</a>
		        </li>        
		      </ul>
      <div class="table-responsive">

          <table class="table table-striped custom-table">
            <thead>
            <!-- <th scope="col">회원테이블 헤더</th> -->
              <tr>
                <th scope="col">
                  <label class="control control--checkbox">
                  <input type="checkbox" class="js-check-all"/>
                  <div class="control__indicator"></div>
                  </label>
                </th>
                <th scope="col">이름(계정)</th>
                <th scope="col">회원등급</th>
                <th scope="col" style="width:111px">성별</th>
                <th scope="col">나이</th>
                <th scope="col">신뢰도</th>
                <th scope="col">가입일자</th>
                <th scope="col"></th>
              </tr>
            </thead>
            
            <tfoot>
            <!-- 회원테이블 푸터(회원등급 변경) -->
              <tr>
                <th colspan="2" ></th>
                <th colspan="1" scope="row">선택한 회원</th>
                  <th>
                    <select name="grade" aria-label=".form-select-lg example">
                      <option value="grade_A">정회원</option>
                      <option value="grade_B">준회원</option>
                      <option value="grade_C">신규회원</option>
                      <option value="admin">관리자</option>
                    </select>
                  </th>
                  <th><span>(으)로</span></th>
                  <th></th>
                  <th></th>
                  <th><input type="submit" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                      <label class="btn btn-outline-primary" for="btnradio1">변경</label></th>
              </tr>
              </tfoot>
              
	           <tbody>
	           <!-- 회원테이블 회원리스트
	           		이름(ID), 회원등급, 가입일자, 성별, 신뢰도 -->
<%-- 	             <%for(MemberVO m:list){ %>
		             <tr scope="row">
		              <td>
		                <label class="control control--checkbox">
		                <input type="checkbox" />
		                <div class="control__indicator"></div>
		                </label>
		              </td>
		              <td>
		                <strong><%=m.getUser_nick() %></strong>
		                <small class="d-block"><%=m.getUser_id() %></small>
		              </td>
		              <td>정회원</td>
		              <td><%=m.getUser_gender() %></td>
		              <td><%=m.getUser_age() %></td>
		              <td><%=m.getUser_trust() %></td>
		              <td><%=m.getUser_date() %></td>
		              <td><a href="#" class="more">Delete</a></td> 
		             </tr>	
	             <%} %>       --%>
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
          </nav>

      </div>

    </div>

  </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="assets/js/jquery-3-3-1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>