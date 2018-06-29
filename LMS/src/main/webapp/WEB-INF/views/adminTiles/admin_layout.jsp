<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
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
  <link href="./resources/admin/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
   <!-- javascripts -->
  <script src="./resources/admin/js/jquery.js"></script>
  <script src="./resources/admin/js/jquery-ui-1.10.4.min.js"></script>
  <script src="./resources/admin/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="./resources/admin/js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="./resources/admin/js/bootstrap.min.js"></script>
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">
    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="index.html" class="logo">Nice <span class="lite">Admin</span></a>
      <!--logo end-->

      <div class="nav search-row" id="top_menu">
        <!--  search form start -->
        <ul class="nav top-menu">
          <li>
            <form class="navbar-form">
              <input class="form-control" placeholder="Search" type="text">
            </form>
          </li>
        </ul>
        <!--  search form end -->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
            <a class="" href="index.html">
                          <i class="icon_house_alt"></i>
                          <span>Notice</span>
                      </a>
          </li>
          <li class="sub-menu">
            <a href="" class="">
                          <i class="icon_document_alt"></i>
                          <span>Attendance</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            
          </li>
          <li class="sub-menu">
            <a href="" class="">
                          <i class="icon_desktop"></i>
                          <span>Survey</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            
          </li>
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
