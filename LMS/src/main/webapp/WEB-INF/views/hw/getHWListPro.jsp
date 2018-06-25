<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>getHWListPro.jsp</title>
</head>
<body>
<table border="1">
			<tr>
				<td>과제번호</td>
				<td width="500">과제제목</td>
				<td width="200">제출기간</td>
				<td width="100">수정</td>
				
				
			</tr>
			<c:forEach items="${HWListPro}" var="h">
			<tr>
				<td>${h.HWNUM}</td>
				<td>${h.HWNAME}</td>
				<td>${h.APPLYDATE}</td>
				<td>수정</td>
			</tr>
			</c:forEach>
		</table>
</body>
</html>