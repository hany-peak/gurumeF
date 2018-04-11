<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<title>GURUME365-store</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"  
	href="<c:url value="/resources/css/store.css"/>">

	
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif
}

.w3-bar, h1, button {
	font-family: "Montserrat", sans-serif
}

.fa-anchor, .fa-coffee {
	font-size: 200px
}
</style>

<body>

	<!-- Header -->
	<header class="w3-container w3-light-grey w3-center"
		style="padding: 80px;">
		<h1 class="w3-margin w3-jumbo">GURUME 365</h1>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-32 w3-container">
		<p class="w3-xlarge w3-container w3-center">당신의 특별한 식사를 위해3</p>
		<div class="w3-content">
			<div class="w3-center image">
				<a href="thema?selector=noshow"><img
					src="<c:url value="/resources/img/noshow.png"/>" alt="Avatar"
					 height="150px"
					style=" width: 30%; padding-right:5px; padding-left:20px;">
				</a> 
				
				<a href="thema?selector=food"> <img src="<c:url value="/resources/img/res.png"/>"
					alt="Avatar"  height="150px"
					style=" width: 30%; padding-right: 5px;">
				</a> 
				
				<a href="thema?selector=thema" ><img
					src="<c:url value="/resources/img/theme.png"/>" alt=""
					 height="150px"
					style="width: 30%; padding-right: 5px;"> 
				</a>

			</div>
		</div>
	</div>
	<!-- 채팅 버튼 -->
	<div class="btn-chat" id="livechat-compact-container" style="visibility: visible; opacity: 1;">
		<div class="btn-holder">
			<a onclick="parent.LC_API.open_chat_window();return false;" href="#" class="link">가게와 채팅</a>
		</div>
	</div>
	
	
</body>
</html>