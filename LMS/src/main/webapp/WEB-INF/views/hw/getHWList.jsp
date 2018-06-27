<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>getHWList.jsp</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- start slider -->
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
<!-- Owl Carousel Assets -->
<link href="css/owl.carousel.css" rel="stylesheet">
<!-- //Owl Carousel Assets -->
<!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<body>
	<h3>학생용 과제 조회</h3>

	<select name="classnum" style="padding: 10px; text-align: center;">
		<option value="" selected hidden="">선택</option>
		<c:forEach items="${classname}" var="n">
			<option value="${n.CLASSNUM}"
				<c:if test="${n.classnum==param.classnum}">
			selected</c:if>>${n.CLASSNAME}
			</option>
		</c:forEach>
	</select>


	<table border="1">
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