<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<form action="/gettestListPro" name="cls">
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


<table border="1">
		<tr>
			<td>시험번호</td>
			<td width="100">학번</td>
			<td width="100">학생명</td>
			<td width="500">시험제목</td>
			
		</tr>
		<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.testnum}</td>
			<td>${vo.studentnum}</td>
			<td>${vo.studentname }</td>
			<td>${vo.testname }</td>
		</tr>

		</c:forEach>
</table>

</body>
</html>