<%@page import="com.ggws.model.MemberVO"%>
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
			<%
						String id = request.getParameter("login_id");
						String login_id= (String)request.getAttribute("login");
					%>

				<!-- Header -->
					<header id="header" class="alt">
						<span class="logo">
							<img src="images/sports_icon.png" alt="" style="height:50px"/> 
						</span>
						<h1><%=login_id %></h1>
						<p>당신을 위한 스포츠 동호회 플랫폼<br />
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="index.html" class="active">축구</a></li>
							<li><a href="index2.html">야구</a></li>
							<li><a href="index3.html">농구</a></li>
							<li><a href="index4.html">배구</a></li>
						</ul>
					</nav>
					
				
				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
							<section id="intro" class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
											<h2>축구 1팀</h2>
										</header>
										<p>우리 동호회는 말이여 암튼 사람들이 친절허구 말이여 어쩌구 말이여 </p>
										<ul class="actions">
											<li><a href="#" class="button">들어가기</a></li>
										</ul>
									</div>
									<span class="image"><img src="images/pic01.jpg" alt="" /></span>
								</div>
							</section>
							<section class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
											<h2>Ipsum sed adipiscing</h2>
										</header>
										<p>Sed lorem ipsum dolor sit amet nullam consequat feugiat consequat magna
										adipiscing magna etiam amet veroeros. Lorem ipsum dolor tempus sit cursus.
										Tempus nisl et nullam lorem ipsum dolor sit amet aliquam.</p>
										<ul class="actions">
											<li><a href="generic.html" class="button">Learn More</a></li>
										</ul>
									</div>
									<span class="image"><img src="images/pic01.jpg" alt="" /></span>
								</div>
							</section>
							<section class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
											<h2>Ipsum sed adipiscing</h2>
										</header>
										<p>Sed lorem ipsum dolor sit amet nullam consequat feugiat consequat magna
										adipiscing magna etiam amet veroeros. Lorem ipsum dolor tempus sit cursus.
										Tempus nisl et nullam lorem ipsum dolor sit amet aliquam.</p>
										<ul class="actions">
											<li><a href="generic.html" class="button">Learn More</a></li>
										</ul>
									</div>
									<span class="image"><img src="images/pic01.jpg" alt="" /></span>
								</div>
							</section>
							<section class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
											<h2>Ipsum sed adipiscing</h2>
										</header>
										<p>Sed lorem ipsum dolor sit amet nullam consequat feugiat consequat magna
										adipiscing magna etiam amet veroeros. Lorem ipsum dolor tempus sit cursus.
										Tempus nisl et nullam lorem ipsum dolor sit amet aliquam.</p>
										<ul class="actions">
											<li><a href="generic.html" class="button">Learn More</a></li>
										</ul>
									</div>
									<span class="image"><img src="images/pic01.jpg" alt="" /></span>
								</div>
							</section>


						

						

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
								<li><a href="generic.html" class="button">동호회 생성하기</a></li>
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