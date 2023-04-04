<%@page import="com.ggws.model.noticeBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="./assets/js/jquery-3-3-1.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<link rel="stylesheet"
	href="./startbootstrap-sb-admin-2-gh-pages/css/sb-admin-2.css">
<style>
.card {
	border-radius: 20px;
}
</style>
</head>
<body>
	<%
	String user_id = (String) request.getAttribute("checkMember");
	List<noticeBoardVO> list = (List<noticeBoardVO>) request.getAttribute("noticeBoardList");
	String userId = "test";
	%>

	<div class="container">
		<div class="col">
			<div class="card">
				<div class="card-body">
					<div class="row mt-3">
						<div class="col text-center">
							<p class="fs-4">공지사항</p>
						</div>
					</div>
					<div class="row py-3">
						<div class="col">
							<div class="input-group w-25 float-right">
								<input type="text" class="form-control"
									aria-label="Recipient's username"
									aria-describedby="button-addon2">
								<button class="btn btn-outline-secondary" type="button"
									id="button-addon2">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="row justify-content-center bg-light text-dark py-3">
						<div class="col-sm-2 text-center align-self-center">#</div>
						<div class="col-sm-3 text-center align-self-center">제목</div>
						<div class="col-sm-3 text-center align-self-center">작성자</div>
						<div class="col-sm-2 text-center align-self-center">일시</div>
						<div class="col-sm-2 text-center align-self-center"></div>
					</div>
					<%
					for (int i = 0; i < list.size(); i++) {
					%>
					<div class="row justify-content-center text-secondary py-3">
						<div class="col-sm-2 text-center align-self-center"><%=i + 1%></div>

						<div class="col-sm-3 text-center align-self-center">
							<a class="link-opacity-75"
								href="noticeBoardDetailService?boardSeq=<%=list.get(i).getBoard_seq()%>"><%=list.get(i).getBoard_title()%></a>
						</div>
						<div class="col-sm-3 text-center align-self-center"><%=list.get(i).getUser_id()%></div>
						<div class="col-sm-2 text-center align-self-center"><%=list.get(i).getBoard_date()%></div>
						<div class="col-sm-2 text-center align-self-center">
							<%
							if (user_id != null) {
							%>
							<button type="button" data-bs-toggle="modal"
								data-bs-target="#exampleModal"
								data-id="<%=list.get(i).getBoard_seq()%>" class="btn btn-modal">
								<i class="bi bi-x-lg"></i>
							</button>
							<%
							}
							%>
						</div>
					</div>
					<%
					}
					%>
					<div class="row py-3">
						<div class="col">
							<a href="createNoticeBoard.jsp"> <%
 if (user_id != null) {
 %>
								<button type="button" class="btn float-right mr-5 p-1">
									<span class="fs-6 text-success">글쓰기</span>
								</button> <%
 }
 %>
							</a>
						</div>
					</div>
					<div class="row">
						<nav aria-label="Page navigation example ">
							<ul class="pagination pagination-sm justify-content-center">
								<li class="page-item"><a class="page-link" href="#">이전</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">다음</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<a href="" class="delete-content">
						<button type="button" class="btn btn-danger">삭제</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(".btn-modal").click(
				function() {
					var data = $(this).data('id');
					$('.delete-content').attr('href',
							`noticeBoardService?boardSeq=${data}`)
				})
	</script>
</body>
</html>