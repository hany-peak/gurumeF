<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value='/resources/js/jquery-3.2.1.js' />"></script>
<script type="text/javascript">
$(function() {
	
	var areaH = $('#floor-div').height();
	var areaW = $('#floor-div').width();
	var actualH;
	var actualW;
	var sizeRatio;
	
	var tableInfo = new Array();
	
	$.ajax({
		url: 'loadFloor',
		type: 'get',
		dataType: 'json',
		success: function(dat) {
			actualH = JSON.stringify(dat.floorInfo.floor_height);
			actualW = JSON.stringify(dat.floorInfo.floor_width);
			
			
			for(var d of dat.tablesInfo) {
				tableInfo.push({x: JSON.stringify(d.pos_x), y: JSON.stringify(d.pos_y), height: JSON.stringify(d.length), width: JSON.stringify(d.width), shape: d.table_Shape, angle: JSON.stringify(d.degree), min: JSON.stringify(d.person_min), max: JSON.stringify(d.person_max), ID: ('draggable-table' + JSON.stringify(d.table_no))});

				var create_table_no = JSON.stringify(d.table_no);
				var html = '' +
				'<div id="table' + create_table_no + '">' +
				'</div>';
				$( '#floor-' ).append(html);
				
				$('#table' + create_table_no).attr('min', JSON.stringify(d.person_min));
				$('#table' + create_table_no).attr('max', JSON.stringify(d.person_max));
				
				$('table' + create_table_no).width(JSON.stringify(d.width));
				$('table' + create_table_no).height(JSON.stringify(d.length));
				
				$('#table' + create_table_no).addClass('table-' + d.table_shape);
				$('table' + create_table_no).addClass('table-default');
				
				console.log(d.pos_x);
				
			}

			
			setSize();
			alert('불러오기 완료');
		},
		error: function(err) {
			alert('불러오기 오류');
			console.log(err);
		}
	});
	
	function setSize() {
		areaH = $('#floor-div').height();
		areaW = $('#floor-div').width();
		if(areaW/areaH > actualW/actualH) {
			$('#floor-enable').height(areaH);
			$('#floor-enable').width(areaH*(actualW/actualH));
			sizeRatio = actualH/areaH;
		}
		else if(areaW/areaH < actualW/actualH) {
			$('#floor-enable').height(areaW*(actualH/actualW));
			$('#floor-enable').width(areaW);
			sizeRatio = actualW/areaW;
		}
		enableH = actualH/sizeRatio;
		enableW = actualW/sizeRatio;
		
		var t = (areaH-enableH)/2;
		var l = (areaW-enableW)/2;
		// alert(t + ',' + l);
		
		$('#floor-enable').css( 'top', t );
		$('#floor-enable').css( 'left', l);
		
		
		
		for(var i=0; i<tableInfo.length; i++) {
			/*$('#' + tableID[i]).css('left', (tableX[i]/sizeRatio)+parseInt($('#floor-enable').css('left')));
			$('#' + tableID[i]).css('top', (tableY[i]/sizeRatio)+parseInt($('#floor-enable').css('top')));*/
			$('#' + tableInfo[i].ID).css('left', tableInfo[i].x*($('#floor-enable').width()-$('#' + tableInfo[i].ID).width())/100+parseInt($('#floor-enable').css('left')));
			$('#' + tableInfo[i].ID).css('top', tableInfo[i].y*($('#floor-enable').height()-$('#' + tableInfo[i].ID).height())/100+parseInt($('#floor-enable').css('top')));
			
			
		}
	}
	
});

</script>
<title>floor</title>




<style type="text/css">

html { height: 100%; width: 100%; }
body { height: inherit; width: inherit; margin: 0px; }

#floor-div
	{
		height: 100%;
		width: 100%;
		background-color: green;
	}
	
	#floor-enable
	{
		position: relative;
		width: 200px;
		height: 200px;
		background-color: purple;
	}

.table-circle {
	position: absolute;
	border-radius: 50%;
	width: 100%;
	height: 100%;
}

.table-rect {
	position: absolute;
	border-radius: 3%;
	width: 100%;
	height: 100%;
	
}

.table-default {
	background-color: #d0d0d0;
	border: 2px solid #ff4040;
}

.table-noshow {
	
}

.table-reserv {
	
}

</style>



</head>
<body>

	<div id="floor-div"><div id="floor-enable"></div></div>

</body>
</html>