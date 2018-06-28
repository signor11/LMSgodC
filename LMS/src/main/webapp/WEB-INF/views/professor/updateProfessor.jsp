<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><title>updateProfessor.jsp</title></head>
<body>
	<div style="border: 1px solid yellow; width: 300px; margin-left: 43%; font-size: 15px; text-align: left;" align="center"  >
<form action="./updateProfessor" method="post">
	<input type="text" name="num" value="${professor.PROFESSORNUM}">교수번호<br>
	<input type="text" name="name" value="${professor.PROFESSORNAME}">교수이름<br>
	<input type="text" name="phone" value="${professor.PROFESSORPHONE}">연락처<br>
 	<input type="text" name="date" value="${professor.HIREDATE}">입사일<br>
 	<input type="text" name="majornum" value="${professor.MAJORNUM}">과목번호<br>
 	<input type="submit" value="수정"/>
</form> 
</div>
</body>
</html>