<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<!-- sytle -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div class="content">
		<div class="container">
			<h1 class="mb-5">게시글 작성</h1>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  <a href="BoardMain.jsp"><button class="btn btn-primary" type="button">뒤로가기</button></a>
			 <!--  <button class="btn btn-primary" type="button">Button</button> -->
			</div>
			<p></p>
			<div class="table-responsive">
				<form action="#" method="post" enctype="multipart/form-data">
				<!-- 제목 입력 -->
				  <div class="row mb-3">
				    <label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="제목을 입력하세요.">
				    </div>
				  </div>
				  <!-- 작성자 입력 -->
				  <div class="row mb-3">
				    <label for="inputPassword3" class="col-sm-2 col-form-label" >작성자</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="작성자를 입력하세요.">
				    </div>
				  </div>
				  <!-- 내용 입력 -->
				  <div class="row mb-3">
				    <label for="inputPassword3" class="col-sm-2 col-form-label">내용</label>
				    <div class="col-sm-10">				    	
				      <textarea class="form-control" rows="5" placeholder="내용을 입력하세요."></textarea>
				   <!-- 파일 업로드 -->   
				    </div>
				  </div>
				  <div class="row mb-3">
				    <label for="filename" class="col-sm-2 col-form-label">파일등록</label>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>