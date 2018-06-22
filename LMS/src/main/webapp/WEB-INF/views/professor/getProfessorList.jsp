<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<%-- <h3>교수목록</h3>
	<form>
		<select>
			<option>선택</option>
			<c:forEach items="${conditionMap}" var="item">
				<option value="${item.value}">${itme.key}</option>
			</c:forEach>
		</select>
	<input type="submit" value="검색"/>
	</form>

	<a href="insertProfessorForm">교수등록하기</a> --%>
	<h3 align="center">교수목록</h3>
	<div>
	<c:forEach items="${professorList}" var="professor">
		<div style="border: 1px solid yellow; width: 300px; margin-left: 43%; font-size: 15px; text-align: left;" align="center"  >
		
			professornum:${professor.PROFESSORNUM}<br>
			professorname:${professor.PROFESSORNAME}<br> 
			professorphone:${professor.PROFESSORPHONE}<br>
			hiredate:${professor.HIREDATE}<br> 
			major:${professor.MAJORNUM}<br>
		</div>
	</c:forEach>
	</div>
</body>
</html>