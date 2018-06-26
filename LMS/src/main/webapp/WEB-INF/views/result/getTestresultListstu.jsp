<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>예담대학교(학생용)</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
	$(document).ready(function() {

		$("#print").dialog({
			autoOpen : false,
			height : 800,
			width : 1000,
			modal : true,
			open : function(event, ui) {
				$(event.target).load("transcript")
			}		 
		});

		// 버튼 클릭 이벤트(모달 폼이 보이도록)
		$("#btnPrint").click(function() {
			$("#print").dialog("open");
		});
	});
</script>
</head>
<!-- body -->
<body>
	<div align=center>
		<p style="font-size: 34px">성적 조회</p>
		<div style="display: inline-block;">

			<ul style="display: inline-block; align: left;">
				<li>과목별 성적</li>
			</ul>
			<br> <br>
			<p style="color: red;" align="center">※성적상태가 '수강신청'인 과목은 성적입력이 안된
				과목입니다. 담당 교수에게 문의 하시기 바랍니다.</p>

			<table class="table table-hover" style="text-align: center;">
				<tr>
					<td>학생번호</td>
					<td width="400">과목명</td>
					<td>이수학점</td>
					<td>학점</td>
					<td>취득점수</td>
					<td>취득등급</td>
					<td>담당교수</td>
					<td width="100">성적상태</td>
				</tr>
				<c:forEach items="${serList}" var="ser">
					<tr>
						<td>${ser.getStudentnum()}</td>
						<td>${ser.getClassname()}</td>
						<td>${ser.getCredit()}</td>
						<td>${ser.getGrade()}</td>
						<td>${ser.getScore()}</td>
						<td>${ser.getScoret()}</td>
						<td>${ser.getProfessorname()}</td>
						<td>성적확정</td>
					</tr>
				</c:forEach>
			</table>
			<br> <br>
			<div align="center">
				<a href="#" id="btnPrint" class = "btn btn-danger">출력</a>
				<div id="print" title="출력"></div>
			</div>
			<br><br>
		</div>
	</div>
</body>
</html>