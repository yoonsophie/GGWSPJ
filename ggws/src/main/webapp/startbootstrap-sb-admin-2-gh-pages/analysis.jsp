<%@page import="com.ggws.model.psaDAO"%>
<%@page import="com.ggws.model.MemberDAO"%>
<%@page import="com.ggws.model.MemberVO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.List"%>
<%@page import="com.ggws.model.matchAnalysisVO"%>
<%@page import="com.ggws.model.matchAnalysisDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>이모저모</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    
    <style>
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

</head>

<body id="page-top" class="w-font">
			<%
				MemberVO login_vo = (MemberVO) session.getAttribute("login_vo");
				if (login_vo != null) {
					System.out.print(login_vo.getUser_id());
				}
				
				psaDAO pdao = new psaDAO();
				String psa = pdao.getPsa(login_vo.getUser_id());
				System.out.println("프사 인덱스 화면 : "+psa);
			%>		
    	

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand 동호회명-->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
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

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="chat.jsp">
					<i class="fas fa-fw fa-comments"></i> <span>채팅</span>
			</a></li>

			<!-- Nav Item - calendar -->
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
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                               <%=login_vo.getUser_nick() %>
								<!-- 프로필 사진 프사 -->
								</span> 
								<% if(psa==null){%>
									<img class='img-profile rounded-circle' alt='이미지' src='img/regi_pic.png' >
								<%}else{ %>
									<img class='img-profile rounded-circle' alt='이미지' src='./profilePic/<%=psa%>'>
								<%} %> 
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
                    <h1 class="h3 mb-2 text-gray-800">분석</h1>
                   		<div class="row">

                        <div class="col-xl-8 col-lg-7">

                            <!-- Area Chart -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">전체 팀 경기수</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                    <hr>
                                    
                                </div>
                            </div>

                            <!-- Bar Chart -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">전체 팀 승수</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-bar">
                                        <canvas id="myBarChart"></canvas>
                                    </div>
                                    <hr>
                                </div>
                            </div>

                        </div>
                        <!-- Project -->
                        <div class="col-xl-4 col-lg-6">
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">상대전적</h6>
                                </div>
                                <div class="card-body">
                                <%	BigDecimal num = new BigDecimal(100);
	                                matchAnalysisDAO dao = new matchAnalysisDAO();
	                        		List<matchAnalysisVO> list_a = dao.select_a();
	                        		List<matchAnalysisVO> list_h = dao.select_h();
	                        		List<matchAnalysisVO> list_my = dao.select_my();
	                        		List<matchAnalysisVO> list_1team = dao.select_1team();
	                        		List<matchAnalysisVO> list_4team = dao.select_4team();
	                        		List<matchAnalysisVO> list_win = dao.select_win();
						    		int team1_game = (list_h.get(0).getA_club_game()).intValue();
						    		int team3_game = (list_h.get(1).getA_club_game().add(list_a.get(0).getA_club_game())).intValue();
						    		int team4_game = list_a.get(1).getA_club_game().intValue();
						    		int team1_win = list_win.get(0).getA_club_game().intValue();
						    		int team3_win = list_win.get(1).getA_club_game().intValue();
						    		int team4_win = list_win.get(2).getA_club_game().intValue();
						    		
						    		int num1 = list_my.get(1).getA_club_game().intValue();
						    		int num2 = list_4team.get(1).getA_club_game().intValue();
						 		%>                     	
                                     <h4 class="small font-weight-bold">축구1팀<span
                                            class="float-right"><%=list_my.get(0).getA_club_game() %>전 <%=list_1team.get(0).getA_club_game() %>승 <%= list_1team.get(2).getA_club_game() %>무 <%=list_1team.get(1).getA_club_game() %>패</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width:<%=list_1team.get(0).getA_club_game().multiply(num).divide(list_my.get(0).getA_club_game()) %>%"
                                            aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"><%=list_1team.get(0).getA_club_game().multiply(num).divide(list_my.get(0).getA_club_game()) %>%</div>
                                    </div>
                            
                                    <h4 class="small font-weight-bold">축구2팀 <span
                                            class="float-right">0전 0승 0무 0패</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 0%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">0%</div>
                                    </div>
                                    
                                    <h4 class="small font-weight-bold">축구4팀 <span
                                            class="float-right"><%=list_my.get(1).getA_club_game() %>전 <%=list_4team.get(1).getA_club_game() %>승 <%= list_4team.get(2).getA_club_game() %>무 <%=list_4team.get(0).getA_club_game() %>패</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width:<%=num2*100/num1%>%"
                                            aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"> <%=num2*100/num1%>%</div>
                                    </div>
                                    
                                    <h4 class="small font-weight-bold">E팀 <span
                                            class="float-right">0전 0승 0무 0패</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                                            aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>		
	
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
    
    <script type="text/javascript">
    var team1_game = '<%=team1_game%>';
    var team3_game = '<%=team3_game%>';
    var team4_game = '<%=team4_game%>';
    
    let num1 = parseInt(team1_game);
    let num3 = parseInt(team3_game);
    let num4 = parseInt(team4_game);
    
    var team1_win = '<%=team1_win%>';
    var team3_win = '<%=team3_win%>';
    var team4_win = '<%=team4_win%>';
    
    let win1 = parseInt(team1_win);
    let win3 = parseInt(team3_win);
    let win4 = parseInt(team4_win);
    </script>


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