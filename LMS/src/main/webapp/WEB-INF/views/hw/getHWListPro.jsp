<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>교수용 과제확인</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap -->
<link href="./resources/web/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="./resources/web/css/bootstrap.css" rel='stylesheet' type='text/css' />

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<!-- start slider -->
<link href="./resources/web/css/slider.css" rel="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript"
	src="./resources/web/js/modernizr.custom.28468.js"></script>

<script src="./resources/web/js/jquery.min.js"></script>
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
				<td width="100">수정</td>
				
				
			</tr>
			<c:forEach items="${HWListPro}" var="h">
			<tr>
				<td>${h.HWNUM}</td>
				<td>
				<a href="./getHWList?hwnum=${h.HWNUM}">${h.HWNAME}</a>
				</td>
				<td>${h.APPLYDATE}</td>
				<td>수정</td>
			</tr>
			</c:forEach>
		</table>
</body>
</html>