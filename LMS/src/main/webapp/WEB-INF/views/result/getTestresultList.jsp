<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>예담대학교(교수용)</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="../scripts/jquery-3.2.1.min.js"></script>


<script>
	$(function() {
		$("[name=score]").change(function() {
			var classapplynum;
			var param = {

				action : "update",
				score : $(this).val(),
				classapplynum : $(this).prev().text()
			};
			/* $.get("dupCheck.jsp", param, function(data) {
				$("#result").html("jquery: " + data);
			}); */
			$.ajax({
				url : "getTestresultList.jsp",
				method : "get",
				data : param,
				async : false
			}).done(function(data) {
				var list = JSON.parse(data);
				$("#sc" + param.classapplynum).text(list.scoret);
				$("#gr" + param.classapplynum).text(list.grade);
				console.log(list.scoret);
			});
		});
	});

</script>
<style>
body {
	height: 100%;
	width: 100%;
}

body {
	font-family: "San francisco ", sans-serif;
	background-size: cover;
	background-repeat: repeat;
}

}
.mySlides {
	display: none
}

table.t1 td, th {
	border: 1px solid black; padding 10px;
	text-align: center;
	width:
}

table.t1 {
	border-spacing: 0;
	border-collapse: collapse;
}

.page {
	background-color: gray;
	color: white;
}

.active {
	background-color: green;
}

.w3-top {
	background-color: #04B4AE;
}
</style>
</head>

<body>
	<!--body -->
	<div align=center>
		<p style="font-size: 34px">성적 조회</p>
		<div style="display: inline-block;">
			<form method="post" action="inscore_control.jsp" name="insform">
				<input type="hidden" name="action" value="list"> <input
					type="text" value="과목명" disabled="disabled"
					style="padding: 10px; display: inline-block; text-align: center;"
					size="5"> <select name="classnum"
					style="padding: 10px; text-align: center;"
					onchange="document.insform.submit()">
					<option value="DropDown" hidden="" selected="selected">선택</option>
					<c:forEach items="${classname}" var="cl">
						<option value="${cl.classnum}"
							<c:if test="${cl.classnum==param.classnum}">selected</c:if>>
							${cl.classname}</option>
					</c:forEach>
				</select>
			</form>
			<br> <br>
			<table class="table table-hover"
				style="border-top:; border-bottom:; border-color: black; text-align: center;">

				<tr>
					<td>번호</td>
					<td>학생번호</td>
					<td width="400">학생명</td>
					<td>학점</td>
					<td>취득 점수</td>
					<td>취득등급</td>
				</tr>
				<c:forEach items="${insList}" var="ins" varStatus="status">
					<tr>
						<td>${status.index+1}</td>
						<td>${ins.getStudentnum()}</td>
						<td>${ins.getStudentname()}</td>
						<td id="gr${ins.getClassapplynum()}">${ins.getGrade()}</td>
						<td><span style="display: none">${ins.getClassapplynum()}</span><input
							id="${ins.getClassapplynum()}" name="score"
							value="${ins.getScore()}"></td>
						<td id="sc${ins.getClassapplynum()}">${ins.getScoret()}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<br> <br>
		<p style="color: red">점수를 변경하면 자동저장됩니다. tab키를 눌러주세요</p>
		<br> <br>
	</div>
</body>
</html>
