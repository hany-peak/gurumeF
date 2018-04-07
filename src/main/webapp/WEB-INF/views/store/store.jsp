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
	<!-- Navbar -->
	
		<div style="position: fixed;"class=" w3-bar w3-dark-grey w3-card w3-left-align w3-large">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-light-grey w3-padding-large w3-hover-white w3-large"
				href="javascript:void(0);" onclick="myFunction()"
				title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a> <a
				href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
			<a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link
				1</a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link
				2</a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link
				3</a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link
				4</a>
		</div>
		<div class="w3-top2" style="margin-top:50;">
			<a href="#" class="w3-button2 w3-white w3-hover-blue">이벤트</a> <a
				href="#" class="w3-button2 w3-white w3-hover-blue">추천 테마</a> <a
				href="#" class="w3-button2 w3-white w3-hover-blue">리뷰</a>
		</div>
		<!-- Navbar on small screens -->
		<div id="navDemo"
			class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
		</div>
	
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
	<!-- Second Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-third w3-center">
				<i class="fa fa-coffee w3-padding-64 w3-text-red w3-margin-right"></i>
			</div>

			<div class="w3-twothird">
				<h1>${sessionScope.zone} ${sessionScope.thema }</h1>
				<h5 class="w3-padding-32">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua. Ut enim ad minim veniam, quis
					nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat.</h5>

				<p class="w3-text-grey">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum consectetur
					adipiscing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat.</p>
			</div>
		</div>
	</div>
	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">Quote of the day: live life</h1>
	</div>
	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-opacity">
		<div class="w3-xlarge w3-padding-32">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				target="_blank">w3.css</a></p>
	</footer>
	<script>
		// Used to toggle the menu on small screens when clicking on the menu button
		function myFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
	</script>
</body>
</html>