<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    	
<!DOCTYPE html>
<html>
<head>
<title>학생용 과제 제출</title>
<script src="./resources/web/js/ckeditor_4/ckeditor/ckeditor.js"></script>
<script>

	window.onload = function() {
		CKEDITOR.replace("submitinfo",{
		toolbarGroups: [
			{"name":"basicstyles","groups":["basicstyles"]},
			{"name":"links","groups":["links"]},
			{"name":"paragraph","groups":["list","blocks"]},
			{"name":"document","groups":["mode"]},
			{"name":"insert","groups":["insert"]},
			{"name":"styles","groups":["styles"]},
			{"name":"about","groups":["about"]}
		]
			})
	}
	
	function submitCheck(){
		var editor_data = CKEDITOR.instances.hwinfo.getData();
		if(editor_data== ""){
			alert("내용을 입력해주세요.");
			document.hwForm.submitinfo.focus();
			return false;
		}
		return true;
		}
</script>

</head>
<body>
<div class="w3-container w3-padding-30 w3-row-padding "style = " padding : 100px; max-width: 1500px">
<h3 class="w3-wide">과제설명</h3><br>

		<div>
			<p class="bst">과제명</p>
			<input name="hwname" type="text"
				readonly="readonly" value="${sb.hwname}" class="form"><br><hr> 
			<div style="font-size: 20px;">${sb.hwinfo}</div>
		</div>
		<hr />


		<!----------------- The Band Section ------------------------------------------->



	</div>
	<!--과제등록-->
	<div class="w3-container w3-padding-30 w3-row-padding "style = "padding : 50px">
	<div style="padding: 50px">
		<h3 class="w3-wide">과제제출</h3><br>
		<c:set value="./submitHW" var="u" />
		<c:if test="${not empty up_hw}">
			<c:set value="./submitHWUpdate?submithwnum=${up_hw.submithwnum}" var="u" />
		</c:if>
		
		<form method="post" action="${u}" encType="multipart/form-data" name="hwForm" onsubmit="return submitCheck()">
		<c:set value="" var = "a" />
		<c:if test="${not empty id}">
			<c:set value="${id.addfileid}" var="a" />
		</c:if>
			<input type="hidden" value="${a}" name = "addfileid" />
			<input type="text" name="hwnum" hidden="" value="${sb.hwnum}" /> 
			<input type="hidden" name="classnum" value="${sb.classnum}" />
			<p class="bst">제목</p>
			<input name="submitname" type="text"
				value="${up_hw.submitname}" required="required"  size="80" class="form"><br><br>
			<div style="display: inline-block;">
			<p class="bst">첨부파일</p>
			<c:if test="${not empty up_hw}">
				&nbsp;&nbsp;&nbsp;
				<i><a href="./getAddFile?addfileid=${up_hw.addfileid}">
				제출된 파일명 - ${up_hw.addfilename}
				</a></i>
				<br><br>
			</c:if>
		
			<input type="file" name="tempuploadfile" class="form"/>
			</div>
			<br><br>
			<p class="bst">내용</p><br><br>
			<textarea name="submitinfo" cols="85" rows="13" id="submitinfo"
				style="width: 100%;" class="scroll_form" >${up_hw.submitinfo}</textarea><br>
			<div>
				<input type="submit" value="등록" class="btn btn-danger"/><br>
			</div>
		
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