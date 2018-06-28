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
<script src="./resources/web/js/ckeditor_4/ckeditor.js"></script>
<script>
	window.onload = function() {
		CKEDITOR.replace("hwinfo");
			}
	function submitCheck(){
	var editor_data = CKEDITOR.instances.hwinfo.getData();
	if(editor_data== ""){
		alert("내용을 입력해주세요.");
		document.hwForm.hwinfo.focus();
		return false;
	}
	return true;
	}
</script>
</head>
<body>

	<div class="w3-container w3-padding-30 w3-row-padding "style = "padding : 50px">
	<h3>교수용 과제등록</h3><br>
	<form action="./hwInsert" method="post" onsubmit="return submitCheck()" name="hwForm">
	<input type="text" value="과목명" readonly="readonly" 
					size="5" class="btn btn-danger"> 
		<select name="classnum" class="custom-select" style="padding: 10px; text-align: center;"
			required="required" size="1">
			<option value="" selected hidden="">선택</option>
			<c:forEach items="${classname}" var="n">
				<option value="${n.CLASSNUM}">${n.CLASSNAME}</option>
			</c:forEach>
		</select>
		
		<input type="text" value="제출기한" readonly="readonly" 
					size="5" class="btn btn-danger"> 
		<input type="date" name="applydate" required="required" class="form-control">
		<br><br>
		
		<input type="text" value="제목" readonly="readonly" 
					size="5" class="btn btn-danger"> 
		<input type="text" name="hwname" placeholder="제목을 입력해주세요."
			required="required" class="form-control"><br>
			
		
		<h6>내용</h6>
		<textarea name="hwinfo" id="hwinfo" rows="50" cols="40"></textarea><br>
		<div>
			<input type="submit" value="등록" class="btn btn-danger"/><br>
		</div>
	</form>
	</div>
</body>
</html>