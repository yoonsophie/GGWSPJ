<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동호회 만들기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- font style -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
<!-- sytle -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div class="content">
		<div class="container" style="width:900px">
			<h1 class="mb-5 text-center">동호회 만들기</h1>
			<!-- <div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  <a href="BoardMain.jsp"><button class="btn btn-primary" type="button">뒤로가기</button></a>
			  <button class="btn btn-primary" type="button">Button</button>
			</div> -->
			<p></p>
			<div class="table-responsive">
				<form action="#" method="post" enctype="multipart/form-data">
				<!-- 제목 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">동호회 이름</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" placeholder="동호회 이름을 입력하세요.">
				    </div>
				  </div>
				  <div class="row mb-3" >
				    <label class="col-sm-2 col-form-label" style="margin-top:10px">대표사진</label>
				    <div id="fileimg" class="col-sm-10">		      	
						<p></p>
					    <span class="btn btn-default btn-file">
						    <img id="preview" alt="사진선택">
						    <input type="file" class="form-control" onchange="readURL(this);">
						</span>	    
				    </div>
				  </div>
				  <!-- 제목 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">지역</label>
				    <div class="col-sm-10" style="width:270px" id="filebox">
				      <select class="form-select form-select-sm" aria-label=".form-select-sm example" onchange="categoryChange(this)">
						  <option selected>시/도 선택</option>
						  <option value="1">서울특별시</option>
						  <option value="2">인천광역시</option>
						  <option value="3">경기도</option>
						  <option value="4">대전광역시</option>
						  <option value="5">대구광역시</option>
						  <option value="6">부산광역시</option>
						  <option value="7">강원도</option>
						  <option value="8">광주광역시</option>
						  <option value="9">울산광역시</option>
						  <option value="10">경상남도</option>
						  <option value="11">경상북도</option>
						  <option value="12">전라남도</option>
						  <option value="13">전라북도</option>
						  <option value="14">제주도</option>
						  <option value="15">충청남도</option>
						  <option value="16">충청북도</option>
						</select>
				    </div>
				     <div class="col-sm-10" style="width:230px">
				      	<select id="state" class="form-select form-select-sm" aria-label=".form-select-sm example">
						  <option selected>군/구 선택</option>
						</select>
				    </div>
				  </div>
				  <!-- 제목 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">종목</label>
				    <div class="col-sm-10" style="margin-top:6px">
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="soccer" value="option1" checked>
				        <label class="form-check-label" for="soccer">
				          축구
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="baseball" value="option2">
				        <label class="form-check-label" for="baseball">
				          야구
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="basketball" value="option3">
				        <label class="form-check-label" for="basketball">
				          농구
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="event_exampleRadios" id="volleyball" value="option4">
				        <label class="form-check-label" for="volleyball">
				          농구
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="row mb-3">
				     <label class="col-sm-2 col-form-label">수준</label>
				    <div class="col-sm-10" style="margin-top:6px">
				      <div class="form-check form-check-inline" style="padding-right:100px">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="1" value="option1" checked>
				        <label class="form-check-label" for="1">
				          level 1
				          <small class="d-block">하</small>
				        </label>
				      </div>
				      <div class="form-check form-check-inline" style="padding-right:100px">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="2" value="option2">
				        <label class="form-check-label" for="2">
				         level 2
				         <small class="d-block">중</small>
				        </label>
				      </div>
				      <div class="form-check form-check-inline">
				        <input class="form-check-input" type="radio" name="level_exampleRadios" id="3" value="option3">
				        <label class="form-check-label" for="3">
				         level 3
				         <small class="d-block">상</small>
				        </label>
				      </div>
				     
				    </div>
				  </div>
				  <!-- 내용 입력 -->
				  <div class="row mb-3">
				    <label class="col-sm-2 col-form-label">소개</label>
				    <div class="col-sm-10">				    	
				      <textarea class="form-control" rows="5" placeholder="팀을 소개해주세요."></textarea>
				   <!-- 파일 업로드 -->   
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
	<script src="assets/js/GGWS.js"></script>
</body>
</html>


