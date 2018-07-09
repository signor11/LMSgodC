<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Creative - Bootstrap Admin Template</title>
<!-- Bootstrap CSS -->
<link href="./resources/admin/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="./resources/admin/css/bootstrap-theme.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="./resources/admin/css/fullcalendar.css">
<link href="./resources/admin/css/widgets.css" rel="stylesheet">
<link href="./resources/admin/css/style.css" rel="stylesheet">
<link href="./resources/admin/css/style-responsive.css" rel="stylesheet" />
<link href="./resources/admin/css/xcharts.min.css" rel=" stylesheet">
<link href="./resources/admin/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet">
<!-- javascripts -->
<script src="./resources/admin/js/jquery.js"></script>
<script src="./resources/admin/js/jquery-ui-1.10.4.min.js"></script>
<script src="./resources/admin/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="./resources/admin/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="./resources/admin/js/bootstrap.min.js"></script>
<style>
.bst {
	color: #fff;
	background-color: #ff2d55;
	border-color: #ff2d55;
	display: inline-block;
	padding: 6px 12px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.form {
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.428571429;
	color: #555;
	vertical-align: middle;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	-webkit-transition: border-color ease-in-out .15s, box-shadow
		ease-in-out .15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}



</style>

</head>

<body>
	<!-- container section start -->
	<section id="container" class="">
		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href="./admin" class="logo">Yedam <span class="lite">Admin</span></a>
			<!--logo end-->

		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="active"><a href="./getNoticeList"> <i
							class="icon_house_alt"></i> <span>공 지 사 항</span>
					</a></li>

					<li class="sub-menu"><a href="./chartPoll" class=""> <i
							class="icon_desktop"></i> <span>설 문 조 사</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a></li>
					<li class="active"><a href="./getProfessorList"> <i
							class="icon_house_alt"></i> <span>교 수</span>
					</a></li>
					<li class="active"><a href="./getStudentList"> <i
							class="icon_house_alt"></i> <span>학 생</span>
					</a></li>
					<li class="active"><a href="./getClassList2"> <i
							class="icon_house_alt"></i> <span>과 목</span>
					</a></li>

					<li class="active"><a href="./getMajorList"> <i
							class="icon_house_alt"></i> <span>학 과</span>
					</a></li>

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<tiles:insertAttribute name="body" />
			</section>
		</section>
	</section>
</body>
</html>
