<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	 <meta charset='utf-8' />
  <!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <!-- jquery CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar 언어 CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
  
   <!-- bootstrap 4 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
<style>
  /* body 스타일 */
  html, body {
    overflow: hidden;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
   /*  font-size: 14px; */
  }
  /* 캘린더 위의 해더 스타일(날짜가 있는 부분) */
  .fc-header-toolbar {
    padding-top: 1em;
    padding-left: 1em;
    padding-right: 1em;
  }
  
  	
		@font-face {
    font-family: 'ARCHISCULPTURE_v200';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2303@1.0/ARCHISCULPTURE_v200.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
     @font-face {
    font-family: 'Dovemayo_gothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
  
        .w-font {
            font-family: 'Dovemayo_gothic', sans-serif; /* 웹 폰트 지정 */
        }
        .w-title{
        	 font-family: 'ARCHISCULPTURE_v200', sans-serif;
        }
       

</style>
    <title>SB Admin 2 - Charts</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top" class="w-font">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand 동호회명-->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.jsp">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">동호회명</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.jsp"> <i class="fas fa-fw fa-home"></i> <span>홈으로</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider" />

			<!-- Heading 메뉴-->
			<div class="sidebar-heading">메뉴</div>

			

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="notification.jsp">
					<i class="fas fa-fw fa-chart-area"></i> <span>공지사항</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="calendar.jsp">
					<i class="fas fa-fw fa-calendar"></i> <span>달력</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="board.jsp">
					<i class="fas fa-fw fa-list"></i> <span>게시판</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="ballot.jsp">
					<i class="fas fa-fw fa-check"></i> <span>투표</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="chat.jsp"> <i
					class="fas fa-fw fa-comments"></i> <span>채팅</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="matching.jsp">
					<i class="fas fa-fw fa-handshake"></i> <span>매칭</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="analysis.jsp">
					<i class="fas fa-fw fa-chart-bar"></i> <span>분석</span>
			</a></li>

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
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
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
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        		<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">4+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="notification.jsp">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-bookmark text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2023-04-03</div>
										<span class="font-weight-bold">새로운 공지사항이 등록되었습니다.</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-heart text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2023-04-01</div>
										새로운 친구신청이 있습니다!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-heart text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2023-04-01</div>
										새로운 친구신청이 있습니다!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2023-03-30</div>
										새로운 투표가 진행중입니다.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">더보기</a>
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
								<h6 class="dropdown-header text-s">쪽지함</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_1.svg"
											alt="..." />
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">내일 저녁에 뭐함</div>
										<div class="small text-gray-500">양진영 · 58분 전</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_2.svg"
											alt="..." />
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">내일 진영이가 같이 밥먹자는데?? 님 갈꺼임??</div>
										<div class="small text-gray-500">장영주 · 1시간 22분 전</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_3.svg"
											alt="..." />
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">그럼 다음 경기에 보자</div>
										<div class="small text-gray-500">해모수 · 2일 전</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="..." />
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">아니 어제 무슨일 있었는지 알아? 그냥 뒤에서 놀고있었거든?? 근데 갑자기 진영이가 셔플 춤을 추는거야 대박이지 않냐</div>
										<div class="small text-gray-500">정승원 · 4일 전</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">더보기</a>
							</div></li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                  <!-- Page Heading -->
                    <h1 class="logo_effect" align="center"><img src="img/calendar_icon.png" style="height:80px; margin-right:50px;" "/></h1>

					<div class="col-xl-12">
						<div class="card shadow">
							<div class="card-body">
								<div id='calendar-container'>
									<div id='calendar'></div>
								</div>
							</div>
						</div>
						
					</div>
					<script>
					
							$(function() {
								// calendar element 취득
								var calendarEl = $('#calendar')[0];
								// full-calendar 생성하기
								var calendar = new FullCalendar.Calendar(
										calendarEl,
										{
											height : '700px', // calendar 높이 설정
											expandRows : true, // 화면에 맞게 높이 재설정
											slotMinTime : '08:00', // Day 캘린더에서 시작 시간
											slotMaxTime : '24:00', // Day 캘린더에서 종료 시간
											// 해더에 표시할 툴바
											headerToolbar : {
												left : 'prev,next today',
												center : 'title',
												right : 'dayGridMonth,timeGridWeek,timeGridDay listWeek'
											},
											initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
											//initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
											navLinks : true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
											editable : true, // 수정 가능?
											selectable : true, // 달력 일자 드래그 설정가능
											selectMirror : true,
											nowIndicator : true, // 현재 시간 마크
											dayMaxEvents : true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
											
											locale : 'ko', // 한국어 설정
											/* select: function() {
												$("#myModal").modal("show");	//일자 클릭 시 모달 호출
										      }, */
										      eventClick: function(arg) {
										    	  insertModalOpen(arg);//이벤트 클릭 시 모달 호출
										      },
											  
											eventAdd : function(obj) { // 이벤트가 추가되면 발생하는 이벤트
												console.log(obj);
											},
											eventChange : function(obj) { // 이벤트가 수정되면 발생하는 이벤트
												console.log(obj);

											},
											eventRemove : function(obj) { // 이벤트가 삭제되면 발생하는 이벤트
												console.log(obj);
											},
											
										select : function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
											//insertModalOpen(arg);
											var title = prompt('Event Title:');
											if (title) {
												calendar.addEvent({
													title : title,
													start : arg.start,
													end : arg.end,
													allDay : arg.allDay
												})
											}
										    var allEvent = calendar.getEvents(); // .getEvents() 함수로 모든 이벤트를 Array 형식으로 가져온다. (FullCalendar 기능 참조)
										    
				                            var events = new Array(); // Json 데이터를 받기 위한 배열 선언
				                            for (var i = 0; i < allEvent.length; i++) {
				                                var obj = new Object();     // Json 을 담기 위해 Object 선언
				                                // alert(allEvent[i]._def.title); // 이벤트 명칭 알람
				                                obj.title = allEvent[i]._def.title; // 이벤트 명칭  ConsoleLog 로 확인 가능.
				                                obj.start = allEvent[i]._instance.range.start; // 시작
				                                obj.end = allEvent[i]._instance.range.end; // 끝
				 
				                                events.push(obj);
				                            }
				                            var jsondata = JSON.stringify(events);
				                            console.log(jsondata);
				                            // saveData(jsondata);
				 
				                            $(function saveData(jsondata) {
				                                $.ajax({
				                                    url: "/full-calendar/calendar-admin-update",
				                                    method: "POST",
				                                    dataType: "text",
				                                    data: JSON.stringify(events),
				                                    contentType: 'application/json',
				                                })
				                                    .done(function (result) {
				                                        // alert(result);
				                                    })
				                                    .fail(function (request, status, error) {
				                                         alert("에러 발생" + error);
				                                    });
				                                calendar.unselect()
				                            });
				                        },
										 events:[
											{
												title: '학원가야함',
											    start: '2023-04-01 09:00:00',
											    end: '2023-04-01 10:00:00',
											},
											{
												title: '저녁약속',
												start: '2023-04-04 21:00:00',
												end: '2023-04-01 22:00:00',
												
											},
											{
												title : '프로젝트',
												start: '2023-04-01',
												end: '2023-04-07',
												
											}
											
											
										] 
									});
							// 캘린더 랜더링
							calendar.render();
						});
					</script>
					</div>
					</div>
					</div>
					</div>
					<script
						src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
						integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
						crossorigin="anonymous"></script>


					<!-- End of Main Content -->

					<!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.jsp">Logout</a>
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
    <script src="js/demo/chart-bar-demo.js"></script>

</body>

</html>