<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="./JS/jquery-3.6.3.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
	crossorigin="anonymous">
<link rel="stylesheet" href="./assets/css/ballot.css">
<link rel="stylesheet"
	href="./startbootstrap-sb-admin-2-gh-pages/css/sb-admin-2.css">
<style>
</style>
</head>
<body class="sb-nav-fixed">

	<main class="mt-5 pt-5">
		<div class="container-fluid px-4">
			<h1 class="mt-4">투표</h1>
			<div class="card mb-4">
				<div class="card-header">
					<a class="btn btn-primary float-end" href="ballotWrite.jsp">
						<!-- <i class="fas fa-table me-1"></i> --> 만들기
					</a>
				</div>
				<div class="card-body">
					<div class="row">
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>투표종료일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="BallotBoxContentService"
										data-bs-toggle="modal" data-bs-target="#exampleModal"
										id="votesBtn">제목</a></td>
									<td>신석우</td>
									<td>2023-04-04</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-sm-12 col-md-5">
							<div class="dataTables_info" id="dataTable_info" role="status"
								aria-live="polite"></div>
						</div>
						<div class="col-sm-12 col-md-7">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
									<li class="page-item disabled"><a class="page-link">이전</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">다음</a>
									</li>
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
				<form action="BallotBoxDetailService">
					<input type="hidden" name="bbox_seq" value="">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="container-fluid">
								<h4 class="mt-4">투표창</h4>
								<div class="card">
									<div class="card-body">
										<div class="row">
											<div class="col">
												<table class="">
													<tr>
														<td><input type="radio" class="customCheckbox"
															id="cb1" name="choice" value=""> <label for="cb1">1번</label></td>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-primary">확인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
		crossorigin="anonymous"></script>
	<script src="./JS/ballot.js" type="text/javascript"></script>
	<script type="text/javascript"
		src="./static/vendor/datatables/jquery.dataTables.min.js"></script>
</body>
</html>