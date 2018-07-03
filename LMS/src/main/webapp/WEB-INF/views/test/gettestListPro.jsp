<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<body>
<table border="1">
		<tr>
			<td>시험번호</td>
			<td width="100">학번</td>
			<td width="100">학생명</td>
			<td width="500">시험제목</td>
			
		</tr>
		<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.TESTNUM}</td>
			<td>${vo.STUDENTNUM}</td>
			<td>${vo.STUDENTNAME }</td>
			<td>${vo.TESTNAME }</td>
		</tr>

		</c:forEach>
</table>

</body>
</html>