<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원등록</title>

<style>
#jointable tr {
	width: 200px;
	font-size: 20px;
}

#jointable th {
	text-align: right;
	background-color: orange;
}

#jointable td input {
	border: 1px solid seagreen;
}
</style>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript"></script>
 <script>
	$(document).ready(function() {

		$("#btn_insert").click(	function() {

						 	var tel1_pattern = /(^01[016789]$)/;

							//alert("ok");
							if ($("#id").val().length != 8) {
								alert("아이디 8자리를 꼭 입력하세요!");
								$("#id").focus();
							} else if ($("#pwd").val() == "") {
								alert("비밀번호를 꼭 입력하세요!");
								$("#pwd").focus();

							} else if ($("#pwd2").val() == "") {
								alert("비밀번호확인 을 꼭 입력하세요!");
								$("#pwd2").focus();

							} else if ($("#pwd").val() != $(
									"#pwd2").val()) {
								alert("비밀번호와 비밀번호 확인이 일치하지않습니다.");
								$("#pwd").val("");
								$("#pwd2").val("");
								$("#pwd1").focus();

							} else if ($("#name").val() == "") {
								alert("이름을 꼭 입력하세요!");
								$("#name").focus();

							} else if ($("#tel1").val() == "") {
								alert("전화번호를 입력하세요!");
								$("#tel1").focus();

							} else if ($("#tel1").val().length != 11) {

								alert("전화번호를 11개의 숫자로 꼭 입력하세요!");
								$("#tel1").val("");
								$("#tel1").focus();

							}  
							 else if ($("#major").val() == "") {
								alert("담당과목을  꼭 선택하세요!");
								$("#major").focus();

							} else if ($("#hiredate").val() == "") {
								alert("등록일을  꼭 입력하세요!");
								$("#hiredate").focus();

							} else {
								alert("등록 완료");
							} 
					});
		
					$("#hiredate").datepicker({
						dateFormat : 'yy-mm-dd'
					});
						
		});

	//$("#birth").datepicker();
	//$.datepicker.setDefaults( $.datepicker.regional[ "" ] );
	//$("#birth").datepicker($.datepicker.regional["ko"]);
	 
</script>
</head>
<body>
	<h1 align="center">교수등록</h1>


	<div class="w3-container w3-padding-30 w3-row-padding "
		style="padding: 50px">
		<form action="./insertProfessor" method="post">
	<table id="jointable" align="center">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="professornum" id="id" size="18"
						maxlength="12" class="form-control"/></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="professorpw" id="pwd" size="18"
						maxlength="12" class="form-control"/></td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
					<td><input type="password" name="pwd2" id="pwd2" size="18"
						maxlength="12" class="form-control"/></td>
				</tr>

				<tr>
					<th>이름</th>
					<td><input type="text" name="professorname" id="name" size="18"
						maxlength="12" class="form-control"/></td>
				</tr>
				<tr>
					<th>휴대폰</th>
					<td><input type="text" name="professorphone" id="tel1" size="18"
						maxlength="11" /></td>
				</tr>
				<tr>
					<th>담당과목</th>
					<td><select id="major" name="majornum">
							<option value="" selected hidden="">선택</option>
							<option value="38000001">컴공</option>
							<option value="38000002">국문</option>
							<option value="38000003">기계</option>
							<option value="38000004">예절</option>
							
					</select></td>
				</tr>
				<tr>
					<th>등록일</th>
					<td><input type="text" name="hiredate" id="hiredate" size="18" maxlength="10" />
					</td>
				</tr>

				<tr align="right">
					<td colspan="2">
					<input type="submit" id="btn_insert"value="등록">
					<input type="reset" id="btn_cancel" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
