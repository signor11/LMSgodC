<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>교수용 과제확인</title>
</head>
<body>

	<br><br>
	<h3 align="center">교수용 과제 조회</h3>
	<br><br><br>
	
<table class="table table-hover">
			<tr>
				<td width="200">과제번호</td>
				<td width="500">과제제목</td>
				<td width="200">제출기간</td>
				
			</tr>
			<c:forEach items="${HWListPro}" var="h">
			<tr>
				<td>${h.HWNUM}</td>
				<td>
				<a href="./getsubmitHwList?hwnum=${h.HWNUM}&classnum=${h.CLASSNUM}">${h.HWNAME}</a>
				</td>
				<td>${h.APPLYDATE}</td>
			</tr>
			</c:forEach>
		</table>
</body>
</html>