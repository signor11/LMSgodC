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
	$(document).ready(function() {

		$("#btn_insert").click(function() {

			var tel1_pattern = /(^01[016789]$)/;

			//alert("ok");
			if ($("#name").val() == "") {
				alert("학과명을 입력하세요");
				$("#name").focus();
			} else {
				alert("등록 완료");
			}
		});

	});

	function cancel() {
		window.history.back();
	}
</script>
</head>
<body>
	<br>
	<br>
	<h3 align="center">관리자용 학과 등록 및 수정</h3>
	<br>
	<br>
	<div class="panel-body">
		<c:if test="${empty maj}">
			<c:set value="./insertMajor" var="a" />
		</c:if>
		<c:if test="${not empty maj}">
			<c:set value="./updateMajor" var="a" />
		</c:if>

		<form action="${a}" class="form-horizontal" method="post">
			<input type="hidden" value="${maj.majornum}" name="majornum" />


			<div class="form-group">
				<label class="col-sm-2 control-label">학과명</label>
				<div class="col-sm-10">
					<input type="text" id="name" name="majorname" size="18"
						maxlength="12" value="${maj.majorname}" class="form-control" />

				</div>
			</div>

			<br>
			<div align="center">
				<input type="submit" id="btn_insert" class="btn btn-danger"
					value="등록"> <input type="button" class="btn btn-danger"
					onclick="cancel()" value="취소">
			</div>
		</form>
	</div>



</body>
</html>