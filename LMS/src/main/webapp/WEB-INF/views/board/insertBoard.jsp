<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>insertBoard.jsp</title>
</head>
<body>
<!-- 여기서 /는 localhost 바로 밑 -->
<form action="./insertBoard" method="post">
	<input type="text" name="title"/>
	<input type="text" name="content"/>
	<input type="text" name="writer"/>
	<input type="submit" value="등록"/>
</form>
</body>
</html>