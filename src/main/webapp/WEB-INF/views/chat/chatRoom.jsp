<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>채팅룸</title>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/sockjs-0.3.4.js"/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#sendBtn").click(function(){
			sendMessage();
		});
	});
	//웹 소켓을 지정한 URL로 연결
	//서버랑 연결 -> 에코핸들러로 출력
	
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
		//sock.close();
	}
	//var onClose 변수 생략
	function onClose(evt) {
		$("data").append("Connection Closed!");
	}
</script>
</head>
<body>
	<input type="text" id="message"/>
	<input type="button" id="sendBtn" value="SEND"/>
	<div id="data"></div>
</body>
</html>