<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>hwUpdate.jsp</title>
</head>
<body>
	<div>
		<h2>교수 과제수정</h2>
		<br>
		<form action="./hwUpdate" method="post">
			<input
				type="text" value="과목명" disabled="disabled"
				style="padding: 8px; display: inline-block; text-align: center;"
				size="5"> 
				<input type="text" name="classname" value="${cn.classname}">

			<h6>제목</h6>
			<input type="text" name="hwname"
				value="${hw.hwname}"><br>
			<h6>제출기한</h6>
			<input type="date" name="applydate"
				value="${fn:substring(hw.applydate,0,10)}"> <br>
			<h6>내용</h6>
			<textarea name="hwinfo" cols="85" rows="13" class="scroll_form"
				style="width: 100%;">${hw.hwinfo}</textarea>
			<div class="popup_btn_sec">
				<input type="submit" value="등록" /><br>
			</div>
		</form>
	</div>

</body>
</html>