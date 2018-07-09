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

			} else if ($("#major").val() == "") {
				alert("담당과목을  꼭 선택하세요!");
				$("#major").focus();
				return false;
				
			} else if ($("#hiredate").val() == "") {
				alert("등록일을  꼭 입력하세요!");
				$("#hiredate").focus();
				return false;

			} else {
				alert("등록 완료");
				return true;
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
	<h3 align="center">관리자용 학생 수정</h3>
	<br>
	<br>
	<div class="panel-body">
		<form action="./updateStudent" method="post" name="stu_Form"
			class="form-horizontal " method="post">
			<div class="form-group">
				<label class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<input type="text" id="id" class="form-control" name="studentnum" 
						size="18" maxlength="12" readonly="readonly" value="${get_stu.studentnum}"> <span
						class="help-block">8자리</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10" >
					<input type="text" id="pwd" name="studentpw" size="18" maxlength="12"
						class="form-control" value="${get_stu.studentpw}" />

				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">이 름</label>
				<div class="col-sm-10" >
					<input type="text" id="name" name="studentname" size="18"
						maxlength="12" class="form-control" value="${get_stu.studentname}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-10">
					<input type="text" id="tel1" name="studentphone" size="18"
						maxlength="11" class="form" value="${get_stu.studentphone}" /> <span
						class="help-block">숫자만 11자리</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">학과명</label>
				<div class="col-sm-10">
					<select id="major" id="major" class="form" name="majornum"
						style="position: relative; top: 8px;">
						<c:forEach items="${m_list}" var="m">
							<option value="${m.MAJORNUM}"
								<c:if test="${m.MAJORNUM==param.majornum}">selected</c:if>>
								${m.MAJORNAME}</option>
						</c:forEach>

						<%-- <option value="${major.majornum}" selected>${major.majorname}</option> --%>
						<!-- <option value="" selected hidden="">선택</option>
							<option value="38000001">컴공</option>
							<option value="38000002">국문</option>
							<option value="38000003">기계</option>
							<option value="38000004">예절</option> -->

					</select>

				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">입학일</label> <input type="text"
					name="startdate" id="hiredate" class="form"
					value="${get_stu.startdate}" />
			</div>
			<div align="center">
				<input type="submit" id="btn_insert" class="btn btn-danger"
					value="등록"> <input type="reset" id="btn_cancel"
					class="btn btn-danger" onclick="javascript:openstudent();"
					value="취소">
			</div>

		</form>
	</div>
</body>
</html>