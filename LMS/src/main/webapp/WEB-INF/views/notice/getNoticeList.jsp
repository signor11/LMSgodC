<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div align=center>
	<table class="table table-hover" border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
		</tr>
	
	<c:forEach items="${noticeList}" var="no">
			<tr>
			<td>${no.SEQ }</td>
			<td><a href="getNotice/${no.SEQ}">${no.TITLE}</a></td>
			<td>${no.TITLE}</td>
			<td>${no.WRITER}</td>
			<td>${no.REGDATE}</td>
			</tr>
	</c:forEach>
	</table>
	</div>
	<a href="insertNotice">게시글등록하기</a>
	<!-- 페이징
	<my:paging paging="${paging}"/> 
	<script>
		function doList(page){
			location.href="./getBoardList? page=" + page
		}
	</script> -->
</body>
</html>