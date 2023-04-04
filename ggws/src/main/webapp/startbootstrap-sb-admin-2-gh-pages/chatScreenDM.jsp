<%@page import="com.ggws.model.psaDAO"%>
<%@page import="com.ggws.model.chatDAO"%>
<%@page import="com.ggws.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/chatScreen.css" />
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
 	<script src="js/bootstrap.js"></script> 
	
	<%
	
		String userID2=null;
		String fromID=null;
		String fromName=null;
		MemberVO login_vo2 = (MemberVO) session.getAttribute("login_vo");
		if(login_vo2 != null){
			fromID=login_vo2.getUser_id();
			fromName = login_vo2.getUser_nick();
		}else{			
			System.out.println("                                                   로긴VO가 NULL이다                   ");
		}
	
		String toID= null;
		String toName = null;
		chatDAO dao1 = new chatDAO();
		if(request.getParameter("toID") != null){
			toID = (String) request.getParameter("toID");
			toName = dao1.getChatName(toID);
		}


 		psaDAO pdao2 = new psaDAO();
		String image = "";
		String psa3 = pdao2.getPsa(login_vo2.getUser_id());
		System.out.println(psa3);
 		if(psa3==null){
			psa3 = "regi_pic.png";
		} 

 		
	%>
	
	
	
	
	<!--  "../ggws2/src/main/java/com/ggws/controller/chatsubmitService" -->
	<script type="text/javascript">
		function submitFunction(){
			var fromID = '<%= fromID%>';
			console.log('프롬아이디 : ', fromID)
			var toID = '<%= toID%>';
			console.log('투아이디 : ', toID)
			var chatContent = $('#chatContent').val();
			$.ajax({
				type:"POST",
				url: "chatsubmitService.do",
				data: {
					fromID : fromID,
					toID : toID,
					chatContent : chatContent,
				},
				success: function(result){
					if(result==0){
						console.log(chatContent)
						console.log(fromID)
						console.log(toID)
					}
				},
				error: () => {
					console.log("submitFunction 실패실패")
				    }
	
			});
			$('#chatContent').val(" ");
		};
		
		var lastID = 0;
		var str = "";
		function chatListFunction(type){
			var fromID = '<%= fromID%>';
			console.log('fromID ::::::: ', fromID)
			var toID = '<%= toID%>';
			var fromName = '<%= fromName%>';
			var toName = '<%= toName%>';
			$.ajax({
				type:"POST",
				url:"chatlistService.do",
				dataType : "JSON",
				data: {
					fromID : fromID,
					toID : toID,
					listType : type
				}, success : function(res){
					console.log(res[0].fromID);
					if(res==null) {console.log("없음")}
					for(var i = 0; i < res.length; i++){
						if(res[i].fromID==fromID){
							res[i].fromID = fromName;
						}else{
							res[i].fromID = toName;
						}
						addChat(res[i].fromID, res[i].chatContent, res[i].chatTime); 
					}
					lastID = res[res.length-1].chatID}
				/* ,error: (e) => {
 					console.log(e);
					console.log("chatListFunction 실패실패") 
				    } */
			});
		};


		function addChat(chatName, chatContent, chatTime){
			$('#chatList').append('<div class="row">'+
					'<div class="col-lg-12">' + 
					'<div class="media">'+
					'<a class="pull-left" href="#">'+
					'<img class="media-object img-circle" style="width:30px; height:30px;" src="img/regi_pic.png" alt="">' +
					'</a>' +
					'<div class="media-body"><span>'+
					'<h4 class="media-heading">'+
					chatName+"\t"+
					'</span><span class="small pull-right">'+
					chatTime +
					'</span>'+
					'</h4>'+
					'<p>'+
					chatContent +
					'</p>'+
					'</div>'+
					'</div>'+
					'</div>'+
					'</div>'+
					'<hr>' );			
			$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
		}
		
		function getInfiniteChat(){
			setInterval(function()	{
			chatListFunction(lastID);
			},1000);
		}
	</script>


</head>
<body>


	<div id="chatList" class="portlet-body chat-widget"
		style="overflow-y: auto; width: auto; height: 600px"></div>
	<div class="portlet-footer">
		<div class="row" style="height: 90px">
			<div class="form-group col-xs-10">
				<textarea style="height: 80px" cols="200px" id="chatContent"
					class="form-control" placeholder="메시지를 입력하세요." maxlength="100"></textarea>
				<button type="button" class="btn btn-default pull-right"
					onclick="submitFunction();">전송</button>
			</div>
			<div class="form-group col-xs-2">
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			chatListFunction('ten');
			getInfiniteChat();
		})
	</script>
</body>
</html>