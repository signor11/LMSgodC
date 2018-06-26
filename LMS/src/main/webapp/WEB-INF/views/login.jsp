<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	

	
<!DOCTYPE html>
<html>
<title>lms</title>
<style>
.popup_btn_sec {
	padding-top: 24px;
	text-align: center
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>


	<!-- Header -->
	
		<br> <img class="w3-image w3-opacity-max"
			src="../images/project1.jpg" alt="Architecture" width="100%"
			height="600">
		<div class="w3-display-middle w3-margin-top w3-center">
			<div class="w3-container" style="width:500px; height: 60px; background-color:rgb(127,115,108)">
				<h2>
					<i class="w3-center"></i>Login
				</h2>
			</div>
			<div class="w3-container w3-white" style="width:100%; height: 250px;">
				
				<form name=form1 method=post action="./login.do">
				
				<input type = "hidden" name="action" value="login"/>
				
					<div class = "w3-center">
				
					<label> id</label> 
							<input class="w3-input w3-border" type="text" placeholder="id" 
								name="studentnum" maxlength="8">
							<label> password</label> <input
								class="w3-input w3-border" type="password" placeholder="password" 
								name="studentpw"  maxlength="8" required>
					</div>
					<br>
					<button class="w3-button w3-dark-grey" type="submit">Login</button>
				</form>
			</div>
		</div>



</body>
</html>
