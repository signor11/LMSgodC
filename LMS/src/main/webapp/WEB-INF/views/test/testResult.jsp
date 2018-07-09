<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.yedam.lms.test.ExamContentsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<body>
<div style="text-align: center;font-size: 50px">${testscore }점<br>맞은 번호 : ${d }<br>
<a href="./goHome" class="btn btn-danger">메인으로</a>
</div>

</body>
</html>