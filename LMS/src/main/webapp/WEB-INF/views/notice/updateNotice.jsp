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
		<h2>
			<strong>글수정</strong>
		</h2>
	</div>
		<form action="./updateNotice" name="NoticeForm"  method = "post" enctype  ="multipart/form-data" onsubmit="return submitCheck()">
			<input type="hidden" name="seq" value="${no.seq}">
			<table>
				<tr id = "my${no.seq}">
					<th width="15%" height="23" nowrap>제목</th>
					<td>
					<input type="text" name="title" value="${no.title}">
					</td>
				</tr>
				<tr>
					<th width="15%" height="23" nowrap>작성자</th>
					<td>
					<input type="text" readonly="readonly" name="writer" value="${no.writer}">
					</td>
					
				</tr>
				<tr>
					<th height="23">글내용</th>
					<td colspan="5">
					<textarea name = "content" id = "content">${no.content}</textarea><br>
					</td>
				</tr>
				<tr>
					<th height="23">첨부파일</th>
					<td colspan="5">
					<input type="file" name="tempuploadfile" value = "${no.uploadfile}">
					</td>
				</tr>
			</table>
		<button type="submit" class="btn btn-default">수정</button>
		<button id = "deletebtn" class="btn btn-default" onclick="delcheck(${no.seq});">삭제</button>
		<button id="searchbtn" type="button" class="btn btn-default"  onclick="opennotice();">목록</button> 
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