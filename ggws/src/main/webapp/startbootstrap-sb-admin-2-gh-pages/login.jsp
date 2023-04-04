<%@page import="com.ggws.controller.LoginService"%>
<%@page import="com.ggws.model.MemberVO"%>
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

<body class="bg-gradient-primary" >

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block" style="background-position: center; background-size: cover;">
                            	<img alt="" src="img/sports_pic.png"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h1 mb-4 w-title" style="font-weight:bold; font-size:60px">이모저모</h1>
                                    </div>
									<form class="user w-font" action="../LoginService.do" method="post">
                                        <div class="form-group">
                                            <input type="text" name="user_id" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="아이디">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="user_pw" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="비밀번호">
                                    
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">기억하기</label>
                                            </div>
                                        </div>
                                        <!-- <button><input type="submit" value="확인"></button> -->
                                        <button class="btn btn-primary btn-user btn-block">로그인</button>
                                       <!--  <a  class="btn btn-primary btn-user btn-block">
                                            로그인
                                        </a>
										 -->
                                        <hr>
                                        <a  class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> 구글 로그인
                                        </a>
                                    </form>
                                       
                                    <hr >
                                    <div class="text-center w-font">
                                        <a class="small" href="forgot-password.jsp">비밀번호를 잊어버리셨나요?</a>
                                    </div>
                                    <div class="text-center w-font">
                                        <a class="small" href="register.jsp">회원가입</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

</body>

</html>