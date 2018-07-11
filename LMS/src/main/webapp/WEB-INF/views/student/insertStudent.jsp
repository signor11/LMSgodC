<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript"></script>

<head>


<script>
	function openstudent() {
		location.assign("./getStudentList");

	}

	$(document).ready(function() {

		$("#btn_insert").click(function() {

			var tel1_pattern = /(^01[016789]$)/;

			//alert("ok");
			
			if ($("#pwd").val() == "") {
				alert("비밀번호를 꼭 입력하세요!");
				$("#pwd").focus();
				return false;

			} else if ($("#name").val() == "") {
				alert("이름을 꼭 입력하세요!");
				$("#name").focus();
				return false;

			} else if ($("#tel1").val() == "") {
				alert("전화번호를 입력하세요!");
				$("#tel1").focus();
				return false;

			} else if ($("#tel1").val().length != 11) {

				alert("전화번호를 11개의 숫자로 꼭 입력하세요!");
				$("#tel1").val("");
				$("#tel1").focus();
				return false;

			} else if ($("#majornum").val() == "") {
				alert("학과명을  꼭 선택하세요!");
				$("#majornum").focus();
				return false;

			} else if ($("#hiredate").val() == "") {
				alert("등록일을  꼭 입력하세요!");
				$("#startdate").focus();
				return false;

			} else {
				alert("등록 완료");
				//return true;
				a.submit();
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
	<h3 align="center">관리자용 학생 등록</h3>
	<br>
	<br>
	<div class="panel-body">
		<form action="./insertStudent" name="a" class="form-horizontal" method="post">
			<input type="hidden" name="studentnum" />
			<!-- <div class="form-group">
                    <label class="col-sm-2 control-label" >아이디</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="studentnum" id="id" size="18"
						maxlength="12">
                    <span class="help-block">8자리</span>
                    </div>
                  </div> -->

			<div class="form-group">
				<label class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" id="pwd" name="studentpw" size="18" maxlength="12"
						class="form-control" />

				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">이 름</label>
				<div class="col-sm-10">
					<input type="text" name="studentname" id="name" size="18"
						maxlength="12" class="form-control" />
				</div>

			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-10">
					<input type="text" name="studentphone" class="form" id="tel1"
						size="18" maxlength="11" /> <span class="help-block">숫자만
						11자리</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">학과명</label>
				<div class="col-sm-10">
					<select id="majornum" class="form" name="majornum"
						style="position: relative; top: 8px;">
						<option value="" selected hidden="">선택</option>
						<c:forEach items="${major}" var="m">
							<option value="${m.MAJORNUM}">${m.MAJORNAME}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">입학일</label> <input type="text"
					class="form" name="startdate" id="hiredate" />
			</div>

			<div align="center">
				<input type="button" id="btn_insert" class="btn btn-danger"
					value="등록"> <input type="reset" id="btn_cancel"
					class="btn btn-danger" onclick="javascript:openstudent();"
					value="취소">
			</div>
		</form>
	</div>



</body>
</html>