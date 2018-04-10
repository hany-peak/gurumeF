<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
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
.nav_city{
font-size:0px;
width:100px;
height:58px;
line-height:58px;
text-align:center;
cursor:pointer;
}
#nav_btn{
background:#920021;
border:0;
width:63px!important;
font-size:13px;
color:#fff;
cursor:pointer;
}
</style>
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

	</head>
	<body>
	
		<!-- Navbar -->
		<div style="position: fixed;"class="w3-bar w3-white w3-card w3-left-align w3-large">
				<a>
					<img id="logo" src="<c:url value="/resources/img/Logo_1.jpg"/>">
				</a>
				<a>지역 전체<input type="checkbox"  /></a>
				<a>서울<input type="checkbox" /></a>
				<a>제주<input type="checkbox" /></a>
				<a>부산<input type="checkbox" /></a>
				
				<button type="button" id="nav_btn">검색</button>
				
				<a>음식 전체<input type="checkbox" /></a>
				<a>한식<input type="checkbox" /></a>
				<a>일식<input type="checkbox" /></a>
				<a>중식<input type="checkbox" /></a>
				<a>양식<input type="checkbox" /></a>
				<button type="button" id="nav_btn">검색</button>
				
		</div>
		<div class="w3-top2" style="margin-top:50px;">
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
	
		
	</body>
</html>