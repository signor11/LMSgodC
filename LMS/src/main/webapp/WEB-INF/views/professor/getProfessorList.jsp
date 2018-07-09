<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<title>getProfessorList.jsp</title>
<script>

	function update_pro(a,b) {
		var check = confirm('교수 정보를 수정하시겠습니까?');
		if (check == true) {
			window.location.href = "./updateProfessor?professornum="+a+"&majornum="+b
		}
	} 

	
	function delete_pro(a) {
		var check = confirm('교수 정보를 삭제하시겠습니까?');
		if (check == true) {
			window.location.href = "./deleteProfessor?professornum="+a
	}
	}
	
</script>
</head>
<body>
	
	<br>
	<br>
	<h3 align="center">관리자용 교수 조회</h3>
	<br>

	
	<br>
	<p align=right>
		<a href="./insertProfessor"><button type="button" class="btn btn-danger" >등록</button></a>&emsp;&emsp;
		<a href="./professorExcelView"><button type="button" class="btn btn-danger" >엑셀출력</button></a>
	

	</p>

	<br>

	<table class="table table-hover">
		<tr>
			<td>교수번호</td>
			<td>비밀번호</td>
			<td>교수명</td>
			<td>학과명</td>
			<td>연락처</td>
			<td>등록일</td>
			<td>수정</td>
			<td>삭제</td>
			


		</tr>
		<c:forEach items="${List}" var="p" varStatus="a">
			<tr>
							
				<td>${p.PROFESSORNUM}</td>
				<td>***</td>
				<td>${p.PROFESSORNAME}</td>
				<td>${p.MAJORNAME}</td>
				<td>${p.PROFESSORPHONE}</td>
				<td>${p.HIREDATE}</td>
				<td><button type="button" class="btn btn-danger" onclick="update_pro('${p.PROFESSORNUM}', '${p.MAJORNUM}')">수정</button></td>
				<td><button type="button" class="btn btn-danger" onclick="delete_pro('${p.PROFESSORNUM}')">삭제</button></td>
				
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	

</body>
</html>