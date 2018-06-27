<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>교수용 제출된 학생과제 확인</title>
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
<!-- -----------------화면----------------- -->	
<br><br>	
<hr/>
<form>
<div class="w3-container w3-padding-30 w3-row-padding "style = " padding : 100px; max-width: 1500px">
<h3 class="w3-wide">과제설명</h3>

 	<h6>과제명</h6>
		<input name="submitname" type="text" readonly="readonly"
		value="${hw.hwname}" class="w3-input w3-border">
		<input type="hidden" name="classnum" value="${hw.classnum}"/> 
	<h6>설명</h6>	
		<textarea name="submitinfo" cols="85" rows="5" 
		style="width: 100%;" readonly="readonly" class="scroll_form">${hw.hwinfo}</textarea>
	<br>
 	<button type = "button" class="fa-btn btn-1 btn-1e"> <!-- onclick="delete_hw()"> -->삭제</button>
</div>
</form>
<hr/>		
		
		
		
		
		
		
		
	<!-- -----------------과제설명-------------------- -->
	
	
<div align = center>
<p style="font-size: 34px">과제확인</p> <div  style=" display: inline-block;">
<form method="post" action="../control/searchhw_control(pro).jsp" name="hwform">
<input type="hidden" name="action" value="get">
<ul style=" display: inline-block;"><li>제출된 과제 확인</li></ul>


</form>	
</div>
<!-- <script>
	function delete_hw(){
		var check = confirm('삭제하시겠습니까?');
		if(check==true){
			window.location.href= "../control/searchhw_control(pro).jsp?action=delete&hwnum=${hw.hwnum}"
		}
		
	};
	
	function popup(a){
			alert(a);    
	 				};

</script>
 -->

		<table class="table table-hover">
			<tr>
				<td width="100">학생번호</td>
				<td width="150">학생명</td>
				<td width="400">제목</td>
				<td width="100">제출여부</td>
				
			</tr>
				
				
			<c:forEach items="${sh}" var="s">

	
			<tr>
				<td>${s.STUDENTNUM}</td>
				<td>${s.STUDENTNAME}</td>
				<td>
					<c:if test="${not empty s.SUBMITINFO}">
						<a href="#" onclick="popup('${s.SUBMITNAME}\n\n${s.SUBMITINFO}')">${s.SUBMITNAME}</a>
					</c:if>
					<c:if test="${empty s.SUBMITINFO}">
						<div>${s.SUBMITNAME}</div>
					</c:if>
					
				</td>
				<td>
					<c:if test="${not empty s.ADDFILEID}">
						<a href="../control/searchhw_control(pro).jsp?action=download&addfileid=${s.ADDFILEID}">
						${s.SUBMIT}</a>
					</c:if>	
					<c:if test="${empty s.ADDFILEID}">
						<div>${s.SUBMIT}</div>
					</c:if>
				</td>
			</tr>
			

			</c:forEach>
			
		</table>
	
	</div>
	<br><br><br><br><br><br>
</body>
</html>