<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<form action="">
<table>
	<tr>
	<td>과목명</td>
	<td>학점</td>
	<td>수강인원</td>
	<td>담당교수</td>
	<td>강의시간</td>
	</tr>
	<tr>
	<td><input type="text" name="classname"></td>
	<td><input type="text" name="credit"></td>
	<td><input type="text" name="maxstudent"></td>
	<td><select name="professorname">
	<c:forEach items="${professorList}" var="pro">
    <option value="${pro.getProfessornum()}">${pro.getProfessorname()}</option>
    </c:forEach>
</select></td>
	<td><input type="text" name="classtime"></td>
</table>
<input type="submit" value="등록">
<input type="reset" value="초기화">

</form>
</body>
</html>