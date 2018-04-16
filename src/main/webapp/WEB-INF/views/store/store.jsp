<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<title>GURUME365-store</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/sockjs-0.3.4.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/chat.css"/>">

<script type="text/javascript">
	$(document).ready(function(){
		$("#sendBtn").click(function(){
			sendMessage();
		});
	});
	//웹 소켓을 지정한 URL로 연결
	//서버랑 연결 -> 에코핸들러로 출력1
	
	var sock = new SockJS("/gurume365/echo-ws");
	//웹 소켓 서버에서 메세지를 보내면 자동으로 실행된다
	//var onMessage = function onMessage //변수
	sock.onmessage = onMessage;
	
	//웹소켓과 연결을 끊고 싶을때 실행하는 메소드
	sock.onclose = onClose;
	
	/* sock.onopen = function(){
		sock.send($("message").val()+"<br/>");
	};*/
	function sendMessage() {
		//WebSocket으로 메세지를 전달.
		sock.send($("#message").val()+"<br/>");
	}
	//evt 파라메타는 WebSocket이 보내준 데이터다.
	//변수안에 function넣음, 변수 생략 가능
	function onMessage(evt) {
		var data = evt.data;
		$("#data").append(data);
		//자동스크롤
		$(".chatDisplay").scrollTop($(".chatDisplay")[0].scrollHeight);
		//sock.close();
	}
	//var onClose 변수 생략
	function onClose(evt) {
		$("data").append("Connection Closed!");
	}
</script>

<body>
<!--ㅁㄴㅇㄹ  -->
	
	<!-- 채팅 버튼 -->
	
	<div class="chat-box">
    	<input type="checkbox" />
    	<label data-expanded="채팅창 닫기" data-collapsed="채팅창 열기"></label>
    		<div class="chat-box-content">
    			<div class="chatDisplay">
    					<br>
    					<span style="text-align: center; font-size: 1.5em;">가게에 메세지를 보내 보세요!</span>
    					<hr class="chatHr">
    					<!-- 채팅데이타 불러오기 -->
 						<div id="data" class="chatData">
 							<c:choose>
 							<c:when test="">
 							<!-- 내 채팅 데이터 -->
 							<div class="container" style="text-align: left;">
  								<img src="<c:url value="/resources/img/chat.png"/>" alt="Avatar">
  								<p>Hello. How are you today?</p>
  								<span class="time-right">11:00</span>
							</div>
							</c:when>
							<c:otherwise>
							<!-- 상대 채팅 데이터 -->
							<div class="container darker" style="text-align: right;">
  								<img src="<c:url value="/resources/img/chat.png"/>" alt="Avatar" class="right">
  								<p>Hey! I'm fine. Thanks for asking!</p>
  								<span class="time-left">11:01</span>
							</div>
							</c:otherwise>
							</c:choose>
 						</div>
 				</div>
    			<div class="sendMessage">
        			<input type="text" class="sendText" id="message"><button class="sendBtn" id="sendBtn">Send</button>
        		</div>
    		</div>
    </div>
	
</body>
</html>