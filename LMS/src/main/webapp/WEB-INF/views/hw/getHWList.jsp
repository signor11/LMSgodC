<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>학생용 과제확인</title>

</head>
<body>	
	<br><br>
	<h3 align="center">학생용 과제 조회</h3>
	<br><br><br>

	<div style="display: inline-block;">
		<form action="./getHWList" name="hwform">
		<p class="bst">과목명</p>
			<select name="classnum" class="form" onchange="document.hwform.submit()">
			<option value="" selected hidden="">선택</option>
			<c:forEach items="${classname}" var="n">
				<option value="${n.CLASSNUM}"
					<c:if test="${n.CLASSNUM==param.classnum}">
			selected</c:if>>${n.CLASSNAME}
				</option>
			</c:forEach>
		</select>
		</form>
		
		</div>
		
		
		<div align=center>
			<table class="table table-hover">
			<br><br>
				<tr>
					<td width="100">과제번호</td>
					<td width="500">과제제목</td>
					<td width="200">제출기간</td>
					<td width="100">제출여부</td>

				</tr>
				<c:forEach items="${HWList}" var="h">
					<tr>
						<td>${h.HWNUM}</td>
						<td class="go">
						<a href="./submitHW?&hwnum=${h.HWNUM}">${h.HWNAME}</a>
						</td>
						<td>${h.APPLYDATE}</td>
						<td>${h.SUBMIT}</td>
					</tr>
				</c:forEach>

			</table>
		</div>
	
	<script>
		$(function() {

			$(".go").click(
					function(event) {

						var today = new Date();

						if (today.getMonth() < 9) {
							if (today.getDate() > 9) {
								var todayStr = today.getFullYear() + "-" + "0"
										+ (today.getMonth() + 1) + "-"
										+ today.getDate();
							} else {
								var todayStr = today.getFullYear() + "-" + "0"
										+ (today.getMonth() + 1) + "-" + "0"
										+ today.getDate();
							}
						}

						else {
							if (today.getDate() > 9) {
								var todayStr = today.getFullYear() + "-"
										+ (today.getMonth() + 1) + "-"
										+ today.getDate();
							} else {
								var todayStr = today.getFullYear() + "-"
										+ (today.getMonth() + 1) + "-" + "0"
										+ today.getDate();
							}
						}

						console.dir($(this).next().text());
						console.dir(todayStr);

						if ($(this).next().text() < todayStr) {
							alert("제출기한이 아닙니다.");
							event.preventDefault();
						}
					});

		});
	</script>


</body>
</html>