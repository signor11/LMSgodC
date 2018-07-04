<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="//www.google.com/jsapi"></script>
<script>
	var options = {
		width : 900,
		height : 500,
		pieHole : 0.4
	};

	//구글api 로딩		
	google.load('visualization', '1.0', {
		'packages' : [ 'corechart' ]
	});

	//구글 api 로딩 되면 콜백부르기
	google.setOnLoadCallback(function() {
		var chart_data1 = [ [ 'answer', 'answercnt' ] ];
		var chart_data2 = [ [ 'answer', 'answercnt' ] ];
		var chart_data3 = [ [ 'answer', 'answercnt' ] ];
		
		$.ajax({

			url : "${pageContext.request.contextPath}/countPoll",
			dataType : "json",
			success : function(res_data) {
				var list1 = res_data['1']
				for (i = 0; i < list1.length; i++) {
					var answerNm = list1[i].answer;
					var cnt = list1[i].answercnt;
					var temp = [ answerNm, parseInt(cnt) ];
					chart_data1.push(temp);
				}
				var chart = new google.visualization.PieChart(document
						.querySelector('#chart_div1'));
				chart.draw(google.visualization.arrayToDataTable(chart_data1),
						options);

				var list2 = res_data['2']
				for (i = 0; i < list2.length; i++) {
					var answerNm = list2[i].answer;
					var cnt = list2[i].answercnt;
					var temp = [ answerNm, parseInt(cnt) ];
					chart_data2.push(temp);
				}

				var chart = new google.visualization.PieChart(document
						.querySelector('#chart_div2'));
				chart.draw(google.visualization.arrayToDataTable(chart_data2),
						options);
				
				var list3 = res_data['3']
				for (i = 0; i < list3.length; i++) {
					var answerNm = list3[i].answer;
					var cnt = list3[i].answercnt;
					var temp = [ answerNm, parseInt(cnt) ];
					chart_data3.push(temp);
				}
				var chart = new google.visualization.PieChart(document
						.querySelector('#chart_div3'));
				chart.draw(google.visualization.arrayToDataTable(chart_data3),
						options);
			}

		});
	});
</script>
</head>
<body>
	<h2 align="center">
		설문 조사 차트
		</h3>
		<br>
		<div align="center">

			<h3>
				<b>1. 전체적으로 수업내용이 체계적으로 구성되었다.</b>
			</h3>
			<br>
			<div id="chart_div1"></div>
			<h3>
				<b>2.강의내용은 해당분야의 지식을 습득하는데 도움이 되었다.</b>
			</h3>
			<br>
			<div id="chart_div2"></div>
			<h3>
				<b>3. 전반적으로 이 수업에 만족하였다.</b>
			</h3>
			<br>
			<div id="chart_div3"></div>
		</div>
</body>
</html>
</body>
</html>