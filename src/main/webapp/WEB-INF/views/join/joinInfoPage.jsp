<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="/WEB-INF/views/quickMenu/quickMenu.jsp" %>
<%@ include file="/WEB-INF/views/banner/banner.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="<c:url value="/resources/css/store.css"/>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>등록 정보</title>
<link rel="stylesheet" href="<c:url value="/resources/css/store.css"/>">
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.2.1.js'/>"></script>
<script type="text/javascript">


	function addressPopup(){
		var url="jusoPopup"
		window.open(url,"","width=400,height=400,left=600");
	}
	function addressCallback(roadFullAddr,roadAddrPart1,addrDetail,
			roadAddrPart2,engAddr,jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,
			bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,
			lnbrMnnm,lnbrSlno,emdNo){
		
		document.form.roadAddrPart1.value=roadAddrPart1;
		document.form.addrDetail.value=addrDetail;
		
		var address = $('#address');
		var address2 = $('#address2');
		address.attr("value",roadAddrPart1);
		address2.attr("value",addrDetail);	
		self.close;
	}
	function pwcheck(){
		
		var password=document.getElementById('password');
		var password2=document.getElementById('password2');
		if(password.value!=password2.value){
			alert('비밀번호가 일치하지 않습니다.');
			return false;
		}
		return true;
	}
	
	
	function maxLengthCheck(object){
	    if (object.value.length > object.maxLength){
	        object.value = object.value.slice(0, object.maxLength);
	    }    
	}


	
	$(function() {
		
		/* $.ajax({
			url: 'store/getCategories',
			type: 'get',
			dataType: 'json',
			success: function(dat) {
				var html = '';
				
				for(var d of dat) {
					html += '<option>' +
							d +
							'</option>'
				}
				
				$('#selectCategories').append(html);
			},
			error: function(err) {
				console.log(err);
			}
		}); */
		
		
		
		
		$('#addBusinessBtn').on('click', function(){
			
			var e_company_no = [document.getElementById("company_no1"),
								document.getElementById("company_no2"), 
								document.getElementById("company_no3")
								]
			var e_company_name = document.getElementById("company_name");
			var e_address1 = document.getElementById("address");
			var e_address2 = document.getElementById("address2");
			
			var cnt = 0;
			var e_company_no_all = '';
			for(var i=0; i<e_company_no.length; i++) {
				cnt += e_company_no[i].value.length;
				e_company_no_all += e_company_no[i].value;
				if(i<e_company_no.length-1) {
					e_company_no_all += '-';
				}
			}
			
			if(cnt<10) {
				alert("사업자등록번호를 다시 한번 확인하여 주시기 바랍니다.");
				return;
			}
			else if(e_company_name.value.length<=0) {
				alert("상호명을 입력하여 주시기 바랍니다.");
				return;
			}
			else if(e_address1.value.length<=0||e_address2.value.length<=0) {
				alert("주소를 입력하여 주시기 바랍니다.");
				return;
			}
			
			alert(e_company_no_all + '\n');
			
		});
		
	});
	

	
</script>

<style type="text/css">
	
	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
    	/* display: none; <- Crashes Chrome on hover */
    	-webkit-appearance: none;
    	margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
	}
	
	.userInfoArea {
		border: 2px solid #d0d0d0;
		border-radius: 1%;
		
		width: 600px;
	}
	
	.userInfoDiv {
		width: 100%;
		height: 300px;
		
	}
	
	.addBusinessDiv {
		border-top: 1px solid #d0d0d0;
		width: 100%;
	}
	
	.businessInfoArea {
		width: 600px;
		margin-bottom: 1px;
	}
	
	
</style>


</head>
<body>
<%-- 
<div>

<h1>등록 정보 확인</h1>
</div>
<form id="updateUsers" action="updateUsers" method="post" onsubmit="return pwcheck();">
<div class="id">
이메일<input type="text" id="id" value="${user.id}">
</div>
<div class="password">
비밀번호<input type="password" id="password">
</div>
<div class="password2">
비밀번호 확인<input type="password" id="password2">
</div>
<div class="name">
이름<input type="text" id="name">
</div>
<div>
생년월일<input type="text" id="date_of_birth">
</div>
<div class="phone">
전화번호<input type="text" id="phone" >
</div>
<div>
<div><input type="submit" value="수정"></div>
<div><input type="button" value="취소"></div>
</div>
</form>
 --%>


<div style=" width: auto; height: auto; margin-top: 80px;" align="center">
	<div class = "userInfoArea" align="center">
	
		
		<div class="userInfoDiv">
			<h3>회원 정보</h3>
			<form id="updateUsers" action="updateUsers" method="post" onsubmit="return pwcheck();">
			<ul>
				<li>
					<div class="id">
						이메일<input type="text" id="id" value="${id}">
					</div>
				</li>
				<li>
					<div class="password">
						비밀번호<input type="password" id="password">
					</div>
				</li>
				<li>
					<div class="password2">
						비밀번호 확인<input type="password" id="password2">
					</div>
				</li>
				<li>
					<div class="name">
						이름<input type="text" id="name" value="${name}">
					</div>
				</li>
				<li>
					<div>
						생년월일<input type="text" id="date_of_birth" value="${birth}">
					</div>
				</li>	
				<li>
					<div class="phone">
						전화번호<input type="text" id="phone" value="${phone}">
					</div>
				</li>	
			</ul>
			<div>
			<div><input type="submit" value="수정"><input type="button" value="취소"></div>
			</div>
			</form>	
		</div>
		
		<sec:authorize access="hasRole('ROLE_LICENSEE')">
					
			 <!-- <div class="addBusinessDiv" style="">

				<h3>사업장 추가</h3>
				
				<div>
				사업자번호:&nbsp;<input type="number" id="company_no1" name="" style="width: 30px" maxlength="3" oninput="maxLengthCheck(this)"> &nbsp; - &nbsp;
								<input type="number" id="company_no2" name="" style="width: 20px" maxlength="2" oninput="maxLengthCheck(this)"> &nbsp; - &nbsp;
								<input type="number" id="company_no3" name="" style="width: 50px" maxlength="5" oninput="maxLengthCheck(this)">
				</div>
				상호명:&nbsp;<input type="text" id="company_name" name="" style="width: 80px">
				
				<div>
					전화번호:&nbsp;<input type="number" id="phone_num" placeholder="숫자만 입력">
				</div>
				
				<div>
					업종:&nbsp;
					<select id="selectCategories">
						
					</select>
				</div>
				
				<div>
					영업 시간:&nbsp;
				</div>
				
				<div class="address">
					주소:&nbsp;<input type="text" id="address" readonly="readonly">
				</div>
				<div class="address2">
					상세주소:&nbsp;<input type="text" id="address2" readonly="readonly">
					<input type="button" value="주소검색" onclick="addressPopup();">
				</div>
				
				<div>
					가게 정보:<br>&nbsp;<textarea rows="20" cols="30"></textarea>
				</div>
				
				<br><br>
				<div>
				<button id="addBusinessBtn" style="margin-bottom: 4px;">추가</button>
				</div>
				
			</div>	 --> 
			
		</sec:authorize>
	
	</div>
	
	
	<sec:authorize access="hasRole('ROLE_LICENSEE')">
		<div id="businessInfoArea">
			
		</div>
	</sec:authorize>
	
	
<%-- <sec:authentication property="principal.username"/>님 안녕 --%>


<%-- <sec:authorize access="hasRole('ROLE_LICENSEE')">

<a href="<c:url value="/floor/floor_edit" />">플로어</a>

</sec:authorize> --%>

</div>


</body>
</html>