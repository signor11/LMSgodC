<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div align="center">
<br><br>
<h1 align="center">시험조회</h1>
<br><br>
<form action="./gettestListPro" name="cls" class="form-horizontal">
<input type="text" value="과목명" class="bst" disabled="disabled" style="padding: 10px; display: inline-block; text-align: center;" size="5">

<select name="classnum" class="form" onchange="sumb();">
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
<div style="margin-bottom: 30%"></div>
</div>


</body>
</html>