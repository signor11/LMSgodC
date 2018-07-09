<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<title>getStudentList.jsp</title>
<script>

	function update_stu(a,b) {
		var check = confirm('학생 정보를 수정하시겠습니까?');
		if (check == true) {
			window.location.href = "./updateStudent?studentnum="+a+"&majornum="+b+"&page=${paging.page}"
		}
	} 

	
	function delete_stu(a) {
		var check = confirm('학생 정보를 삭제하시겠습니까?');
		if (check == true) {
			window.location.href = "./deleteStudent?studentnum="+a+"&page=${paging.page}"
	}
	
	}
		
	function excel(){
		window.location.href = "./stuExcelView?majornum="+document.majorform.majornum.value
	}
	
	
</script>
</head>
<body>

	<br>
	<br>
	<h3 align="center">관리자용 학생 조회</h3>
	<br>
	<br>
	<p align=right>
		<a href="./insertStudent"><button type="button" class="btn btn-danger" >등록</button></a>&emsp;&emsp;
		<a href="#" onclick="excel()"><button type="button" class="btn btn-danger" >엑셀</button></a>
	</p>
	<br>
	<br>
	
		<div style="display: inline-block;">
		<form action="./getStudentList" name="majorform">
		<input type="hidden" name=page value="1">
		<p class="bst">학과명</p>
			<select name="majornum" class="form" onchange="document.majorform.submit()">
			<option value="">전체</option>
			<c:forEach items="${major}" var="m">
				<option value="${m.MAJORNUM}"
					<c:if test="${m.MAJORNUM==param.majornum}">selected</c:if>>
					${m.MAJORNAME}
				</option>
			</c:forEach>
		</select>
		</form>
		</div>
		<br>
		<br>

	<table class="table table-hover">
		<tr>
			
			<td></td>
			<td>학생번호</td>
			<td>학생명</td>
			<td>학과번호</td>
			<td>학과명</td>
			<td>연락처</td>
			<td>입학일</td>
			<td>수정</td>
			<td>삭제</td>
			


		</tr>
		<c:forEach items="${List}" var="h" varStatus="a">
			<tr>
				<td>${(paging.page-1)*10+1+a.index}</td>			
				<td>${h.STUDENTNUM}</td>
				<td>${h.STUDENTNAME}</td>
				<td>${h.MAJORNUM}</td>
				<td>${h.MAJORNAME}</td>
				<td>${h.STUDENTPHONE}</td>
				<td>${h.STARTDATE}</td>
				<td><button type="button" class="btn btn-danger" onclick="update_stu('${h.STUDENTNUM}', '${h.MAJORNUM}')">수정</button></td>
				<td><button type="button" class="btn btn-danger" onclick="delete_stu('${h.STUDENTNUM}')">삭제</button></td>
				
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<div align="center" >
	<!-- 페이징 -->
	<my:admin_paging admin_paging="${paging}"/>
			
		<script>
				function doList2(page) {
					majorform.page.value=page;
					majorform.submit();
				}
		</script>
	</div>		
	<br>
	<br>

</body>
</html>