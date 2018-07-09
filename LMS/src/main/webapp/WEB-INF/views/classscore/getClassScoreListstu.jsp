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
<style>
	.p{
		color:black;
		padding-top: 50px;
		}
		
	.tab{
	 	color:red;
	 	font-size:medium;
	 	font-weight: normal;
	 	padding: 30px;
	 	font-weight: bold;
		 }
		 
	 .ul{
		display: inline-block;
		text-align: left;	
		padding-top: 20px;	 
	 }
	 .table table-hover{
	 	padding-top: 70px;
	 }
	 
</style>
<script>
	//새창 열기
	function openprint() {
		window.open("./result", "출력",
						"width=1200, height=1200, toolbar=no, menubar=no, scrollbars=no, resizable=yes");

	}
</script>

</head>
<!-- body -->
<body>
	<div align=center >
		<h3 class = "p">학생용 성적 조회</h3>
		<div style="display: inline-block;">

			<ul class="ul">
				<li>과목별 성적</li>
			</ul>
			<p class="tab">※성적상태가 '수강신청'인 과목은 성적입력이 안된 과목입니다. 담당 교수에게 문의 하시기 바랍니다.</p>
			
			<table class="table table-hover" style="text-align: center;">
				<tr>
					<td class="active">학생번호</td>
					<td class="active" width="700px">과목명</td>
					<td class="active">이수학점</td>
					<td class="active">학점</td>
					<td class="active">취득점수</td>
					<td class="active">취득등급</td>
					<td class="active">담당교수</td>
					<td class="active" width="100">성적상태</td>
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
			<div align="center" style = "padding:50px;">
				<button id="printbtn" type="button" class="btn btn-danger" onclick="javascript:openprint();">출력</button>
			</div>
			
		</div>
	</div>
</body>
</html>