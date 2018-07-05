<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<div align="center" >
<br>
<br>

		<h3 align="center">강의 조회</h3>
		<br><br><br>
		<div style="display: inline-block;">
			<form name="searchFrm">
				
					<input type="text" value="교수명" disabled="disabled" size="5" style="text-align: center;" class="bst"> 
					<input type="text" name="professorname" placeholder="내용을 입력해주세요" size="40" class="form">
				 	<input type="text" value="강의명" disabled="disabled" size="5" 	style="text-align: center;" class="bst"> 
				 	<input type="text" name="classname" placeholder="내용을 입력해주세요." size="40" class="form">
					<input type="submit" value="조회" size="3" style="text-align: center;"class="btn btn-danger">
<br><br>
				<div>●개설강좌 강의시간 목록</div>
				<br>
				<table class="table table-hover">
					<tr>
						<td>과목번호</td>
						<td>과목명</td>
						<td>강의시간</td>
						<td>교수명</td>
						<td>학점</td>
						<td>수강인원</td>
					</tr>
					<c:forEach items="${classlist}" var="v">
						<tr>
							<td>${v.CLASSNUM}</td>
							<td>${v.CLASSNAME}</td>
							<td>${v.CLASSTIME}</td>
							<td>${v.PROFESSORNAME}</td>
							<td>${v.CREDIT}</td>
							<td>${v.MAXSTUDENT}</td>
						</tr>
					</c:forEach>
					
				</table>
			</form>
			<!-- 페이징 -->
			<my:paging paging="${paging}" />
			<script>
				function doList(page) {
					location.href = "./getClassList?page=" + page
				}
			</script>
		</div>
	</div>


	<br>
	<br>
	<br>

</body>
</html>