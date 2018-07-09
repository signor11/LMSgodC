<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교수등록</title>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript"></script>


<script>
	function openprofessor() {
		location.assign("./getProfessorList");
	}

	$(document).ready(function() {

		$("#btn_insert").click(function() {

			var tel1_pattern = /(^01[016789]$)/;

			//alert("ok");
			if ($("#pwd").val() == "") {
				alert("비밀번호를 꼭 입력하세요!");
				$("#pwd").focus();

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

			} else if ($("#major").val() == "") {
				alert("학과명을  꼭 선택하세요!");
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

	<br>
	<br>
	<h3 align="center">교수 등록</h3>
	<br>


	<br>


	<div class="panel-body">
		<form class="form-horizontal" class="form-group"
			style="top: 20px; right: 298px;" " method="post">

			<div class="form-group">
				<label class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" name="professorpw" id="pwd" size="18"
						maxlength="12" class="form" />

				</div>
			</div>

			<div class="form-group" style="top: 20px; right: 298px;">
				<label class="col-sm-2 control-label">이 름</label>
				<div class="col-sm-10">
					<input type="text" name="professorname" id="name" size="18"
						maxlength="12" class="form" />
				</div>
			</div>
			<div class="form-group"style="top: 20px; right: 298px;">
				<label class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-10">
					<input type="number" name="professorphone" id="tel1" size="18"
						maxlength="11" class="form"/>

				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">학과명</label>
				<div class="col-sm-10">
					<select id="major" name="majornum"
						style="position: relative; top: 8px;"class="form">
						<option value="" selected hidden="">선택</option>
						<c:forEach items="${major}" var="m">
							<option value="${m.MAJORNUM}">${m.MAJORNAME}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">등록일</label> <input type="text"
					name="hiredate" id="hiredate" size="18" maxlength="10"
					style="position: relative; left: 15px;" class="form" />
			</div>

			<div align="center">
				<input type="submit" id="btn_insert" class="btn btn-danger"
					value="등록"> <input type="reset" id="btn_cancel"
					class="btn btn-danger" onclick="javascript:openprofessor();"
					value="취소">
			</div>
		</form>
	</div>
</body>
</html>
