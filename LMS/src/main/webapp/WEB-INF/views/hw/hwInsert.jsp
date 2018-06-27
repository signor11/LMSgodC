<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>hwInsert.jsp</title>
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
	
<script src="./resources/web/js/jquery.min.js"></script>
</head>
<body>

	<div class="w3-container w3-padding-30 w3-row-padding "style = "padding : 50px">
	<h3>교수용 과제등록</h3>
	<form action="./hwInsert" method="post">
	<input type="text" value="과목명" disabled="disabled"
					style="padding: 8px; display: inline-block; text-align: center;"
					size="5" class="fa-btn btn-1 btn-1e"> 
		<select name="classnum" style="padding: 10px; text-align: center;"
			required="required">
			<option value="" selected hidden="">선택</option>
			<c:forEach items="${classname}" var="n">
				<option value="${n.CLASSNUM}">${n.CLASSNAME}</option>
			</c:forEach>
		</select>
		
		<h6>제목</h6>
		<input type="text" name="hwname" placeholder="제목을 입력해주세요."
			required="required" class="form-control"><br>
		<h6>제출기한</h6>
		<input type="date" name="applydate" required="required" class="form-control"> <br>
		<h6>내용</h6>
		<textarea name="hwinfo" cols="85" rows="13" placeholder="내용을 입력해주세요."
			style="width: 100%;" required="required" class="form-control"></textarea>
		<div>
			<input type="submit" value="등록" class="fa-btn btn-1 btn-1e"/><br>
		</div>
	</form>
	</div>
</body>
</html>