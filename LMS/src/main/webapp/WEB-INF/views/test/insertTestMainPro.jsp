<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Date"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<script>
	/* $(function(){
		$("#ccc").click(function(){
		$("#ccc").val($("#aaa").val()+$("#bbb").val());
		consol.log($("#ccc").val());
	});
	}); */
	function upinfo(){
		$("#ccc").val($("#aaa").val()+"to"+$("#bbb").val());

	}
</script>
</head>
<body>
<c:set var="today" value="<%=new Date() %>"></c:set>
<fmt:formatDate value="${today}" timeStyle="short" pattern="yyyy-MM-dd" var="d"/>
<div align="center" >
<h3 align="left" style="margin-left: 3%;">시험출제</h3>
		<br><form action = "./insertTestDetailPro1" method="post" name="sct">
		<table style="width: 1000px">
		<tr><td>
			<input type="text" value="과목명" disabled="disabled" style="padding: 10px; display: inline-block; text-align: center;" size="5"/>
			<select name="classnum" style="padding: 10px; text-align: center;" required="required">
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
			<br><br>
			</td></tr><tr><td>
			<span class="addButton1 w3-round">시험명</span>
			<input class="w3-border" type="text" name="testname"
				placeholder="내용을 입력해주세요." style="width: 30%; height: 40px" required="required"/>
			<br>
			</td></tr><tr><td>
			<span class="addButton1 w3-round">시험일시</span>
			<input type = "date" name = "testdate"  min="${d}" required="required"/>
			<span class="addButton1 w3-round">시작시간</span>
			<input type = "time" name = "testtime"  min="09:00" max="18:00" required="required" id="aaa" onchange="upinfo();"/>
			<span class="addButton1 w3-round">진행시간</span>
			<input type = "number" name = "testing" min="1" required="required" id="bbb" onchange="upinfo();"/><br><br>
			</td></tr><tr><td>
			<input type="text" name="testinfo" hidden="" id="ccc"/>
			<input type="submit" value="시험등록" style="left: 25%; position: absolute;" />
			</td></tr>
			</table>
			<div style="margin-bottom: 30%"></div>
			</div></form>
</body>
</html>