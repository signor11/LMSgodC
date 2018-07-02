<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<script>
$(function(){
	//ajax로 게시글 로딩
	function getCommentsList(){
		var requestData={"noticeSeq":"${notice.seq}" };
	}
});
	
</script>
</head>
<body>
${vo}
<hr>
	<a href="./updateBoard">수정</a>
	<hr>
	<div style = "border:1px solid green">
		<form id = "commentFrm">
			<input name="name" size="10">
			<input name="content" size="50">
		</form>
	</div>
</body>
</html>