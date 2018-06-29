<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>hwInsert.jsp</title>

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
	
	function checkDay(){
	
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 

	today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("dateField").setAttribute("min", today);
	}
</script>
<style>
	.d{
		 background-color: @brand-danger;
	}
</style>
</head>
<body>

 
	<div class="w3-container w3-padding-30 w3-row-padding "style = "padding : 50px">
	<h3>교수용 과제등록</h3><br>
	

	
	<form action="./hwInsert" method="post" onsubmit="return submitCheck()" name="hwForm" class="form-inline" role="form">
	<span class="btn btn-danger">과목명</span>
		<div class = "form-group">
		<select name="classnum" class="btn btn-outline-secondary dropdown-toggle" style="padding: 10px; text-align: center;"
			required="required" size="1">
			<option value="" selected hidden="">선택</option>
			<c:forEach items="${classname}" var="n">
				<option value="${n.CLASSNUM}">${n.CLASSNAME}</option>
			</c:forEach>
		</select>
		</div>
		<div class = "form-group">
		<span class="btn btn-danger">제출기한</span>
		<input type="date" class="btn btn-outline-secondary dropdown-toggle" name="applydate" required="required" class="form-control" id="dateField" min="" onclick=" checkDay()">
		</div>
		<br><br>
		
		<div class="form-group">
    <label class="control-label col-md-3" id="d" for="inputSuccess3">제목</label>
    <div class="col-md-9">
      <input type="text" name="hwname" id="hwname" placeholder="제목을 입력해주세요."
				required="required" class="form-control" >
    </div>
  </div>
		
		<!-- <div class = "form-group">
		<label class="control-label col-md-1" for="hwname">제목</label>
			
			<div class="col-md-11">				
				<input type="text" name="hwname" id="hwname" placeholder="제목을 입력해주세요."
				required="required" class="form-control" >
			</div>
		</div> --><br>
		<br><br>
		<span class="btn btn-danger">내용</span><br><br>
		<textarea name="hwinfo" id="hwinfo" rows="50" cols="40"></textarea><br>
		<div>
			<input type="submit" value="등록" class="btn btn-danger"/><br>
		</div>
	</form>
	</div>
</body>
</html>