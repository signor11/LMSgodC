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

<form action="./gettestList" name="cls">
<input type="text" value="과목명" disabled="disabled" style="padding: 10px; display: inline-block; text-align: center;" size="5">

<select name="classnum" style="padding: 10px; text-align: center;" onchange="sumb();">
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



</body>
</html>