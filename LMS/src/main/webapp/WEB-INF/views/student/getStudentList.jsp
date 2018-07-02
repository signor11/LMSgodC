<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>getStudentList.jsp</title>
<script>

	function update_stu() {
		var check = confirm('학생 정보를 수정하시겠습니까?');
		if (check == true) {
			window.location.href = 
		}

	
	function delete_stu() {
		var check = confirm('학생 정보를 삭제하시겠습니까?');
		if (check == true) {
			window.location.href = "./hwDelete?hwnum=${hw.hwnum}"
		}
	
</script>
</head>
<body>

	<br>
	<br>
	<h3 align="center">관리자용 학생 조회</h3>
	<br>
	<br>
	<p align=right>
		<a href="./insertStudent"><button type="button" class="btn btn-danger" >등록</button></a>
	</p>
	<br>
	<br>

	<table class="table table-hover">
		<tr>
			
			<td></td>
			<td>학생번호</td>
			<td>비밀번호</td>
			<td>학생명</td>
			<td>학과번호</td>
			<td>학과명</td>
			<td>연락처</td>
			<td>입학일</td>
			<td>수정</td>
			<td>삭제</td>
			


		</tr>
		<c:forEach items="${serList}" var="h">
		<c:forEach var="a" begin="1" end="10">
			<tr>
				<td>${a}</td>			
				<td>${h.STUDENTNUM}</td>
				<td>${h.STUDENTPW}</td>
				<td>${h.STUDENTNAME}</td>
				<td>${h.MAJORNUM}</td>
				<td>${h.MAJORNAME}</td>
				<td>${h.STUDENTPHONE}</td>
				<td>${h.STARTDATE}</td>
				<td><button type="button" class="btn btn-danger" onclick="update_stu">수정</button></td>
				<td><button type="button" class="btn btn-danger" onclick="delete_stu">삭제</button></td>
				
			</tr>
		</c:forEach>
		</c:forEach>
	</table>
	<br>
	<br>
	<br>
	<br>

</body>
</html>