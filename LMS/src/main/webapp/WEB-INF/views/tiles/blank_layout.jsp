<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!-- Bootstrap -->
<link href="./resources/web/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<link href="./resources/web/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
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
<!-- //Owl Carousel Assets -->
<!----font-Awesome----->
<link rel="stylesheet"
	href="./resources/web/fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<tiles:insertAttribute name="content"/>