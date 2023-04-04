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

    <title>SB Admin 2 - Charts</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
   <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/sb-admin-2.css" rel="stylesheet">
    
    <!-- sweet Alert -->
    <script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.all.min.js
"></script>
<link href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css
" rel="stylesheet">
   

</head>

<body id="page-top">

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
			<li class="nav-item"><a class="nav-link" href="chat.jsp">
					<i class="fas fa-fw fa-comments"></i> <span>채팅</span>
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
                <div class = "tab_menu">
                <div class="container-fluid"> 

                    <!-- Page Heading -->
                    <h1 class="logo_effect" align="center"><img src="img/handshake_icon.png" style="height:80px; margin-right:50px;" "/></h1>
               
               
               
                    <!-- 매칭... -->
                
                   <div class="row">
                    	<div class="col-md-12 mb-4 margin-top">
							<div class="card shadow h-100 py-2">
								<div class="card-body">
				<!-- Nav -->
					<nav id="nav_custom" style="width:100%">
						<ul class="list">
							<li class="is_on"><a class='btn' href="#tab1">축구</a></li>
							<li><a class='btn' href="#tab2">야구</a></li>
							<li><a class='btn' href="#tab3">농구</a></li>
							<li><a class='btn' href="#tab4">배구</a></li>
						</ul>
					</nav>
					<script>
					function request_team(seq){
						Swal.fire({
						  title: '신청하시겠습니까?',
						  text: "신청을 누르면 신청이 가고 심청이가 와서 인당수에 공양미삼백석을 바치니까 고양이 삼백마리가 나왔어요",
						  showCancelButton: true,
						  confirmButtonColor: '#3085d6',
						  cancelButtonColor: '#bbd7f2',
						  confirmButtonText: '신청',
						  cancelButtonText: '취소',
						  reverseButtons: true
						}).then((result) => {
							  if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
							    	// ...실행
							    } else if (result.isDismissed) { // 만약 모달창에서 cancel 버튼을 눌렀다면
							    	// ...실행
							    }
						})
					}
					
					</script>
				
				<div class="cont_area">
				<!-- Main -->
				<div id="tab1" class="cont" style="margin-top:40px">
					<div id="main_custom" >
						<!-- Introduction -->
						<%String names[] = {"최강 축구", "football is my life", "축생", "행복한 Soccer", "내인생은 축구다"}; %>
						<%String borders[] = {"border-bottom-primary", "border-bottom-warning", "border-bottom-info","border-bottom-danger","border-bottom-success"}; %>
						<%String times[] = {"2023-04-05 09:00 보라매축구장", "2023-04-22 20:00 광주과학기술원축구장", "2023-04-23 10:00 해모수축구장", "2023-04-23 14:00 수호네축구장", "2023-05-01 19:00 저기어디축구장"}; %>
						<%for(int i = 0; i < names.length; i++) {%>
							<section id="intro" class="main_custom">
								<div class="card <%=borders[i] %> shadow h-100 ">
								<div class="card-body" >
									<div class="row no-gutters align-items-center ">
										<div class="container-fluid">
											<div class="d-sm-flex align-items-start justify-content-between mb-4">
									
											<h2><%=names[i] %></h2>
											<button class="button_custom" onclick="javascript:request_team()">신청하기</button>
											</div>
											<p><%=times[i] %></p>
										</div>
									</div>
									</div>
								</div>
							</section>
							<%} %>
						</div>
						</div>
						
						<div id="tab2" class="cont" style="margin-top:40px">
						<!-- Main -->
					<div id="main_custom" >

						<!-- Introduction -->
						<%String names2[] = {"야구", "최강 야구", "야! 구!", "안타만이살길"}; %>
						<%String borders2[] = {"border-bottom-primary", "border-bottom-warning", "border-bottom-info","border-bottom-danger"}; %>
						<%String times2[] = {"2023-04-06 11:00 덕흥동야구장", "2023-04-06 17:30 첨단야구장", "2023-04-18 19:00 도산리야구장", "2023-04-20 10:00 시골쥐야구장"}; %>
						<%for(int i = 0; i < 4; i++) {%>
							<section id="intro" class="main_custom">
								<div class="card <%=borders2[i] %> shadow h-100 ">
								<div class="card-body" >
									<div class="row no-gutters align-items-center ">
										<div class="container-fluid">
											<div class="d-sm-flex align-items-start justify-content-between mb-4">
									
											<h2><%=names2[i] %></h2>
											<button class="button_custom" onclick="javascript:request_team()">신청하기</button>
											</div>
											<p><%=times2[i] %></p>
										</div>
									</div>
									</div>
								</div>
							</section>
							<%} %>
							</div>
							</div>
							
							<div id="tab3" class="cont" style="margin-top:40px">
							<!-- Main -->
					<div id="main_custom" >

						<!-- Introduction -->
						<%String names3[] = {"농구사랑", "신장이아니라 심장으로하는거야", "키크는 운동", "버저비터"}; %>
					    <%String borders4[] = {"border-bottom-primary", "border-bottom-warning", "border-bottom-info","border-bottom-danger"}; %>
						<%String times3[] = {"2023-04-08 09:30 풍영체육시설단지농구장", "2023-04-08 20:30 조선대학교일팔극장농구장", "2023-04-16 19:30 전남대학교내농구장", "2023-04-22 10:00 아침부터농구장"}; %>
						<%for(int i = 0; i < names3.length; i++) {%>
							<section id="intro" class="main_custom">
								<div class="card <%=borders4[i] %> shadow h-100 ">
								<div class="card-body" >
									<div class="row no-gutters align-items-center ">
										<div class="container-fluid">
											<div class="d-sm-flex align-items-start justify-content-between mb-4">
									
											<h2><%=names3[i] %></h2>
											<button class="button_custom" onclick="javascript:request_team()">신청하기</button>
											</div>
											<p><%=times3[i] %></p>
										</div>
									</div>
									</div>
								</div>
							</section>
							<%} %>
							</div>
							</div>
							
									<div id="tab4" class="cont" style="margin-top:40px">
							<!-- Main -->
					<div id="main_custom" >

						<!-- Introduction -->
					<%String names4[] = {"손목에 멍좀 들어봤니", "스파이크장인", "배구는 사랑이다"}; %>
					<%String borders5[] = {"border-bottom-primary", "border-bottom-warning", "border-bottom-info"}; %>
					<%String times4[] = {"2023-04-16 15:30 송산근린공원배구장", "2023-04-17 19:00 송산근린공원배구장", "2023-04-28 09:30 운림중배구장"}; %>
						<%for(int i = 0; i < names4.length; i++) {%>
							<section id="intro" class="main_custom">
								<div class="card <%=borders5[i] %> shadow h-100 ">
								<div class="card-body" >
									<div class="row no-gutters align-items-center ">
										<div class="container-fluid">
											<div class="d-sm-flex align-items-start justify-content-between mb-4">
									
											<h2><%=names4[i] %></h2>
											<button class="button_custom" onclick="javascript:request_team()">신청하기</button>
											</div>
											<p><%=times4[i] %></p>
										</div>
									</div>
									</div>
								</div>
							</section>
							<%} %>
							</div>
							</div>
					
					
					
    				</div>
    				</div>
    				</div>
    				</div>
    				</div>
    				</div>
</div>
</div>

						<script>
							const tabList = document
									.querySelectorAll('.tab_menu #nav_custom .list li');
							const contents = document
									.querySelectorAll('.cont_area .cont')
							let activeCont = ''; // 현재 활성화 된 컨텐츠 (기본:#tab1 활성화)

							for (var i = 0; i < tabList.length; i++) {
								tabList[i]
										.querySelector('.btn')
										.addEventListener(
												'click',
												function(e) {
													e.preventDefault();
													for (var j = 0; j < tabList.length; j++) {
														// 나머지 버튼 클래스 제거
														tabList[j].classList
																.remove('is_on');

														// 나머지 컨텐츠 display:none 처리
														contents[j].style.display = 'none';
													}

													// 버튼 관련 이벤트
													this.parentNode.classList
															.add('is_on');

													// 버튼 클릭시 컨텐츠 전환
													activeCont = this
															.getAttribute('href');
													document
															.querySelector(activeCont).style.display = 'block';
												});
							}
						</script>
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