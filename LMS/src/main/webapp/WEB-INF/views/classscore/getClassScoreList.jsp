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


<style>
	.span{
		color:#6d0909;
		font-weight: bold;
		display:inline-block;
		width:90px;
		text-align: left;
		padding-left: 5px;
	}
	.my-box {
		color:gray;
		border:1px solid; 
		padding:10px; 
	 }
	 .tab{
	 	color:red;
	 	font-size:medium;
	 	font-weight: bold;
	 }
</style>
<script>

	//성적(tab)키 update
	$(function() {
		$("[name=score]").change(function() {
			var classapplynum;
			var param = {
				score : $(this).val(),
				classapplynum : $(this).prev().text()
			};
			$.ajax({
				url : "updateClassapply",
				method : "get",
				data : param,
				dataType :"json"
			}).done(function(data) {
				
				$("#sc" + param.classapplynum).text(data.scoret);
				$("#gr" + param.classapplynum).text(data.grade);
				console.log(data.scoret);
				alert ("수정 완료");
			}).fail(function(){
				alert("수정 실패")
			});
		});
	});

</script>
</head>

<body>
	<!--body -->
	<div align=center style="padding: 80px;">
		<h3 align="center"  style = "padding: 30px;">성적 입력</h3>
	<h6 align="left"><li>과목정보</li></h6>
	<div class="my-box">
		<form method="post" name="CSform" style="text-align: center;">
			<p class="bst">과목명</p>
			<select name="classnum" class="form" onchange="document.CSform.submit()">
				<option value="" selected hidden="">선택</option>
				<c:forEach items="${classname}" var="n">
					<option value="${n.CLASSNUM}"
						<c:if test="${n.CLASSNUM==param.classnum}">selected</c:if>>${n.CLASSNAME}
					</option>
				</c:forEach>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			<p class="bst">수강인원</p><span class = "span">${cnt.CNT}</span>
			<p class="bst">과목명</p><span class = "span">${cnt.CLASSNAME}</span>
			<p class="bst">학점</p><span class = "span">${cnt.CREDIT}</span>
			<p class="bst">최대 수강인원 수</p><span class = "span">${cnt.MAXSTUDENT}</span>
			<p class="bst">수업시간</p><span class = "span" style="width:130px;">${cnt.CLASSTIME}</span>
		</form>
	</div>
	<br> <br>
			<h6 align="left"><li>성적정보</li></h6>
			
			<table class="table table-hover"
				style="border-top:; border-bottom:; border-color: black; text-align: center;">

				<tr>
					<td class="active">번호</td>
					<td class="active">학생번호</td>
					<td class="active" width="400">학생명</td>
					<td class="active">학점</td>
					<td class="active">취득 점수</td>
					<td class="active">취득등급</td>
				</tr>
				<c:forEach items="${insList}" var="ins" varStatus="status">
					<tr>
						<td>${status.index+1}</td>
						<td>${ins.getStudentnum()}</td>
						<td>${ins.getStudentname()}</td>
						<td id="gr${ins.getClassapplynum()}">${ins.getGrade()}</td>
						<td><span style="display: none">${ins.getClassapplynum()}</span>
						<input id="${ins.getClassapplynum()}" class="form" name="score" value="${ins.getScore()}"></td>
						<td id="sc${ins.getClassapplynum()}">${ins.getScoret()}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div align="center">
		<p class="tab">점수를 변경하면 자동저장됩니다. tab키를 눌러주세요</p>
		</div>
		<br> <br>
		<br> <br>
</body>
</html>
