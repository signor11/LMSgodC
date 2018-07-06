<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>교수용 과제확인</title>
<style>
p {
	margin-right: 1cm;
}
</style>
<script>
	function hwInsert() {
		location.href = "./hwInsert"
	}
</script>
</head>
<body>

	<br>
	<br>
	<h3 align="center">교수용 과제 조회</h3>
	<br>
	<br>
	<p align=right>
		<button type="button" class="btn btn-danger" onclick="hwInsert()">등록</button>
	</p>
	<br>
	<br>
	<br>
	<br>

	<div>
		<form action="./getHWListPro" name="hwform" style="text-align: center;">
			<p class="bst">과목명</p>
			<select name="classnum" class="form"
				onchange="document.hwform.submit()">
				<option value="" selected hidden="">선택</option>
				<c:forEach items="${classname}" var="n">
					<option value="${n.CLASSNUM}"
						<c:if test="${n.CLASSNUM==param.classnum}">
			selected</c:if>>${n.CLASSNAME}
					</option>
				</c:forEach>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			<p class="bst">수강인원</p>${cnt.CNT}
			<p class="bst">과목명</p>${cnt.CLASSNAME}
			<p class="bst">학점</p>${cnt.CREDIT}
			<p class="bst">최대 수강인원 수</p>${cnt.MAXSTUDENT}
			<p class="bst">수업시간</p>${cnt.CLASSTIME}
			
			
			
		</form>
	</div>

	<br>
	<table class="table table-hover">
		<tr>
			<td width="200">과제번호</td>
			<td width="500">과제제목</td>
			<td width="200">제출기간</td>

		</tr>
		<c:forEach items="${HWListPro}" var="h">
			<tr>
				<td>${h.HWNUM}</td>
				<td><a
					href="./getsubmitHwList?hwnum=${h.HWNUM}&classnum=${h.CLASSNUM}">${h.HWNAME}</a>
				</td>
				<td>${h.APPLYDATE}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<br>
	<br>

</body>
</html>