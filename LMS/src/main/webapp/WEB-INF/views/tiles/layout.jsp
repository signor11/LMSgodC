<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Learner a education bootstrap Website Template | Home ::
	w3layouts</title>
<!-- Bootstrap -->
<!-- <link href="./resources/web/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' /> -->
<link href="./resources/web/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
	<div>
		<div class="row header">
								
						<a href="gohome"><img src="./resources/web/images/yedamlogo4.PNG" width="300" height="70"></a>
	

			
				
								

								
							
				
					
			


				<div class="clearfix"></div>
			</div>
	</div>
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
<div class="w3-bar w3-wide w3-padding w3-card">
		<div class="w3-right">
			<div class="w3-dropdown-hover" >
				<a href="gohome"><button 
						class="w3-padding-large w3-button" title="More">홈</button></a>
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
							class="w3-bar-item w3-button">과제조회(교수)</a> <a
							href="hwInsert"
							class="w3-bar-item w3-button">과제등록(교수)</a>
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
							class="w3-bar-item w3-button">과제조회(교수)</a> <a
							href="hwInsert"
							class="w3-bar-item w3-button">과제등록(교수)</a>
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
											<a href="admin">
												<button type="button" class="btn btn-outline-primary">관리자모드</button>
											</a>

									</c:if>
									
									
									
									
									</div>
	<tiles:insertAttribute name="body" />
</body>

</html>