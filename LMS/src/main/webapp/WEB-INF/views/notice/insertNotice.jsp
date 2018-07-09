<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="./resources/web/js/ckeditor_4/ckeditor.js"></script>
<script>


//목록 페이지로 이동
   function opennotice() {
      location.assign("./getNoticeList");
   }

</script>
</head>
<div>
		<h3>글 입력</h3>
	</div>
	<body>
		<form action="./insertNotice" name="NoticeForm"  method = "post" enctype  ="multipart/form-data" onsubmit="return submitCheck()">
			제목<input type="text" name="title" style="width:700px;">
			작성자<input type="text" name="writer" value = "관리자" readonly="readonly"><br>
			내용<textarea name = "content" id = "content"></textarea><br>
			첨부파일<input type="file" name="tempuploadfile"><br>
		 	<div align="center">
		 	<button type="submit"  class="btn btn-danger">저장</button>
		 	<button id="searchbtn" type="button" class="btn btn-danger"  onclick="javascript:opennotice();">목록</button>
		 	</div> 
		</form>
		<script>
			CKEDITOR.replace("content", {//내장객체 pageContext, contextPath local정보
				filebrowserUploadUrl : "${pageContext.request.contextPath}/fileUpload.jsp"//upload탭 추가
			});
			
			function submitCheck(){
				if(document.noticeForm.writer.value == ""){
					alert("작성자 등록");
					document.noticeForm.writer.focus();
					return false;
				}
				if(document.noticeForm.title.value == ""){
					alert("제목등록");
					document.noticeForm.title.focus();
					return false;
				}
				var editor_data = CKEDITOR.instances.content.getData();
				if(document.noticeForm.content.value == ""){
					alert("내용 등록");
					document.noticeForm.content.focus();
					return false;
				}
				return true;
			}   
		</script>
	</body>

</html>