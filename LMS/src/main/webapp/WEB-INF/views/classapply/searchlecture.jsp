<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<h3>강의신청조회</h3>
<c:forEach items="classapplyList" var="classapply">
	${classapply.classapplynum} ${classapply.classnum}
	${classapply.classname} ${classapply.classtime}
	${classapply.professorname} ${classapply.credit}

</c:forEach>
</body>
</html>