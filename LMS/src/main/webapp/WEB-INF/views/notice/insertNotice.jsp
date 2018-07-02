<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<script src="./resources/web/js/ckeditor_4/ckeditor.js"></script>
<html>
<head>
<title>Insert title here</title>
</head>
	<body>
		<form action="./insertNotice" method="post" name="noticeForm"  enctype  ="multipart/form-data" onsubmit="return submitCheck()"></form>
			제목<input type="text" name="title" >
			작성자<input type="text" name="writer"><br>
			내용<textarea name = "content" id = "content"></textarea><br>
			첨부파일<input type="file" name="tempuploadfile"><br>
		 	<input type="submit" value="등록"/><br>
		</form>
		<script>
			CKEDITOR.replace("content", {//내장객체 pageContext, contextPath local정보
				filebrowserUploadUrl : "${pageContext.request.contextPath}/fileUpload.jsp"//upload탭 추가
			});
			
			function submitCheck(){
				if(document.boardForm.writer.value == ""){
					alert("작성자 등록");
					document.boardForm.writer.focus();
					return false;
				}
				if(document.boardForm.title.value == ""){
					alert("제목등록");
					document.boardForm.title.focus();
					return false;
				}
				var editor_data = CKEDITOR.instances.content.getData();
				if(document.boardForm.content.value == ""){
					alert("내용 등록");
					document.boardForm.content.focus();
					return false;
				}
				return true;
			}   
		</script>
	</body>
</html>