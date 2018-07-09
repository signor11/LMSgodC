<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>교수용 제출된 학생과제 확인</title>

<script src="./resources/web/js/ckeditor_4/ckeditor.js"></script>
<script>
	window.onload = function() {
		CKEDITOR.replace("hwinfo");
	}

	function delete_hw_adm() {
		var check = confirm('이미 제출된 과제까지 모두 삭제됩니다. 삭제하시겠습니까?');
		if (check == true) {
			window.location.href = "./adhwDelete?hwnum=${hw.hwnum}"
		}
	}

	function update_hw() {
		var check = confirm('과제를 수정하시겠습니까?');
		if (check == true) {
			document.hwUpdate.submit();
		}
	};

	function delete_hw() {
		var check = confirm('이미 제출된 과제까지 모두 삭제됩니다. 삭제하시겠습니까?');
		if (check == true) {
			window.location.href = "./hwDelete?hwnum=${hw.hwnum}"
		}

	};
	function popup(a) {
		alert(a);
	};
	function checkDay() {

		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1;
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}

		today = yyyy + '-' + mm + '-' + dd;
		document.getElementById("dateField").setAttribute("min", today);
	}
	
	function content(a){
		var q = window.open("","","width=500, height=400, left=30, top=5000");
		q.document.write($("#"+a).find("#submitname").val());
		q.document.write("<br><br><br>");
		q.document.write($("#"+a).find("#submitinfo").val());
	}
	
	
	
</script>
<style>

	

</style>

</head>
<body>
	<!-- -----------------화면----------------- -->
	<br>
	<br>
	<hr />

	<div class="w3-container w3-padding-30 w3-row-padding "
		style="padding: 10px;">
		<h3 class="w3-wide">과제설명</h3>
		<br>
		<c:if test="${sessionScope.mode == 'admin'}">
			<c:set value="./adhwUpdate" var="a" />
		</c:if>
		<c:if test="${sessionScope.mode == 'pro'}">
			<c:set value="./hwUpdate" var="a" />
		</c:if>
		<form action="${a}" name="hwUpdate" method="post">
			<input type="hidden" name="hwnum" value="${hw.hwnum}" /> 
			<input type="hidden" name="classnum" value="${hw.classnum}" /> 
			<p class="bst">과목명</p> 
			<input type="text"
				name="classname" class="form" value="${cn.classname}" readonly="readonly">&emsp;&emsp;
			<p class="bst">제목</p> 
			<input type="text"
				name="hwname" class="form" value="${hw.hwname}"> <br><br>
				<p class="bst">제출기한</p> 
				<input type="date"
				name="applydate" value="${fn:substring(hw.applydate,0,10)}"
				id="dateField" class="form" min="" onclick=" checkDay()"> <br>
			<br> <p class="bst">내용</p><br>
			<br>
			<textarea name="hwinfo" cols="85" rows="13" style="width: 100%;">${hw.hwinfo}</textarea>
			<br>
			<br>
			<div align="left">
				<input type="button" value="수정" class="btn btn-danger"
					onclick="update_hw()" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<c:if test="${sessionScope.mode == 'admin'}">
					<c:set value="delete_hw_adm()" var="b" />
				</c:if>
				<c:if test="${sessionScope.mode == 'pro'}">
					<c:set value="delete_hw()" var="b" />
				</c:if>
				<input type="button" value="삭제" class="btn btn-danger"
					onclick="${b}" /><br>
			</div>
		</form>
	</div>
	<br>
	<br>
	<hr />
	<br>
	<br>

	<!-- -----------------과제설명-------------------- -->



	<div align=center>
		<p style="font-size: 34px">과제확인</p>
		<div style="display: inline-block;">
			<form method="post" action="../control/searchhw_control(pro).jsp"
				name="hwform">
				<input type="hidden" name="action" value="get">
				<ul style="display: inline-block;">
					<li>제출된 과제 확인</li>
				</ul>
			</form>
			<br>
		</div>
		<table class="table table-hover">
			<tr>
				<td width="100">학생번호</td>
				<td width="150">학생명</td>
				<td width="400">제목</td>
				<td width="100">제출여부</td>

			</tr>


			<c:forEach items="${sh}" var="s">


				<tr id="st${s.STUDENTNUM}">
					<td>${s.STUDENTNUM}</td>
					<td>${s.STUDENTNAME}</td>
					<td><c:if test="${not empty s.SUBMITINFO}">
							<%-- <a href='javascript:window.open("./submitHWDetail?submithwnum=${s.SUBMITHWNUM}","","width=800, height=600, left=30, top=200")'>${s.SUBMITNAME}</a>
							<input type="hidden" value="${s.SUBMITNAME}" id="submitname">
							<input type="hidden" value="${s.SUBMITINFO}" id="submitinfo"> --%>
							<a href="#" onclick="popup('${s.SUBMITNAME}\n\n${s.SUBMITINFO}')">${s.SUBMITNAME}</a>
						</c:if> 
						<c:if test="${empty s.SUBMITINFO}">
							<div>${s.SUBMITNAME}</div>
						</c:if></td>
					<td><c:if test="${not empty s.ADDFILEID}">
							<a href="./getAddFile?addfileid=${s.ADDFILEID}"> ${s.SUBMIT}</a>
						</c:if> <c:if test="${empty s.ADDFILEID}">
							<div>${s.SUBMIT}</div>
						</c:if></td>
				</tr>


			</c:forEach>

		</table>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>