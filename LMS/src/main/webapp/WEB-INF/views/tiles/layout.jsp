<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
<title>예담 LMS | Home :: w3layouts</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Surf Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!--//tags -->
<link href="./resources/web/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="./resources/web/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="./resources/web/css/font-awesome.css" rel="stylesheet">
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:200,200i,300,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>

<script>
	//새창 열기
	function openprint() {
		window
				.open("admin", "관리자모드",
						"width=2000, height=2000, resizable=yes, toolbar=yes, menubar=yes, scrollbars=yes");

	}

	function openpoll(){
		window.open("insertPollForm","설문 조사","width=800, height = 800")
	}


	
</script>
<style>
		.bst { 
    			color: #fff;
    			background-color: #d2322d;
   				border-color: #ac2925;
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
    			
    	.form{
			
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
		    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
		    box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
		    -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
		    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
	
	}		
</style>

</head>

<body>
	<!-- header_top -->
	<div class="header" id="home">
		<div class="banner_header_top_agile_w3ls">
			<div class="header-top-wthree-agileits">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<h1>
							<a class="navbar-brand" href="./home"> Yedam LMS</a>
						</h1>
					</div>
					<div class="header_left">
						<ul>

				 			<c:if test="${!empty sessionScope.stdname}">
								<span style="font-size: 13px">${sessionScope.stdname} 님 환영합니다.&emsp;&nbsp;</span>
								<a class="shop" style="color: white; font-size: 13px"
									href="logout.do">로그아웃</a>
								&emsp;
							</c:if>


							<c:if test="${empty sessionScope.loginvo}">
								<li><a class="shop" href="#" data-toggle="modal"
									data-target="#myModal2">로그인</a></li>
							</c:if>

							<c:if test="${sessionScope.mode =='pro'}">
								<a href="getSchedulepro"
									style="font-size: 12px; font-style: italic;">시간표</a>

							</c:if>
							<c:if test="${sessionScope.mode =='std' }">
								<a href="getSchedule" style="font-size: 12px; font-style: italic;">시간표</a>
								&ensp; 
								<a href="#" onclick= "javascript:openpoll()"style="font-size: 12px; font-style: italic;">설문조사</a>
							</c:if>

							<c:if test="${sessionScope.mode =='admin' }">

								<button type="button" class="btn btn-outline-primary"
									onclick="javascript:openprint()">관리자모드</button>
							</c:if>


						</ul>


					</div>
					<br>




					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right"
						id="bs-example-navbar-collapse-1">

						<div class="top_nav_left">
							<nav class="cl-effect-15" id="cl-effect-15">
								<ul>
									<li class="active"><a href="home" data-hover="home">home</a></li>

									<c:if test="${sessionScope.mode == 'std'}">
										<li class="dropdown"><a href="services.html"
											data-hover="강의" class="dropdown-toggle"
											data-toggle="dropdown"> 강의<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getClassList">강의조회</a></li>
												<li><a href="getClassapplyList">수강신청</a></li>
											</ul></li>
										<li class="dropdown"><a href="services.html"
											data-hover="과제" class="dropdown-toggle"
											data-toggle="dropdown"> 과제<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getHWList">과제조회</a></li>

											</ul></li>

										<li class="dropdown"><a href="services.html"
											data-hover="시험" class="dropdown-toggle"
											data-toggle="dropdown"> 시험<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="">시험조회</a></li>


											</ul></li>

										<li class="dropdown"><a href="services.html"
											data-hover="성적" class="dropdown-toggle"
											data-toggle="dropdown"> 성적<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getClassScoreListstu">성적조회</a></li>


											</ul></li>

									</c:if>


									<c:if test="${sessionScope.mode == 'pro'}">
										<li class="dropdown"><a href="services.html"
											data-hover="강의" class="dropdown-toggle"
											data-toggle="dropdown"> 강의<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getClassList">강의조회(교수)</a></li>

											</ul></li>
										<li class="dropdown"><a href="services.html"
											data-hover="과제" class="dropdown-toggle"
											data-toggle="dropdown"> 과제<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getHWListPro">과제조회(교수)</a></li>

											</ul></li>

										<li class="dropdown"><a href="services.html"
											data-hover="시험" class="dropdown-toggle"
											data-toggle="dropdown"> 시험<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="">시험조회(교수)</a></li>
												<li><a href="">시험출제(교수)</a></li>

											</ul></li>

										<li class="dropdown"><a href="services.html"
											data-hover="성적" class="dropdown-toggle"
											data-toggle="dropdown"> 성적<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getClassScoreList">성적입력(교수)</a></li>


											</ul></li>

									</c:if>

									<c:if test="${sessionScope.mode == 'admin'}">
										<li class="dropdown"><a href="services.html"
											data-hover="강의" class="dropdown-toggle"
											data-toggle="dropdown"> 강의<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getClassList">강의조회</a></li>
												<li><a href="getClassapplyList">수강신청</a></li>

											</ul></li>
										<li class="dropdown"><a href="services.html"
											data-hover="과제" class="dropdown-toggle"
											data-toggle="dropdown"> 과제<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="adminHW">과제조회(교수)</a></li>

											</ul></li>

										<li class="dropdown"><a href="services.html"
											data-hover="시험" class="dropdown-toggle"
											data-toggle="dropdown"> 시험<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="">시험조회</a></li>
												<li><a href="">시험조회(교수)</a></li>
												<li><a href="">시험출제(교수)</a></li>

											</ul></li>

										<li class="dropdown"><a href="services.html"
											data-hover="성적" class="dropdown-toggle"
											data-toggle="dropdown"> 성적<b class="fa fa-angle-down"></b></a>
											<ul class="dropdown-menu">
												<li><a href="getClassScoreListstu">성적조회</a></li>
												<li><a href="getClassScoreList">성적입력(교수)</a></li>


											</ul></li>

									</c:if>

								</ul>
							</nav>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>

	<tiles:insertAttribute name="body" />



	<!-- banner -->
	<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							<span>Set goal,</span>
						</h3>
						<h4>reach the goal</h4>
						<p>Yedam LMS</p>

					</div>
				</div>
			</div>

		</div>
	</div> -->
	<!--//banner -->
	<!--//banner -->

	<!-- Modal1 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">
						<h3 class="sign">Sign In</h3>
						<div class="login-form">
							<form action="login.do" method="post">
								<input type="text" name="studentnum" placeholder="ID"
									required="required"> <input type="password"
									name="studentpw" placeholder="Password" required="required">
								<div class="tp">
									<input type="submit" value="Sign In">
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">
						<h3 class="sign">Sign Up</h3>
						<div class="login-form">
							<form action="#" method="post">
								<input type="text" name="name" placeholder="Username"
									required=""> <input type="email" name="email"
									placeholder="Email" required=""> <input type="password"
									name="password" placeholder="Password" required=""> <input
									type="password" name="password" placeholder="Confirm Password"
									required=""> <input type="submit" value="Sign Up">
							</form>
						</div>
						<p>
							<a href="#"> By clicking Sign up, I agree to your terms</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal2 -->
	</div>
	<!--// header_top -->
	<!--about-->

	<!-- footer -->
	<footer>
		<div class="footer-top-w3-agileits">
			<div class="copy_right">
				<p>
					© 2018 Yedam LMS. All rights reserved | Design by <a
						href="http://w3layouts.com/">W3layouts</a>
				</p>
			</div>
		</div>
		</div>

	</footer>

	<!-- js -->
	<script type="text/javascript" src="./resources/web/js/jquery.min.js"></script>

	<!--search-bar-->
	<script src="./resources/web/js/search.js"></script>
	<!--//search-bar-->



	<script type="text/javascript" src="./resources/web/js/bootstrap.js"></script>
</body>

</html>