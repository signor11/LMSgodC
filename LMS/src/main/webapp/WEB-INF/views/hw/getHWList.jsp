<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>학생용 과제확인</title>
<meta charset="UTF-8">
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
<!-- start slider -->
<link href="./resources/web/css/slider.css" rel="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript"
	src="./resources/web/js/modernizr.custom.28468.js"></script>

<script src="./resources/web/js/jquery.min.js"></script>
</head>
<body>	
	<br><br>
	<h3 align="center">학생용 과제 조회</h3>
	<br><br><br>

	<div style="display: inline-block;">
		<input type="text" value="과목명" disabled="disabled"
			style="padding: 10px; display: inline-block; text-align: center;"
			size="5" class="fa-btn btn-1 btn-1e">
			<select name="classnum" style="padding: 10px; text-align: center;">
			<option value="" selected hidden="">선택</option>
			<c:forEach items="${classname}" var="n">
				<option value="${n.CLASSNUM}"
					<c:if test="${n.classnum==param.classnum}">
			selected</c:if>>${n.CLASSNAME}
				</option>
			</c:forEach>
		</select>
		</div>

		<div align=center>
			<table class="table table-hover">
				<tr>
					<td width="100">과제번호</td>
					<td width="500">과제제목</td>
					<td width="200">제출기간</td>
					<td width="100">제출여부</td>

				</tr>
				<c:forEach items="${HWList}" var="h">
					<tr>
						<td>${h.HWNUM}</td>
						<td class="go">${h.HWNAME}</td>
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