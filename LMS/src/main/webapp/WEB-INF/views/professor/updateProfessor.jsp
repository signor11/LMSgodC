<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><title>updateProfessor.jsp</title></head>
<body>
<form action="./updateProfessor" method="post">
	<input type="text" name="num" value="${professor.professornum}">
	<input type="text" name="name" value="${professor.professorname}">
	<input type="text" name="phone" value="${professor.professorphone}">
 	<input type="text" name="date" value="${professor.hiredate}">
 	<input type="text" name="majornum" value="${professor.majornum}">
 	<input type="submit" value="수정"/>
</form> 
</body>
</html>