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
						<h1>�̸�����</h1>
						<p>����� ���� ������ ��ȣȸ �÷���<br />
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="football.jsp">�౸</a></li>
							<li><a href="baseball.jsp">�߱�</a></li>
							<li><a href="basketball.jsp">��</a></li>
							<li><a href="volleyball.jsp" class="active">�豸</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
						<%for(int i = 0; i < 6; i++) {%>
							<section id="intro" class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
										
											<h2>�豸 <%=i+1 %>��</h2>
										</header>
										<p>�츮 ��ȣȸ�� ���̿� ��ư ������� ģ���㱸 ���̿� ��¼�� ���̿� </p>
										<ul class="actions">
											<li><a href="../startbootstrap-sb-admin-2-gh-pages/index.jsp" class="button">����</a></li>
										</ul>
									</div>
									<span class="image"><img src="images/volleyball_pic.jpg" alt="" style="width:150; height:300px"/></span>
								</div>
							</section>
											<%} %>
						

						

						<!-- Get Started -->
							<section id="cta" class="main special">
								<footer class="major">
									<ul class="actions special">
										<li><a href="#intro" class="button">�� ����</a></li>
									</ul>
								</footer>
							</section>

					</div>

				<!-- Footer -->
					<footer id="footer">
						<section>
							<h2>��ȣȸ�� ���� ���������Ű���?</h2>
							<p>��¼�� �ؼ� ��¼�� ��¼�� ��¼�� �ؼ� ��¼�� ��¼�� ��¼�� �ؼ� ��¼�� ��¼�� ��¼�� �ؼ� ��¼�� ��¼�� ��¼�� �ؼ� ��¼�� ��¼�� ��¼�� �ؼ� ��¼�� ��¼�� </p>
							<ul class="actions">
								<li><a href="generic.jsp" class="button">��ȣȸ �����ϱ�</a></li>
							</ul>
						</section>
						<section>
							<h2>�����ϱ�</h2>
							<dl class="alt">
								<dt>�ּ�</dt>
								<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
								<dt>����ó</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>�̸���</dt>
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
						<p class="copyright">&copy; �̸�����</a>.</p>
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