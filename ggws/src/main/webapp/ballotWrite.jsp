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
<link rel="stylesheet" href="./assets/css/ballotDetail.css">
<link rel="stylesheet"
	href="./startbootstrap-sb-admin-2-gh-pages/css/sb-admin-2.css">
<script type="text/javascript" src="./assets/js/jquery-3-3-1.min.js"></script>
</head>
<body>
	<%
	String userId = "test";
	int clubSeq = 1;
	%>
	<main class="mt-5 pt-5">
		<div class="container">
			<div class="card">
				<h5 class="card-header border border-primary-subtitle">투표함</h5>
				<div class="card-body">
					<form action="ballotService" method="post">
						<div class="row mb-3">
							<label for="ballotTitle3" class="col-sm-2 col-form-label"
								autofocus>제목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="ballotTitle3"
									name="ballotTitle">
							</div>
						</div>
						<div class="row mb-3">
							<label for="ballotContent1" class="col-sm-2 col-form-label">항목</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="ballotContent1"
									name="ballotContent">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col bbox-content-add">
								<button type="button" class="btn btn-outline-primary"
									id="addContentBtn">항목 추가</button>
								<button type="button" class="btn btn-outline-primary btn-sm"
									id="delContentBtn">삭제</button>
							</div>
						</div>
						<div class="row mb-3">
							<label for="ballotEndDate3" class="col-sm-2 col-form-label">종료일</label>
							<div class="col-sm-10">
								<input type="date" class="form-control" id="ballotEndDate3"
									name="ballotEndDate">
							</div>
						</div>
						<input type="hidden" value="<%=userId%>" name="userId"> <input
							type="hidden" value="<%=clubSeq%>" name="clubSeq">
						<button type="submit" class="btn btn-primary">생성</button>
					</form>
				</div>
			</div>
		</div>
	</main>
	<script src="./assets/js/writeBallot.js" type="text/javascript"></script>

</body>
</html>