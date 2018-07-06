
<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.yedam.lms.test.TestVO"%>
    <%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	function sumb(){
		document.cls.submit(); 
	}
</script>
</head>
<body>

<%
String date = ((TestVO)request.getAttribute("list")).getTestdate();
date = date.substring(0,10);
request.setAttribute("date", date);

String time = ((TestVO)request.getAttribute("list")).getTestinfo();
time = time.substring(7,9);
request.setAttribute("time", time);
%> 
<div align="center">
<br><br>
<h1 align="center">시험조회</h1>
<br><br>
<form action="./gettestList" name="cls" class="form-horizontal">
<input type="text" class="bst" value="과목명" disabled="disabled" style="padding: 10px; display: inline-block; text-align: center;" size="5">

<select name="classnum" class="form"  onchange="sumb();">
	<option value="" hidden="" >선택</option>
	<option value="48000001">자바</option>
	<option value="48000002">데이터베이스</option>
	<option value="48000003">소설</option>
	<option value="48000004">시</option>
	<option value="48000005">캐드</option> 
	<option value="48000006">전자기계</option>
	<option value="58000001">영어</option>
	<option value="58000002">수학</option>
</select> 
</form>

<table class="table table-hover">
		<tr>
			<td width="100">시험번호</td>
			<td width="400">시험제목</td>
			<td width="200">응시시간</td>
			<td width="100">제출여부</td>
		</tr>
		<c:if test="${!empty list }">
		<tr>
			<td>${list.testnum}</td>
			<td><a href="testExam?testnum=${list.testnum}&timer=${time }&classnum=${list.classnum}&testname=${list.testname}&temp=123" target="_blank">${list.testname}</a></td>
			<td>${date}<br>${list.testinfo }</td>
			<td>${list.check}</td>
		</tr>
		</c:if>
</table>
<div style="margin-bottom: 30%"></div>
</div>
</body>
</html>