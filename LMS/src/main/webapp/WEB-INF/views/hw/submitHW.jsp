<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    	
<!DOCTYPE html>
<html>
<head>
<title>학생용 과제 제출</title>
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
<div class="w3-container w3-padding-30 w3-row-padding "style = " padding : 100px; max-width: 1500px">
<h3 class="w3-wide">과제설명</h3>

		<div>
			<h6>과제명</h6>
			<input name="submitname" type="text"
				readonly="readonly" value="${sb.hwname}" class="w3-input w3-border"><br> <br>
			<textarea name="submitinfo" cols="85" rows="13"
				style="width: 100%;" readonly="readonly" class="scroll_form">${sb.hwinfo}</textarea>
		</div>
		<hr />


		<!----------------- The Band Section ------------------------------------------->



	</div>
	<!--과제등록-->
	<div class="w3-container w3-padding-30 w3-row-padding "style = "padding : 50px">
	<div style="padding: 50px">
		<h2>과제 제출</h2>
		<c:set value="./submitHW" var="u" />
		<c:if test="${not empty up_hw}">
			<c:set value="./submitHWUpdate&submithwnum=${up_hw.submithwnum}" var="u" />
		</c:if>
		<form method="post" action="${u}" encType="multipart/form-data">
		<input type="hidden" value="${id.addfileid}" name = "addfileid" />
			<input type="text" name="hwnum" hidden="" value="${sb.hwnum}" /> <input
				type="text" name="classnum" hidden="" value="${sb.classnum}" />

			<h6>제목</h6>
			<input name="submitname" type="text"
				value="${up_hw.submitname}" required="required" class="w3-input w3-border"><br>
			<h6>첨부파일</h6>
			<input type="file" name="tempuploadfile" class="w3-button w3-dark-grey"/>
			<%-- <input type="text" name="addfilename"
				placeholder="파일 첨부해주세요." style="width: 80%; height: 40px"
				value="${up_hw.addfileid}" required="required" readonly="readonly" /> --%>
				
			<br>
			<h6>내용</h6>
			<textarea name="submitinfo" cols="85" rows="13"
				style="width: 100%;" class="scroll_form"  >${up_hw.submitinfo}</textarea>
			<div>
				<input type="submit" value="등록" class="fa-btn btn-1 btn-1e"/><br>
			</div>
		${u}
		${up_hw.addfileid}
		</form>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


</body>
</html>