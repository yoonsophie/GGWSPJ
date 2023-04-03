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
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<!-- <link rel="stylesheet"
	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" /> -->
<link rel="stylesheet"
	href="./startbootstrap-sb-admin-2-gh-pages/css/sb-admin-2.css" />
<script src="./assets/js/jquery-3-3-1.min.js"></script>
<style>
</style>
</head>
<body>

	<!--    임시데이터     -->
	<%
		int club_seq = 1;
		String user_id = "test";
	%>


	<div class="container">
		<div class="card">
			<div class="card-header fs-6">공지사항</div>
			<div class="card-body">
				<form action="noticeBoardWriteService" method="post">
					<!--    임시    -->
					<input type="hidden" name="clubSeq" value="<%=club_seq%>">
					<input type="hidden" name="userId" value="<%=user_id%>">


					<div class="row my-4">
						<label for="inputTitle3" class="col-sm-2 col-form-label">
							<span class="fs-6">제목</span>
						</label>
						<div class="col-sm-10">
							<input type="text" name="title" class="form-control"
								id="inputTitle3">
						</div>
					</div>
					<div class="row">
						<!-- 						TOAST UI Editor
						<div id="editor"></div>	
						<script
							src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"
							type="text/javascript"></script>
						<script
							src="https://uicdn.toast.com/editor/latest/i18n/ko-kr.min.js"
							type="text/javascript"></script> -->
						<div class="col">
							<textarea class="form-control" name="content" rows="9">
							</textarea>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="input-group mt-4">
								<input type="file" class="form-control">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<button type="submit" class="btn float-right my-3" id="insertBtn">
								<span class="fs-6 text-success">저장</span>
							</button>
							<a href="noticeBoard.jsp">
								<button type="button" class="btn float-right my-3" id="closeBtn">
									<span class="fs-6 text-dark">취소</span>
								</button>
							</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- <script type="text/javascript" src="./assets/js/editer.js"></script> -->
</body>
</html>