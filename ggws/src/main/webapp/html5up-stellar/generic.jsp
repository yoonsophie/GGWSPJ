<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic - Stellar by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<h1>동호회 생성하기</h1>
						<p>자신만의 동호회를 만들어보세요!</p>
					</header>

				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">
								<span class="image main"  align="right"><img src="images/pic04.jpg" alt="" />
									<button class="button_custom" style="margin-top:10px; margin-right:10px" onclick="javascript:alert()">사진변경</button>
								</span>
								
							
							<div class="content">
		<div class="container" style="width:900px">
			<h1 class="mb-5 text-center">동호회 만들기</h1>
			<!-- <div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  <a href="BoardMain.jsp"><button class="btn btn-primary" type="button">뒤로가기</button></a>
			  <button class="btn btn-primary" type="button">Button</button>
			</div> -->
			<p></p>
			<div class="table-responsive">
				<form action="#" method="post" enctype="multipart/form-data">
				<!-- 제목 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">동호회 이름</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="동호회 이름을 입력하세요.">
				    </div>
				  </div>
				  <div class="row mb-3" >
				    <label class="col-sm-2 col-form-label" style="margin-top:10px">대표사진</label>
				    <div id="fileimg" class="col-sm-10">		      	
						<p></p>
					    <span class="btn btn-default btn-file">
						    <img id="preview" alt="사진선택">
						    <input type="file" class="form-control" onchange="readURL(this);">
						</span>	    
				    </div>
				  </div>
				  <!-- 제목 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">지역</label>
				    <div class="col-sm-10" style="width:270px" id="filebox">
				      <select class="form-select form-select-sm" aria-label=".form-select-sm example" onchange="categoryChange(this)">
						  <option selected>시/도 선택</option>
						  <option value="1">서울특별시</option>
						  <option value="2">인천광역시</option>
						  <option value="3">경기도</option>
						  <option value="4">대전광역시</option>
						  <option value="5">대구광역시</option>
						  <option value="6">부산광역시</option>
						  <option value="7">강원도</option>
						  <option value="8">광주광역시</option>
						  <option value="9">울산광역시</option>
						  <option value="10">경상남도</option>
						  <option value="11">경상북도</option>
						  <option value="12">전라남도</option>
						  <option value="13">전라북도</option>
						  <option value="14">제주도</option>
						  <option value="15">충청남도</option>
						  <option value="16">충청북도</option>
						</select>
				    </div>
				     <div class="col-sm-10" style="width:230px">
				      	<select id="state" class="form-select form-select-sm" aria-label=".form-select-sm example">
						  <option selected>군/구 선택</option>
						</select>
				    </div>
				  </div>
				  <!-- 제목 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">종목</label>
				    <div class="col-sm-10" style="margin-top:6px">
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="soccer" value="option1" checked>
				        <label class="form-check-label" for="soccer">
				          축구
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="baseball" value="option2">
				        <label class="form-check-label" for="baseball">
				          야구
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="basketball" value="option3">
				        <label class="form-check-label" for="basketball">
				          농구
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="volleyball" value="option4">
				        <label class="form-check-label" for="volleyball">
				          농구
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="row mb-3">
				     <label class="col-sm-2 col-form-label">수준</label>
				    <div class="col-sm-10" style="margin-top:6px">
				      <div class="form-check form-check-inline" style="padding-right:100px">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="1" value="option1" checked>
				        <label class="form-check-label" for="1">
				          level 1
				          <small class="d-block">하</small>
				        </label>
				      </div>
				      <div class="form-check form-check-inline" style="padding-right:100px">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="2" value="option2">
				        <label class="form-check-label" for="2">
				         level 2
				         <small class="d-block">중</small>
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="3" value="option3">
				        <label class="form-check-label" for="3">
				         level 3
				         <small class="d-block">상</small>
				        </label>
				      </div>
				     
				    </div>
				  </div>
				  <!-- 내용 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">소개</label>
				    <div class="col-sm-10">				    	
				      <textarea class="form-control" rows="5" placeholder="팀을 소개해주세요."></textarea>
				   <!-- 파일 업로드 -->   
				    </div>
				  </div>
				 
				  <!-- 등록 및 초기화 -->
				   <div class="d-grid gap-2 d-md-flex justify-content-md-end">
						 <button type="reset" class="btn btn-primary me-md-2">초기화</button>
						 <button class="btn btn-primary me-md-2" type="submit">등록하기</button>
						  <!-- <button class="btn btn-primary" type="button">Button</button> -->
					</div>
				</form>  
				</div>
			</div>
		</div>
								
							</section>
							
							
							

					</div>

				<!-- Footer -->
					<footer id="footer">
						<section>
							<h2>다른 동호회 보러가기</h2>
							<p>다른 동호회를 보러 가시겠숴요? 우짜고 저쩌구</p>
							<ul class="actions">
								<li><a href="football.jsp" class="button">돌아가기</a></li>
							</ul>
						</section>
						<section>
							<h2>문의하기</h2>
							<dl class="alt">
								<dt>Address</dt>
								<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
								<dt>Phone</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>Email</dt>
								<dd><a href="#">information@untitled.tld</a></dd>
							</dl>
							<!-- <ul class="icons">
								<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a></li>
							</ul> -->
						</section>
						<p class="copyright">&copy;이모저모</a>.</p>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>