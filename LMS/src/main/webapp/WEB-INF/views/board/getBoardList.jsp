<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<h3>게시판목록 mybatis</h3>
	<a href="insertBoardForm">게시글등록하기</a>
	<c:forEach items="${boardList}" var="board">
		<div style="border: 1px solid blue;">
			seq:<a href="updateBoardForm?seq=${board.SEQ}">${board.SEQ}</a><br>
			title:${board.TITLE}<br>
			writer:${board.WRITER}<br>
			content:${board.CONTENT}<br>
			regdate:${board.REGDATE}<br>
		</div>
	</c:forEach>
</body>
</html>