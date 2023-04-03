<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ggws.model.noticeBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="./static/css/sb-admin-2.css">
<script type="text/javascript" src="./JS/jquery-3.6.3.min.js"></script>
<style>
.card, .card-header {
	border-radius: 10px;
}
</style>
</head>
<body>
	<% 
		SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		noticeBoardVO vo = (noticeBoardVO)request.getAttribute("noticeBoardDetail");
	%>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card text-bg-light">
					<div class="card-body">
						<div class="row mb-4 p-3">
							<div class="col fw-bold align-self-center "><%=vo.getBoard_title() %></div>
							<div class="col text-end">
								<span class="small pr-2"><%=vo.getUser_id() %></span> <span class="small "><%= sDate.format(vo.getBoard_date()) %></span>
							</div>
						</div>
						<div class="row my-3 p-3">
							<div class="col"><%=vo.getBoard_content() %></div>
						</div>
						<div class="row pr-2 pt-3">
							<div class="col">
								<button class="btn btn-sm float-right">
									<span class="text-danger">삭제</span>
								</button>
								<button class="btn btn-sm float-right">
									<span class="text-primary ">수정</span>
								</button>
							</div>
						</div>
						<div class="row mb-1 pl-3 pb-3 small">
							<div class="col align-self-center">
								<i class="bi bi-text-left text-body-dark align-self-center"></i>
								<span class="text-body-dark align-self-center fs-6">comment</span>
							</div>
						</div>
						<div class=" d-flex flex-row align-items-center p-3 form-color">

							<img src="https://cdn-icons-png.flaticon.com/512/2815/2815428.png" width="50"
								class="rounded-circle mr-2"> <input type="text"
								class="form-control" placeholder="Enter your comment...">

						</div>
						<div class="card-footer">
							<div class="d-flex flex-row pt-3">
								<img src="https://cdn-icons-png.flaticon.com/512/2815/2815428.png" width="40"
									height="40" class="rounded-circle mr-3">
								<div class="w-100">
									<div class="d-flex justify-content-between align-items-center">
										<div class="d-flex flex-row align-items-center">
											<span class="mr-2">Brian selter</span>
										</div>
										<small>12h ago</small>
									</div>
									<p class="text-justify comment-text mb-0">Lorem ipsum dolor
										sit amet, consectetur adipiscing elit, sed do eiusmod tempor
										incididunt ut labore et dolore magna aliqua. Ut enim ad minim
										veniam</p>
									<div class="d-flex flex-row user-feed"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
		crossorigin="anonymous"></script>
</body>
</html>