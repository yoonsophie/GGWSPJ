<%@page import="com.ggws.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<meta charset='utf-8' />
<!-- ȭ�� �ػ󵵿� ���� ���� ũ�� ����(����� ����) -->
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar ��� CDN -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<style>
/* body ��Ÿ�� */
/* html, body {
    overflow: hidden;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  } */
/* Ķ���� ���� �ش� ��Ÿ��(��¥�� �ִ� �κ�) */
.fc-header-toolbar {
	font-size: 13px;
	padding-top: 1em;
	padding-left: 1em;
	padding-right: 1em;
}
</style>

<title>������������</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet" />
</head>

<body id="page-top">
	
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand ��ȣȸ��-->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">��ȣȸ��</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-home"></i> <span>Ȩ����</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider" />

			<!-- Heading �޴�-->
			<div class="sidebar-heading">�޴�</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages">
					<i class="fas fa-fw fa-folder"></i> <span>Pages</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.html">Login</a> <a
							class="collapse-item" href="register.html">Register</a> <a
							class="collapse-item" href="forgot-password.html">Forgot
							Password</a>
						<div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a
							class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-star"></i> <span>��������</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="calendar.html">
					<i class="fas fa-fw fa-calendar"></i> <span>�޷�</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="board.html">
					<i class="fas fa-fw fa-list"></i> <span>�Խ���</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="ballot.html">
					<i class="fas fa-fw fa-check"></i> <span>��ǥ</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="chat.html"> <i
					class="fas fa-fw fa-comments"></i> <span>ä��</span></a></li>
			<li class="nav-item"><a class="nav-link" href="matching.html">
					<i class="fas fa-fw fa-handshake"></i> <span>��Ī</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="analysis.html"> <i
					class="fas fa-fw fa-chart-bar"></i> <span>�м�</span></a></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block" />

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

			
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2" />
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">
						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2" />
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_1.svg"
											alt="..." />
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler �� 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_2.svg"
											alt="..." />
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun �� 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_3.svg"
											alt="..." />
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez �� 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="..." />
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog �� 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<%
							String login_id = request.getParameter("login_id");
						%>
						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">
								<%-- <%=login_id %> --%>
								�ƹ���
								</span> <img class="img-profile rounded-circle"
								src="img/undraw_profile.svg" />
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800"></h1>
					</div>

					<!-- Content Row -->
					<div class="row">
						<!-- Earnings (Monthly) Card Example -->
						<div class="col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												��������</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
												���ú��� ���ο� ��¼����¼���� ��¼���˴ϴ�</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-check fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-md-6 mb-4">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1">
												���⿡ �� ������</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">
												��¼�����ä���</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-envelope fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

					
					</div>

					<!-- Content Row -->

					<div class="row">
						<!-- Area Chart -->
						<div class="col-xl-10">
							<div class="card shadow">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">�޷�</h6>

								</div>
								<!-- Card Body -->
								<div class="card-body" >
									<!-- �޷ºκ� -->
									<div id='calendar-container'>
										<div id='calendar'></div>
									</div>
								
									<script>
									/*  $.ajax({
										  url: "",
										  type: "POST",
										  data: {'year' : '2023'},
										  dataType: "JSON",
										  traditional: true,
										  async: false, //����
										  success : function(data, status, xhr){
											  //alert(xhr.status);
											  $.each(data, function(key, value){
												    sch = value; //������ ����
												    
											  });
										  },
										  error : function(xhr, status, error){
											    //alert(xhr.responseText);
											  alert('������ �ε� ����<br>���ΰ�ħ ���ּ���');
										  }
										});
										//
 */
										 
										(function() {
											$(function() {
												// calendar element ���
												var calendarEl = $('#calendar')[0];
												// full-calendar �����ϱ�
												var calendar = new FullCalendar.Calendar(
														calendarEl,
														{
															height : '700px', // calendar ���� ����
															expandRows : true, // ȭ�鿡 �°� ���� �缳��
															expandCols : true,
															slotMinTime : '08:00', // Day Ķ�������� ���� �ð�
															slotMaxTime : '24:00', // Day Ķ�������� ���� �ð�
															// �ش��� ǥ���� ����
															headerToolbar : {
																left : 'prev,next today',
																center : 'title',
																right : 'dayGridMonth,timeGridWeek,timeGridDay listWeek'
															},
															initialView : 'dayGridMonth', // �ʱ� �ε� �ɶ� ���̴� Ķ���� ȭ��(�⺻ ����: ��)
															//initialDate: '2021-07-15', // �ʱ� ��¥ ���� (�������� ������ ���� ��¥�� ���δ�.)
															navLinks : true, // ��¥�� �����ϸ� Day Ķ������ Week Ķ������ ��ũ
															//editable: true, // ���� ����?
															//selectable: true, // �޷� ���� �巡�� ��������
															nowIndicator : true, // ���� �ð� ��ũ
															dayMaxEvents : true, // �̺�Ʈ�� �����Ǹ� ���� ���� (+ �� �������� ǥ��)
															locale : 'ko', // �ѱ��� ����
															eventAdd : function(
																	obj) { // �̺�Ʈ�� �߰��Ǹ� �߻��ϴ� �̺�Ʈ
																console
																		.log(obj);
															},
															eventChange : function(
																	obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
																console
																		.log(obj);
															},
															eventRemove : function(
																	obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
																console
																		.log(obj);
															},
															select : function(
																	arg) { // Ķ�������� �巡�׷� �̺�Ʈ�� ������ �� �ִ�.
																var title = prompt('Event Title:');
																if (title) {
																	calendar
																			.addEvent({
																				title : title,
																				start : arg.start,
																				end : arg.end,
																				allDay : arg.allDay
																			})
																}
																calendar
																		.unselect()
															},
															// �̺�Ʈ 
															/* events : [
																	{
																		title : 'All Day Event',
																		start : '2023-03-01',
																	},
																	{
																		title : 'Long Event',
																		start : '2023-03-07',
																		end : '2023-03-10'
																	},
																	{
																		groupId : 999,
																		title : 'Repeating Event',
																		start : '2023-03-09T16:00:00'
																	},
																	{
																		groupId : 999,
																		title : 'Repeating Event',
																		start : '2023-03-16T16:00:00'
																	},
																	{
																		title : 'Conference',
																		start : '2023-03-11',
																		end : '2023-03-13'
																	},
																	{
																		title : 'Meeting',
																		start : '2023-03-12T10:30:00',
																		end : '2023-03-12T12:30:00'
																	},
																	{
																		title : 'Lunch',
																		start : '2023-03-12T12:00:00'
																	},
																	{
																		title : 'Meeting',
																		start : '2023-03-12T14:30:00'
																	},
																	{
																		title : 'Happy Hour',
																		start : '2023-03-12T17:30:00'
																	},
																	{
																		title : 'Dinner',
																		start : '2023-03-12T20:00:00'
																	},
																	{
																		title : 'Birthday Party',
																		start : '2023-03-13T07:00:00'
																	},
																	{
																		title : 'Click for Google',
																		url : 'http://google.com/', // Ŭ���� �ش� url�� �̵�
																		start : '2023-03-28'
																	} ] */
														});
												// Ķ���� ������
												calendar.render();
											});
										})();
									</script>



								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->





			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2021</span>
					</div>
				</div>
			</footer>

			<!-- End of Footer -->
		</div>
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand ��ȣȸ��-->
			

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-crown"></i> <span>ȸ����̵�</span></a>
			</li>

			<!-- Nav Item - Pages Collapse Menu -->
			<!-- <li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>����</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Components:</h6>
						<a class="collapse-item" href="buttons.html">Buttons</a> <a
							class="collapse-item" href="cards.html">Cards</a>
					</div>
				</div></li>

			Nav Item - Utilities Collapse Menu
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities">
					<i class="fas fa-fw fa-wrench"></i> <span>ä�ø��?</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a> <a
							class="collapse-item" href="utilities-border.html">Borders</a> <a
							class="collapse-item" href="utilities-animation.html">Animations</a>
						<a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div></li> -->

			<!-- Divider -->
			<hr class="sidebar-divider" />

			<!-- Heading -->
			<div class="sidebar-heading">ȸ�����</div>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="#">
					<i class="fas fa-fw fa-hashtag"></i> <span>��ƹ���</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">
					<i class="fas fa-fw fa-hashtag"></i> <span>��ƹ���</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">
					<i class="fas fa-fw fa-hashtag"></i> <span>��ƹ���</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">
					<i class="fas fa-fw fa-hashtag"></i> <span>��ƹ���</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">
					<i class="fas fa-fw fa-hashtag"></i> <span>��ƹ���</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">
					<i class="fas fa-fw fa-hashtag"></i> <span>��ƹ���</span>
			</a></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block" />

			<!-- Sidebar Toggler (Sidebar) -->
			<!-- <div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div> -->

			
		</ul>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">��</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>
</body>
</html>