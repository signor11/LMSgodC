<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<script>
	function updateclass(a) {
		var check = confirm('과목 정보를 수정하시겠습니까?');
		if (check == true) {
			window.location.href = "${pageContext.request.contextPath}/updateClassForm?classnum="+a
		}
	}

	function deleteclass(classnum) {
		var result = confirm('과목 정보를 삭제하시겠습니까?');
				if (result == true) {
				var requestData={"classnum" : classnum}
					$.ajax({
						url : "${pageContext.request.contextPath}/deleteClass",
						data : requestData,
						dataType : 'json',
						success : function(data){
							alert('처리되었습니다')
							$("#my"+classnum).remove();
			}
		});
	}
}
</script>

</head>
<body>

	<br>
	<br>
	<h3 align="center">관리자용 과목 조회</h3>
	<br>


	<br>
	<p align=right>
		<a href="./insertClassForm"><button type="button" class="btn btn-danger">등록</button></a>
	</p>
	<br>
	<br>

	<table class="table table-hover">
		<tr>
			<td>과목번호</td>
			<td>과목명</td>
			<td>학점</td>
			<td>수강인원</td>
			<td>담당교수</td>
			<td>강의시간</td>
			<td>수정</td>
			<td>삭제</td>
		</tr>

		<c:forEach items="${List}" var="c" varStatus="a">
			<tr id ="my${c.CLASSNUM}">
				<td>${c.CLASSNUM}</td>
				<td>${c.CLASSNAME}</td>
				<td>${c.CREDIT}</td>
				<td>${c.MAXSTUDENT}</td>
				<td>${c.PROFESSORNAME}</td>
				<td>${c.CLASSTIME}</td>
				<td><button type="button" class="btn btn-danger"
						onclick="updateclass('${c.CLASSNUM}');">수정</button></td>
				<td><button type="button" class="btn btn-danger"
						onclick="deleteclass('${c.CLASSNUM}');">삭제</button></td>
		</c:forEach>
	</table>


</body>
</html>