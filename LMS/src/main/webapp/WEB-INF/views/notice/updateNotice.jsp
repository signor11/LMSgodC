<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><html><head><title>updateNotice.jsp</title></head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./resources/web/js/ckeditor_4/ckeditor.js"></script>
<script>

	//목록 페이지로 이동
	function opennotice() {
		location.assign("./getNoticeList");

	}
	
	//삭제
	function delcheck(seq) {
		result = confirm("delete?");
	
		if(result == true){
			var requestData={"seq" :  seq}
			$.ajax({
				url : "./deleteNotice",
				data : requestData,
				dataType : 'json',
				success : function(data){
					alert('처리되었습니다')
					$("#my"+seq).remove();
					
				}
			});
		}

	}
</script>
<body>
	<div>
		<h3>글 수정</h3>
	</div>
		<form action="./updateNotice" name="NoticeForm"  method = "post" enctype  ="multipart/form-data" onsubmit="return submitCheck()">
			<input type="hidden" name="seq" value="${no.seq}">
					제목<input type="text" name="title" value="${no.title}" style="width:700px;">
					작성자<input type="text" readonly="readonly" name="writer" value="${no.writer}"><br>
					글내용<textarea name = "content" id = "content">${no.content}</textarea><br>
					첨부파일<input type="file" name="tempuploadfile" value = "${no.uploadfile}"  style="width:700px; height:23;">
		<div align="center">
		<button type="submit" class="btn btn-danger">수정</button>
		<button id = "deletebtn" class="btn btn-danger" onclick="delcheck(${no.seq});">삭제</button>
		<button id="searchbtn" type="button" class="btn btn-danger"  onclick="opennotice();">목록</button>
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