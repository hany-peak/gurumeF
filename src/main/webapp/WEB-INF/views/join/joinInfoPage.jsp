<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>등록 정보</title>
<link rel="stylesheet" href="<c:url value="/resources/css/store.css"/>">
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.2.1.js'/>">
</script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
font-family: sans-serif;
font-size: large;
}
div{
padding-top: 30px;
}
form{
padding-top: 15px;
}
</style>	
<script type="text/javascript">
	
	function pwcheck(){
		
		var password=document.getElementById('password');
		var password2=document.getElementById('password2');
		if(password.value!=password2.value){
			alert('비밀번호가 일치하지 않습니다.');
			return false;
		}
		return true;
	}
	function resize(){ 
		window.resizeTo(document.body.scrollWidth + 30, 320); 
		}
	
</script>
</head>
<body>
<header class="w3-container w3-black w3-center" style="padding: 80px;">
<div>
<h1 style="color: white;">등록 정보 확인</h1>
</div>
</header>
<div style="margin-top: 100px; margin-left: 580px;">
<form id="updateUsers" action="updateUsers" method="post" onsubmit="return pwcheck();" class="form">
<div class="id" >
이메일<input type="text" id="id" value="${user.id}"  style="margin-left: 70px;">
</div>
<div class="password" >
비밀번호<input type="password" id="password"  style="margin-left: 50px;">
</div>
<div class="password2" >
비밀번호 확인<input type="password" id="password2" style="margin-left: 8px;">
</div>
<div class="name" >
이름<input type="text" id="name"  style="margin-left: 86px;">
</div>
<div class="date_of_birth" >
생년월일<input type="text" id="date_of_birth"  style="margin-left: 50px;">
</div>
<div class="phone" >
전화번호<input type="text" id="phone" style="margin-left: 50px;">
</div>

<div style=" margin-left: 80px; padding-bottom: 80px;" >
<input type="submit" value="수정">
<input type="button" value="취소">
</div>

</form>

<a href="usersOutconfirm">회원탈퇴</a>

</div>

</body>

</html>