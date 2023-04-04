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
		<title>이모저모</title>
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
							<img src="images/football_icon.png" alt="" style="height:150px"/> 
						</span>
						<h1>이모저모</h1>
						<p>당신을 위한 스포츠 동호회 플랫폼<br />
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="football.jsp" class="active">축구</a></li>
							<li><a href="baseball.jsp">야구</a></li>
							<li><a href="basketball.jsp">농구</a></li>
							<li><a href="volleyball.jsp">배구</a></li>
						</ul>
					</nav>
					
				
				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
						<%String names[] = {"최강 축구", "축구만이살길", "football is my life", "축생", "행복한 Soccer", "내인생은 축구다"}; %>
						<%String pics[] = {"images/soccer_pic.jpg", "https://cdn.pixabay.com/photo/2016/05/16/21/07/football-1396740__340.jpg", "https://cdn.pixabay.com/photo/2017/06/26/19/53/team-2444978__340.jpg", "https://cdn.pixabay.com/photo/2016/04/26/22/41/people-1355497__340.jpg", "https://cdn.pixabay.com/photo/2016/03/21/21/18/door-husband-1271621__340.jpg", "https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235__340.jpg"}; %>
						<%for(int i = 0; i < 6; i++) {%>
							<section id="intro" class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
										
											<h2><%=names[i] %></h2>
										</header>
										<%if(i==0){ %>
										<p>- 긍정적인 생각! 긍정적인 축구! 긍생~긍축</p>
										<p>- 행복한 축구를 하고자 합니다 E환영♬</p>
										<p>- 신생이라 포지션 상관없이 구하고 있어요</p>
										<p>- ☆카★풀☆가★능</p>
										<%} else if(i==1){ %>
										<p>- 매주 일요일 오전 9시 마다 축구를 하는 최강 축구팀 입니다</p>
										<p>- 평균 연령 : 40대</p>
										<p>- FK포지션 모집중입니다</p>
										<p>- 광산구 거주자 환영해요~</p>
										<%} else if(i==2){%>
										<p>- Football Is My Life</p>
										<p>- 노래 잘하시는 분 모집합니다</p>
										<p>- 평균 연령 : 30대</p>
										<p>- 회식 좋아하시고 술 좋아하신다면 바로 이곳이에요</p>
										<%} else if(i==3){%>
										<p>- 축구는 뭐라고 생각하시나요</p>
										<p>- 저는 그렇게 생각합니다</p>
										<p>- 우리 인생이라고 말이죠</p>
										<%} else{%>
										<p>- 어쩌고</p>
										<%} %>
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