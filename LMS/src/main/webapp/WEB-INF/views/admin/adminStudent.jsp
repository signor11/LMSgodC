<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>addminStudent.jsp</title>
</head>
<body>

	<br>
	<br>
	<h3 align="center">관리자용 학생 조회</h3>
	<br>
	<br>
	<p align=right>
		<button type="button" class="btn btn-danger" onclick="">등록</button>
	</p>
	<br>
	<br>

	<table class="table table-hover">
		<tr>
			<td width="200">학생번호</td>
			<td width="200">비밀번호</td>
			<td width="200">학생명</td>
			<td width="200">학과번호</td>
			<td width="200">학과명</td>
			<td width="200">연락처</td>
			<td width="200">입학일</td>


		</tr>
		<c:forEach items="${HWListPro}" var="h">
			<tr>
				<td>${h.HWNUM}</td>
				<td><a
					href="./getsubmitHwList?hwnum=${h.HWNUM}&classnum=${h.CLASSNUM}">${h.HWNAME}</a>
				</td>
				<td>${h.APPLYDATE}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<br>
	<br>

</body>
</html>