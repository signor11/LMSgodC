<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    	
<!DOCTYPE html>
<html>
<head>
<title>submitHW.jsp</title>
</head>
<body>
	<div>
		<h3>과제설명</h3>

		<div>
			<h6>과제명</h6>
			<input name="submitname" type="text"
				disabled="disabled" value="${sb.hwname}"><br> <br>
			<textarea name="submitinfo" cols="85" rows="13"
				style="width: 100%;" disabled="disabled">${sb.hwinfo}</textarea>
		</div>
		<hr />


		<!----------------- The Band Section ------------------------------------------->



	</div>
	<!--과제등록-->
	<div style="padding: 50px">
		<h2>과제 제출</h2>
		<c:set value="./submitHW" var="u" />
		<c:if test="${not empty up_hw}">
			<c:set value="./submitHWUpdate" var="u" />
		</c:if>
		<form method="post" action="${u}">
			<input type="text" name="hwnum" hidden="" value="${sb.hwnum}" /> <input
				type="text" name="classnum" hidden="" value="${sb.classnum}" />

			<h6>제목</h6>
			<input name="submitname" type="text"
				value="${up_hw.submitname}" required="required"><br>
			<h6>첨부파일</h6>
			<input type="text" name="addfilename"
				placeholder="파일 첨부해주세요." style="width: 80%; height: 40px"
				value="${up_hw.addfileid}" required="required" readonly="readonly" />
			<button type="button" value="파일업로드">
				<!-- onclick="window.open('../homework/uploadform.jsp','file','width=500,height=500')" -->
				+</button>
			<br>
			<h6>내용</h6>
			<textarea name="submitinfo" cols="85" rows="13"
				style="width: 100%;">${up_hw.submitinfo}</textarea>
			<div>
				<input type="submit" value="등록" /><br>
			</div>

		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


</body>
</html>