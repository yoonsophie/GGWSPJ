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
		<title>Stellar by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<span class="logo">
							<img src="images/volleyball_icon.png" alt="" style="height:150px"/> 
						</span>
						<h1>이모저모</h1>
						<p>당신을 위한 스포츠 동호회 플랫폼<br />
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="football.jsp">축구</a></li>
							<li><a href="baseball.jsp">야구</a></li>
							<li><a href="basketball.jsp">농구</a></li>
							<li><a href="volleyball.jsp" class="active">배구</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
					<%String names[] = {"손목에 멍좀 들어봤니", "실내운동갑", "제2의김연경은 바로나", "스파이크장인", "배구는 사랑이다"}; %>
						<%String pics[] = {"https://cdn.pixabay.com/photo/2014/11/07/00/00/volleyball-520093__340.jpg","https://cdn.pixabay.com/photo/2015/08/26/09/26/sport-908267__340.jpg","https://cdn.pixabay.com/photo/2016/08/01/16/53/volleyball-team-1561544__340.jpg","https://cdn.pixabay.com/photo/2019/04/07/22/30/volleyball-4110934__340.jpg","https://cdn.pixabay.com/photo/2016/05/17/00/49/volleyball-1397235__340.jpg"}; %>
						<%for(int i = 0; i < 5; i++) {%>
							<section id="intro" class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
										
											<h2><%=names[i] %></h2>
										</header>
										<p>우리 동호회는 말이여 암튼 사람들이 친절허구 말이여 어쩌구 말이여 </p>
										<ul class="actions">
											<li><a href="../startbootstrap-sb-admin-2-gh-pages/index.jsp" class="button">들어가기</a></li>
										</ul>
									</div>
									<span class="image"><img src=<%=pics[i] %> alt="" style="width:150; height:300px"/></span>
								</div>
							</section>
											<%} %>
						

						

						<!-- Get Started -->
							<section id="cta" class="main special">
								<footer class="major">
									<ul class="actions special">
										<li><a href="#intro" class="button">맨 위로</a></li>
									</ul>
								</footer>
							</section>

					</div>

				<!-- Footer -->
					<footer id="footer">
						<section>
							<h2>동호회를 직접 만들고싶으신가요?</h2>
							<p>어쩌고 해서 어쩌구 저쩌고 어쩌고 해서 어쩌구 저쩌고 어쩌고 해서 어쩌구 저쩌고 어쩌고 해서 어쩌구 저쩌고 어쩌고 해서 어쩌구 저쩌고 어쩌고 해서 어쩌구 저쩌고 </p>
							<ul class="actions">
								<li><a href="generic.jsp" class="button">동호회 생성하기</a></li>
							</ul>
						</section>
						<section>
							<h2>문의하기</h2>
							<dl class="alt">
								<dt>주소</dt>
								<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
								<dt>연락처</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>이메일</dt>
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
						<p class="copyright">&copy; 이모저모</a>.</p>
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