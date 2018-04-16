<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value='/resources/css/jquery.minical.css' />" rel="stylesheet" type="text/css">
<script src="<c:url value='/resources/js/jquery-3.2.1.js' />"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
ul, li { list-style: none; }
.container { margin: 10px auto; }
</style>
</head>

<body>

<div class="container">
  <div class="row">
    <div class="col-lg-4">
      <h2>달력</h2>
      <form class="demo-1">
        <input type='text' class="form-control">
      </form>
    </div>
  </div>
</div>
<div>
	<input type="text" id="timepicker">
</div>
<div>
	<input type="button">
	<input type="text" id="customer" readonly="readonly">
	<input type="button">
</div>
<a><input type="text"></a>


<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
<script src="<c:url value='/resources/js/jquery.minical.js' />"></script>
<script>
$(document).ready(function(){
    $('input#timepicker').timepicker({
        timeFormat: 'h:mm p',
        interval: 60,
        minTime: '10',
        maxTime: '6:00pm',
        defaultTime: '11',
        startTime: '10:00',
        dynamic: false,
        dropdown: true,
        scrollbar: true
    });
});
$("form.demo-1 :text").minical();


</script>





</body>
</html>