<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><title>updateProfessor.jsp</title></head>
<body>
	<div style="border: 1px solid yellow; width: 300px; margin-left: 43%; font-size: 15px; text-align: left;" align="center"  >
<form action="./updateProfessor" method="post">
	<input type="text" name="professornum" value="${professor.professornum}">교수번호<br>
	<input type="text" name="professorname" value="${professor.professorname}">교수이름<br>
	<input type="text" name="professorphone" value="${professor.professorphone}">연락처<br>
 	<input type="text" name="hiredate" value="${professor.hiredate}">입사일<br>
 	<input type="text" name="majornum" value="${professor.majornum}">과목번호<br>
 	
 	<input type="submit" value="수정"/>
</form> 
</div>
</body>
</html>