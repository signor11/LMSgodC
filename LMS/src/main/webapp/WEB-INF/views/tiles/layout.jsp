<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
<head>
<title>Learner a education bootstrap Website Template | Home ::
	w3layouts</title>
<!-- Bootstrap -->
<link href="./resources/web/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<link href="./resources/web/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

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
<!-- //Owl Carousel Assets -->
<!----font-Awesome----->
<link rel="stylesheet"
	href="./resources/web/fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<body>
	<div>
		<div class="container">
			<div class="row header">
				<div class="logo navbar-left">
					<h1>
						<a href="index.jsp"> <img
							src="./resources/web/images/yedam.png" width="300" height="70">
						</a>
					</h1>
				</div>


				<center>
					<hr>
					
					
						<form action="login.do" method="post">
							<table border="1" cellpadding="0" cellspacing="0">
								<tr>
				
									<form name=form1 method=post action="./login.do">
				<c:if test="${empty sessionScope.stdname }">
										<input type = "hidden" name="action" value="login"/>
								
									<td bgcolor="orange" width="40">아이디</td>
									<td><input class="w3-input w3-border" type="text"
										placeholder="id" name="studentnum" maxlength="8" />
									<td bgcolor="orange" width="45">비밀번호</td>
									<td><input class="w3-input w3-border" type="password"
										placeholder="password" name="studentpw" maxlength="8" />
									<td colspan="1" align="center"><input type="submit"
										 value="로그인" /></td>
					</c:if>		
						
									<td align="right"><c:if
											test="${sessionScope.mode =='pro' }">
											<a
												href='../control/applylecture_control.jsp?action=schedule(pro)'>
												<button type="button" class="btn btn-outline-primary">시간표</button>
											</a>

										</c:if> <c:if test="${sessionScope.mode =='std' }">
											<a href="../control/applylecture_control.jsp?action=schedule">
												<button type="button" class="btn btn-outline-primary">시간표</button>
											</a>

										</c:if></td>
							
							<c:if test="${!empty sessionScope.stdname}">
									<h3 align="left">${sessionScope.stdname}님
										환영합니다.<a href="logout.do" >로그아웃</a>
									</h3>
						</c:if>

								</tr>
							
							</table>
						</form>
					
						<hr>
				</center>


				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row h_menu">
			<nav class="navbar navbar-default navbar-left" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="login.jsp">홈</a></li>
					<li><a href="getUserList">강의</a></li>
					<li><a href="getBoardList">과제</a></li>
					<li><a href="login.jsp">시험</a></li>
					<li><a href="getUserList">성적</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse --> <!-- start soc_icons --> </nav>

			<div class="soc_icons navbar-right">
				<ul class="list-unstyled text-center">
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#"><i class="fa fa-youtube"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				</ul>
			</div>
		</div>
	</div>

	<tiles:insertAttribute name="body" />
</body>

</html>