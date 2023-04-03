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
						<h1>��ȣȸ �����ϱ�</h1>
						<p>�ڽŸ��� ��ȣȸ�� ��������!</p>
					</header>

				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">
								<span class="image main"  align="right"><img src="images/pic04.jpg" alt="" />
									<button class="button_custom" style="margin-top:10px; margin-right:10px" onclick="javascript:alert()">��������</button>
								</span>
								
							
							<div class="content">
		<div class="container" style="width:900px">
			<h1 class="mb-5 text-center">��ȣȸ �����</h1>
			<!-- <div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  <a href="BoardMain.jsp"><button class="btn btn-primary" type="button">�ڷΰ���</button></a>
			  <button class="btn btn-primary" type="button">Button</button>
			</div> -->
			<p></p>
			<div class="table-responsive">
				<form action="#" method="post" enctype="multipart/form-data">
				<!-- ���� �Է� -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">��ȣȸ �̸�</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="��ȣȸ �̸��� �Է��ϼ���.">
				    </div>
				  </div>
				  <div class="row mb-3" >
				    <label class="col-sm-2 col-form-label" style="margin-top:10px">��ǥ����</label>
				    <div id="fileimg" class="col-sm-10">		      	
						<p></p>
					    <span class="btn btn-default btn-file">
						    <img id="preview" alt="��������">
						    <input type="file" class="form-control" onchange="readURL(this);">
						</span>	    
				    </div>
				  </div>
				  <!-- ���� �Է� -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">����</label>
				    <div class="col-sm-10" style="width:270px" id="filebox">
				      <select class="form-select form-select-sm" aria-label=".form-select-sm example" onchange="categoryChange(this)">
						  <option selected>��/�� ����</option>
						  <option value="1">����Ư����</option>
						  <option value="2">��õ������</option>
						  <option value="3">��⵵</option>
						  <option value="4">����������</option>
						  <option value="5">�뱸������</option>
						  <option value="6">�λ걤����</option>
						  <option value="7">������</option>
						  <option value="8">���ֱ�����</option>
						  <option value="9">��걤����</option>
						  <option value="10">��󳲵�</option>
						  <option value="11">���ϵ�</option>
						  <option value="12">���󳲵�</option>
						  <option value="13">����ϵ�</option>
						  <option value="14">���ֵ�</option>
						  <option value="15">��û����</option>
						  <option value="16">��û�ϵ�</option>
						</select>
				    </div>
				     <div class="col-sm-10" style="width:230px">
				      	<select id="state" class="form-select form-select-sm" aria-label=".form-select-sm example">
						  <option selected>��/�� ����</option>
						</select>
				    </div>
				  </div>
				  <!-- ���� �Է� -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">����</label>
				    <div class="col-sm-10" style="margin-top:6px">
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="soccer" value="option1" checked>
				        <label class="form-check-label" for="soccer">
				          �౸
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="baseball" value="option2">
				        <label class="form-check-label" for="baseball">
				          �߱�
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="basketball" value="option3">
				        <label class="form-check-label" for="basketball">
				          ��
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="volleyball" value="option4">
				        <label class="form-check-label" for="volleyball">
				          ��
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="row mb-3">
				     <label class="col-sm-2 col-form-label">����</label>
				    <div class="col-sm-10" style="margin-top:6px">
				      <div class="form-check form-check-inline" style="padding-right:100px">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="1" value="option1" checked>
				        <label class="form-check-label" for="1">
				          level 1
				          <small class="d-block">��</small>
				        </label>
				      </div>
				      <div class="form-check form-check-inline" style="padding-right:100px">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="2" value="option2">
				        <label class="form-check-label" for="2">
				         level 2
				         <small class="d-block">��</small>
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="3" value="option3">
				        <label class="form-check-label" for="3">
				         level 3
				         <small class="d-block">��</small>
				        </label>
				      </div>
				     
				    </div>
				  </div>
				  <!-- ���� �Է� -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">�Ұ�</label>
				    <div class="col-sm-10">				    	
				      <textarea class="form-control" rows="5" placeholder="���� �Ұ����ּ���."></textarea>
				   <!-- ���� ���ε� -->   
				    </div>
				  </div>
				 
				  <!-- ��� �� �ʱ�ȭ -->
				   <div class="d-grid gap-2 d-md-flex justify-content-md-end">
						 <button type="reset" class="btn btn-primary me-md-2">�ʱ�ȭ</button>
						 <button class="btn btn-primary me-md-2" type="submit">����ϱ�</button>
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
							<h2>�ٸ� ��ȣȸ ��������</h2>
							<p>�ٸ� ��ȣȸ�� ���� ���ðڽ���? ��¥�� ��¼��</p>
							<ul class="actions">
								<li><a href="football.jsp" class="button">���ư���</a></li>
							</ul>
						</section>
						<section>
							<h2>�����ϱ�</h2>
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
						<p class="copyright">&copy;�̸�����</a>.</p>
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