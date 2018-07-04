<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<title>getMajorList.jsp</title>
<script>

	function update_major(a) {
		var check = confirm('학과 정보를 수정하시겠습니까?');
		if (check == true) {
			window.location.href = "./insertMajor?&majornum="+a
		}
	} 

	
	function delete_major(a) {
		var check = confirm('학과 정보를 삭제하시겠습니까?');
		if (check == true) {
			window.location.href = "./deleteMajor?majornum="+a
	}
	
	}
		
	function excel(){
		window.location.href = "./majExcelView"
	}
	
	
</script>
</head>
<body>

	<br>
	<br>
	<h3 align="center">관리자용 학과 조회</h3>
	<br>
	<br>
	<p align=right>
		<a href="./insertMajor"><button type="button" class="btn btn-danger" >등록</button></a>&emsp;&emsp;
		<a href="#" onclick="excel()"><button type="button" class="btn btn-danger" >엑셀</button></a>
	</p>
	

	<table class="table table-hover">
		<tr>
			
			<td></td>
			<td>학과번호</td>
			<td>학과명</td>
			<td>수정</td>
			<td>삭제</td>


		</tr>
		<c:forEach items="${major}" var="h" varStatus="a">
			<tr>
				<td><%-- ${(paging.page-1)*10+1+a.index} --%></td>			
				<td>${h.MAJORNUM}</td>
				<td>${h.MAJORNAME}</td>
				<td><button type="button" class="btn btn-danger" onclick="update_major('${h.MAJORNUM}')">수정</button></td>
				<td><button type="button" class="btn btn-danger" onclick="delete_major('${h.MAJORNUM}')">삭제</button></td>
				
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<%-- <div align="center" >
	<!-- 페이징 -->
	<my:admin_paging admin_paging="${paging}"/>
			
		<script>
				function doList2(page) {
					location.href = "./getStudentList?page=" + page
				}
		</script>
	</div>		 --%>
	<br>
	<br>

</body>
</html>