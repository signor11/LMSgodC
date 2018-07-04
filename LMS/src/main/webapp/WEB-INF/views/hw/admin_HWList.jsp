<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>관리자용 과제확인</title>
<style>
	p{
	    margin-right: 1cm;
	}
</style>
<script>
	function hwInsert(){
		location.href="./hwInsert"
	}
</script>
</head>
<body>

	<br><br>
	<h3 align="center">관리자용 과제 조회</h3>
	<br>
	<br>
	<p align=right><button type="button" class="btn btn-danger" onclick="hwInsert()">등록</button></p>
	<br>
	<br>
	
<table class="table table-hover">
			<tr>
				<td width="200">교수번호</td>
				<td width="200">교수명</td>
				<td width="100">과제번호</td>
				<td>과제제목</td>
				<td>제출기간</td>
				
			</tr>
			<c:forEach items="${HWListPro}" var="h">
			<tr>
				<td>${h.PROFESSORNUM}</td>
				<td>${h.PROFESSORNAME}</td>
				<td>${h.HWNUM}</td>
				<td>
				<a href="./getsubmitHwList?hwnum=${h.HWNUM}&classnum=${h.CLASSNUM}">${h.HWNAME}</a>
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