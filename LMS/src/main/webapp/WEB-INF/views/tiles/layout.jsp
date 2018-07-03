<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>예담 LMS | Home :: w3layouts</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Surf Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	<!--//tags -->
<!-- 	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet"> -->
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:200,200i,300,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<!-- <link href="./resources/web/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' /> -->
<link href="./resources/web/css/bootstrap.css" rel='stylesheet'
	type='text/css' media="all"/>
<link href="./resources/web/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	 function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href="./resources/web/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="./resources/web/js/jquery.min.js"></script>
<script type="text/javascript" src="./resources/web/js/bootstrap.js"></script>
<script type="text/javascript" src="./resources/web/js/bootstrap.min.js"></script>
<!-- start slider -->
<link href="./resources/web/css/slider.css" rel="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript"
	src="./resources/web/js/modernizr.custom.28468.js"></script>
<script type="text/javascript"
	src="./resources/web/js/jquery.cslider.js"></script>
	
	
<script type="text/javascript">
	$(function() {

		$('#da-slider').cslider({
			autoplay : true,
			bgincrement : 450
		});

	});
</script>
<!-- Owl Carousel Assets -->
<link href="./resources/web/css/owl.carousel.css" rel="stylesheet">
<script src="./resources/web/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {

		$("#owl-demo").owlCarousel({
			items : 4,
			lazyLoad : true,
			autoPlay : true,
			navigation : true,
			navigationText : [ "", "" ],
			rewindNav : false,
			scrollPerPage : false,
			pagination : false,
			paginationNumbers : false,
		});

	});
	
	//새창 열기
	function openprint() {
		window
				.open("admin", "관리자모드",
						"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");

	}
</script>
<style>
body {
	height: 100%;
	width: 100%;
	
}

body {
	font-family: "San francisco ", sans-serif;
	background-size: cover;
	background-repeat: repeat;

}

}
.mySlides {
	display: none
	
}

table.t1 td, th {
	border: 1px solid black; padding 10px;
	text-align: center;

}

table.t1 {
	border-spacing: 0;
	border-collapse: collapse;
}

.page {
	background-color: gray;
	color: white;
}

.active {
	background-color: green;
}

.w3-top {
	background-color: #04B4AE;
}

.pagination1{
	text-align : center;
	}
</style>
<!-- //Owl Carousel Assets -->
<!----font-Awesome----->
<link rel="stylesheet"
	href="./resources/web/fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<body>
	
	
	
<!-- 	<div class="container">
		<div class="row h_menu">
			<nav class="navbar navbar-default navbar-left" role="navigation">
			Brand and toggle get grouped for better mobile display
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			Collect the nav links, forms, and other content for toggling
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="home.jsp">홈</a></li>
					<li><a href="getUserList">강의</a></li>
					<li><a href="getBoardList">과제</a></li>
					<li><a href="login.jsp">시험</a></li>
					<li><a href="getUserList">성적</a></li>
				</ul>
			</div>
			/.navbar-collapse start soc_icons </nav>			
			</div>
		</div> -->
<div class="header" id="home">
		<div class="banner_header_top_agile_w3ls">
			<div class="header-top-wthree-agileits">
			<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
						<h1><a class="navbar-brand" href="index.html"> Yedam LMS</a></h1>
					</div>
									<div class="header_left">
						<ul>
							<li><a class="shop" href="shop.html">Shop Now</a></li>
							<li><a class="sign" href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-user" aria-hidden="true"></i></a></li>

						</ul>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">

						<div class="top_nav_left">
							<nav class="cl-effect-15" id="cl-effect-15">
								<ul>
								
								
									<li class="active"><a href="home" data-hover="홈">홈</a></li>
									
									<div class="w3-dropdown-hover w3-hide-small">			
									
									
									<li class="dropdown">
										<a href="#" data-hover="강의" class="dropdown-toggle" data-toggle="dropdown">강의<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="getClassList">강의조회</a></li>
											<li><a href="getClassapplyList">수강신청</a></li>
										</ul>
									</li>
									<li class="dropdown">
										<a href="services.html" data-hover="과제" class="dropdown-toggle" data-toggle="dropdown">과제<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="404.html">과제조회</a></li>

										</ul>
									</li>

									<li class="dropdown">
										<a href="services.html" data-hover="시험" class="dropdown-toggle" data-toggle="dropdown">시험<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="404.html">시험조회</a></li>
											

										</ul>
									</li>

									<li class="dropdown">
										<a href="services.html" data-hover="성적" class="dropdown-toggle" data-toggle="dropdown">성적<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="404.html">성적조회</a></li>
											

										</ul>
									</li>
								</ul>
							</nav>
						</div>
					</div>
					
			</div>
			<c:if test="${sessionScope.mode == 'std'}">

				<div class="w3-dropdown-hover w3-hide-small">

					<button class="w3-padding-large w3-button" title="More">

						강의</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="getClassList"
							class="w3-bar-item w3-button">강의조회</a> <a
							href="getClassapplyList"
							class="w3-bar- w3-button">수강신청</a>
					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						과제</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="getHWList"
							class="w3-bar-item w3-button">과제조회</a>

					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						시험</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href=""
							class="w3-bar-item w3-button">시험조회</a>


					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						성적</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="getClassScoreListstu"
							class="w3-bar-item w3-button">성적조회</a>


					</div>
				</div>
			</c:if>

			<c:if test="${sessionScope.mode =='pro' }">
				<div class="w3-dropdown-hover w3-hide-small">

					<button class="w3-padding-large w3-button" title="More">

						강의</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="getClassapplyList"
							class="w3-bar-item w3-button">강의조회</a>


					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						과제</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">

						<a href="getHWListPro"
							class="w3-bar-item w3-button">과제조회(교수)</a> 
					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						시험</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">

						<a href=""
							class="w3-bar-item w3-button">시험조회(교수)</a> <a
							href=""
							class="w3-bar-item w3-button">시험출제(교수)</a>
					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						성적</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">

						<a href="getClassScoreList"
							class="w3-bar-item w3-button">성적입력(교수)</a>
					</div>
				</div>
			</c:if>
			<c:if test="${sessionScope.mode == 'admin'}">
				<div class="w3-dropdown-hover w3-hide-small">

					<button class="w3-padding-large w3-button" title="More">

						강의</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="getClassapplyList"
							class="w3-bar-item w3-button">강의조회</a>
							<a
							href="getClassapplyList"
							class="w3-bar- w3-button">수강신청</a>


					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						과제</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="getHWList"
							class="w3-bar-item w3-button">과제조회</a>
						<a href="getHWListPro"
							class="w3-bar-item w3-button">과제조회(교수)</a> 
					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						시험</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href=""
							class="w3-bar-item w3-button">시험조회</a>
						
						<a href=""
							class="w3-bar-item w3-button">시험조회(교수)</a> <a
							href=""
							class="w3-bar-item w3-button">시험출제(교수)</a>
					</div>
				</div>
				<div class="w3-dropdown-hover w3-hide-small">
					<button class="w3-padding-large w3-button" title="More">
						성적</button>
					<div class="w3-dropdown-content w3-bar-block w3-card-4">
						<a href="getClassScoreListstu"
							class="w3-bar-item w3-button">성적조회</a>
						<a href="getClassScoreList"
							class="w3-bar-item w3-button">성적입력(교수)</a>
					</div>
				</div>
			
			
			
			</c:if>
			<br>
							
								
		</div>
	</div>
		<c:if test="${!empty sessionScope.stdname}">
											<h2 align="right">${sessionScope.stdname}님
												환영합니다.</h2><div align="right"><a href="logout.do" ><button type="button">로그아웃</button></a></div><br>
											
									</c:if>
									<div align = "right">
									<c:if test="${sessionScope.mode =='pro' }">
											<a
											href='getSchedulepro'>
												<button type="button" class="btn btn-outline-primary">시간표</button>
											</a>

									</c:if> 
									<c:if test="${sessionScope.mode =='std' }">
											<a href="getSchedule">
												<button type="button" class="btn btn-outline-primary">시간표</button>
											</a>

									</c:if>
									
									<c:if test="${sessionScope.mode =='admin' }">
											
												<button type="button" class="btn btn-outline-primary" onclick="javascript:openprint()">관리자모드</button>
											

									</c:if>
									
									
									
									
									</div>
	<tiles:insertAttribute name="body" />
</body>

</html>