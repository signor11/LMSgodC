<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><html><head><title>updateNotice.jsp</title></head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

	//목록 페이지로 이동
	function opennotice() {
		location.assign("./getNoticeList");

	}
	
	//삭제
	function delcheck(seq) {
		result = confirm("delete ?");
	
		if(result == true){
			var requestData={"seq" :  seq}
			$.ajax({
				url : "/deleteNotice",
				data : requestData,
				dataType : 'json',
				success : function(data){
					alert('처리되었습니다')
					$("#my"+classapplynum).remove();
					
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
				<tr>
					<th width="15%" height="23" nowrap>제목</th>
					<td width="85%" colspan="5" nowrap="nowrap"><input type="text" name="title" value="${no.title}"></td>
				</tr>
				<tr>
					<th width="15%" height="23" nowrap>작성자</th>
					<td width="15%" nowrap="nowrap"><input type="text" readonly="readonly" name="writer" value="${no.writer}"></td>
					
					<th width="15%" height="23" nowrap>조회수</th>
					<td width="15%" nowrap="nowrap">1</td>
				</tr>
				<tr>
					<th height="23">글내용</th>
					<td colspan="5">
						<div>
							<input type="text" style="width: 800px; height: 400px;" name="content" value="${no.content}">
						</div>
					</td>
				</tr>
			</table>
		<button type="submit" class="btn btn-default">수정</button>
		<button id = "deletebtn" class="btn btn-default" onclick="delcheck(${classapply.classapplynum});">삭제</button>
		<button id="searchbtn" type="button" class="btn btn-default"  onclick="javascript:opennotice();">목록</button> 
	</form>
	
  </body>
</html>