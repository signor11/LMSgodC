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
<br><br>
<h3 align="center">시험출제</h3>
<br><br>
		<br><form action = "./insertTestDetailPro1" method="post" name="sct" class="form-horizontal">
		<table style="width: 1000px" class="table table-hover">
		<tr><td>
			<input type="text" value="과목명" class="bst" style="padding: 10px; display: inline-block; text-align: center;" size="5"/>
			<select name="classnum" class="form" required="required">
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
			</td></tr><tr><td>
			<p class="bst">시험명</p>
			<input type="text" name="testname"
				placeholder="내용을 입력해주세요." class="form" required="required"/>
			<br>
			</td></tr><tr><td>
			<p class="bst">시험일시</p>
			<input type = "date" class="form" name = "testdate"  min="${d}" required="required"/>
			<p class="bst">시작시간</p>
			<input type = "time" class="form" name = "testtime"  min="09:00" max="18:00" required="required" id="aaa" onchange="upinfo();"/>
			<p class="bst">진행시간</p>
			<input type = "number" class="form" name = "testing" min="1" required="required" id="bbb" onchange="upinfo();"/><br><br>
			</td></tr><tr><td>
			<input type="text" name="testinfo" hidden="" id="ccc"/>
			<input type="submit"  value="시험등록" style="left: 25%; position: absolute;" class="btn btn-danger"/>
			</td></tr>
			</table>
			<div style="margin-bottom: 30%"></div>
			</div></form>
</body>
</html>