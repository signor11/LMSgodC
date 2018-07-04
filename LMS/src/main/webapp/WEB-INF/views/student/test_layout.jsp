<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<meta name="keywords" content="Surf Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	<!--//tags -->
	<link href="./resources/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="./resources/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="./resources/web/css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:200,200i,300,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
</head>

<body>
	<!-- header_top -->
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
						<h1><a class="navbar-brand" href="#"> Yedam LMS</a></h1>
					</div>
									<div class="header_left">
						<ul>
							<li><a class="shop" href="#">Shop Now</a></li>
							<li><a class="sign" href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-user" aria-hidden="true"></i></a></li>

						</ul>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">

						<div class="top_nav_left">
							<nav class="cl-effect-15" id="cl-effect-15">
								<ul>
									<li class="active"><a href="#" data-hover="홈">홈</a></li>
									<li class="dropdown">
										<a href="#" data-hover="강의" class="dropdown-toggle" data-toggle="dropdown">강의<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">강의조회</a></li>
											<li><a href="#">수강신청</a></li>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" data-hover="과제" class="dropdown-toggle" data-toggle="dropdown">과제<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">과제조회</a></li>

										</ul>
									</li>

									<li class="dropdown">
										<a href="#" data-hover="시험" class="dropdown-toggle" data-toggle="dropdown">시험<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">시험조회</a></li>
											

										</ul>
									</li>

									<li class="dropdown">
										<a href="#" data-hover="성적" class="dropdown-toggle" data-toggle="dropdown">성적<b class="fa fa-angle-down"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">성적조회</a></li>
											

										</ul>
									</li>
								</ul>
							</nav>
						</div>
					</div>
					


					<!-- search -->
					<div class="search">
						<div class="cd-main-header">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#"> <span></span></a></li>
							</ul>
						</div>
						<div id="cd-search" class="cd-search">
							<form action="#" method="post">
								<input name="Search" type="search" placeholder="Click enter after typing...">
							</form>
						</div>
					</div>
					<!-- //search -->
					<div class="clearfix"></div>
				</nav>
			</div>
		</div>
		<!-- banner -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="container">
						<div class="carousel-caption">
							<h3>Set goal,</span></h3>
							<h4>reach the goal</h4>
							<p>Yedam LMS</p>

						</div>
					</div>
				</div>
				
			</div>
			<!-- The Modal -->
		</div>
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
								<form action="#" method="post">
									<input type="email" name="email" placeholder="E-mail" required="">
									<input type="password" name="password" placeholder="Password" required="">
									<div class="tp">
										<input type="submit" value="Sign In">
									</div>
								</form>
							</div>
							<div class="login-social-grids">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
								</ul>
							</div>
							<p><a href="#" data-toggle="modal" data-target="#myModal3"> Don't have an account?</a></p>
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
									<input type="text" name="name" placeholder="Username" required="">
									<input type="email" name="email" placeholder="Email" required="">
									<input type="password" name="password" placeholder="Password" required="">
									<input type="password" name="password" placeholder="Confirm Password" required="">
									<input type="submit" value="Sign Up">
								</form>
							</div>
							<p><a href="#"> By clicking Sign up, I agree to your terms</a></p>
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
					<p>©  2018 Yedam LMS. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
				</div>
			</div>
		</div>

	</footer>
	
	<!-- js -->
	<script type="text/javascript" src="./resources/web/js/jquery-2.1.4.min.js"></script>

	<!--search-bar-->
	<script src="./resources/web/js/js/search.js"></script>
	<!--//search-bar-->
			


	<script type="text/javascript" src="./resources/web/js/bootstrap.js"></script>
</body>

</html>