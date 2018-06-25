<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>hwInsert.jsp</title>
</head>
<body>


	<h3>교수용 과제등록</h3>
	<form action="/hwInsert" method="post" enctype="multipart/form-data">
	
		<select name="classnum" style="padding: 10px; text-align: center;"
			required="required">
			<option value="" selected hidden="">선택</option>
			<c:forEach items="${classname}" var="n">
				<option value="${n.CLASSNUM}">${n.CLASSNAME}</option>
			</c:forEach>
		</select>
		
		<h6>제목</h6>
		<input type="text" name="hwname" placeholder="제목을 입력해주세요."
			required="required"><br>
		<h6>제출기한</h6>
		<input type="date" name="applydate" required="required"> <br>
		<h6>내용</h6>
		<textarea name="hwinfo" cols="85" rows="13" placeholder="내용을 입력해주세요."
			style="width: 100%;" required="required"></textarea>
		<div>
			<input type="submit" value="등록" /><br>
		</div>
	</form>
</body>
</html>