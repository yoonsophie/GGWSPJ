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

    <title>SB Admin 2 - Charts</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <!-- 게시판 버튼 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body id="page-top" >

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
			<li class="nav-item active"><a class="nav-link">
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider" />

			<!-- Heading 메뉴-->
			<div class="sidebar-heading">메뉴</div>

			

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="notification.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>공지사항</span>
			<li class="nav-item"><a class="nav-link" href="notification.jsp">
					<i class="fas fa-fw fa-chart-area"></i> <span>��������</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="calendar.html">
					<i class="fas fa-fw fa-calendar"></i> <span>달력</span>
			<li class="nav-item"><a class="nav-link" href="calendar.jsp">
					<i class="fas fa-fw fa-calendar"></i> <span>�޷�</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="boardMain.jsp">
					<i class="fas fa-fw fa-list"></i> <span>게시판</span>
			<li class="nav-item"><a class="nav-link" href="board.jsp">
					<i class="fas fa-fw fa-list"></i> <span>�Խ���</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="ballot.html">
					<i class="fas fa-fw fa-check"></i> <span>투표</span>
			<li class="nav-item"><a class="nav-link" href="ballot.jsp">
					<i class="fas fa-fw fa-check"></i> <span>��ǥ</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="chat.html">
					<i class="fas fa-fw fa-comments"></i> <span>채팅</span>
			<li class="nav-item"><a class="nav-link" href="chat.jsp">
					<i class="fas fa-fw fa-comments"></i> <span>ä��</span>
			</a></li>

			<!-- Nav Item - calendar -->
			<li class="nav-item"><a class="nav-link" href="matching.html">
					<i class="fas fa-fw fa-handshake"></i> <span>매칭</span>
			<li class="nav-item"><a class="nav-link" href="matching.jsp">
					<i class="fas fa-fw fa-handshake"></i> <span>��Ī</span>
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
										<span class="font-weight-bold">���ο� ���������� ��ϵǾ����ϴ�.</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-heart text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2023-04-01</div>
										���ο� ģ����û�� �ֽ��ϴ�!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-heart text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2023-04-01</div>
										���ο� ģ����û�� �ֽ��ϴ�!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2023-03-30</div>
										���ο� ��ǥ�� �������Դϴ�.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">������</a>
							</div></li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

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
								<h6 class="dropdown-header text-s">������</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_1.svg"
											alt="..." />
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">���� ���ῡ ����</div>
										<div class="small text-gray-500">������ �� 58�� ��</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_2.svg"
											alt="..." />
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">���� �����̰� ���� ����ڴµ�?? �� ������??</div>
										<div class="small text-gray-500">�念�� �� 1�ð� 22�� ��</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_3.svg"
											alt="..." />
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">�׷� ���� ��⿡ ����</div>
										<div class="small text-gray-500">�ظ�� �� 2�� ��</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="..." />
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">�ƴ� ���� ������ �־����� �˾�? �׳� �ڿ��� ����־��ŵ�?? �ٵ� ���ڱ� �����̰� ���� ���� �ߴ°ž� ������� �ʳ�</div>
										<div class="small text-gray-500">���¿� �� 4�� ��</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">������</a>
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
                    <h1 class="logo_effect" align="center"><img src="img/writing_icon.png" style="height:80px; margin-right:50px;" "/></h1>

                    <!-- Page Heading -->
                    <h1 class="mb-5 text-gray-800 text-center">게시글 작성</h1>


					 <div class="row" >
                    	<div class="col-md-12 mb-4 margin-top">
							<div class="card shadow h-100 py-2">
								<div class="card-body">

                                 
                    <div class="content">
						<div class="container">
							<!-- <h1 class="mb-5">게시글 작성</h1> -->
                    <div class="content" style="overflow-x:hidden;">
						<div class="container" style="overflow-x:hidden; overflow-y:auto;">
							<!-- <h1 class="mb-5">�Խñ� �ۼ�</h1> -->
							<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							  <a href="boardMain.jsp"><button class="btn btn-primary" type="button">뒤로가기</button></a>
							  <a href="board.jsp"><button class="btn btn-primary" type="button">�ڷΰ���</button></a>
							 <!--  <button class="btn btn-primary" type="button">Button</button> -->
							</div>
							<p></p>
							
								<!-- 제목 입력 -->
							<div class="table-responsive" style="overflow-x:hidden;">
								<form action="BoardWriteService" method="post" enctype="multipart/form-data">
								<!-- ���� �Է� -->
								  <div class="row mb-3">
								    <label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
								    <div class="col-sm-10">
								      <input type="text" class="form-control" placeholder="제목을 입력하세요." name="board_title">
								    </div>
								  </div>
								  <!-- 작성자 입력 -->
								  <div class="row mb-3">
								    <label for="inputPassword3" class="col-sm-2 col-form-label" >작성자</label>
								    <div class="col-sm-10">
								      <input type="text" class="form-control" placeholder="작성자를 입력하세요." name="user_id">
								    </div>
								  </div>
								  <!-- 내용 입력 -->
								  <div class="row mb-3">
								    <label for="inputPassword3" class="col-sm-2 col-form-label">내용</label>
								    <div class="col-sm-10">				    	
								      <textarea class="form-control" rows="5" placeholder="내용을 입력하세요." name="board_content"></textarea>
								   <!-- 파일 업로드 -->   
								    </div>
								  </div>
								  <div class="row mb-3">
								    <label for="inputEmail3" class="col-sm-2 col-form-label">파일등록</label>
								  <div class="row mb-2">
								    <label for="inputEmail3" class="col-sm-3 col-form-label">���ϵ��</label>
								    <div class="col-sm-10">
								      <input type="file" name="filename">
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
		</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

                   
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