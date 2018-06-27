<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
	<a href="./insertProfessor" style="font-size: 18px; margin-left: 47.5%">교수등록</a>

	<div class="container-fluid">
	
		<c:forEach items="${professorList}" var="professor">
			<div class="col-sm-4 col-md-4 col-lg-8"
				style="width: 300px; font-size: 15px; text-align: left;">
				<%-- 
				아이디:${professor.PROFESSORNUM}<br>
				이름:${professor.PROFESSORNAME}<br>
				연락처:${professor.PROFESSORPHONE}<br>
				입사일:${professor.HIREDATE}<br> 
				과목번호:${professor.MAJORNUM}<br>
		 		 --%>
		  
		  
				<table border="1">
					<tr>
						<td>아이디</td>
						<!-- id는 수정이 불가능하도록 readonly속성 추가 -->
						<td><input name="pnum" value="${professor.PROFESSORNUM}"
							readonly="readonly"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input name="password" value="${professor.PROFESSORPW}"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input name="pname" value="${professor.PROFESSORNAME}"></td>
					</tr>
					<!-- 누락된 부분 -->
					<tr>
						<td>핸드폰</td>
						<td><input name="phone" value="${professor.PROFESSORPHONE}"></td>
					</tr>
					<!-- 누락된 부분 -->
					<tr>
						<td>회원가입일자</td>
						<td><input value="${professor.HIREDATE}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					</tr>
					<br>
					<tr>
						<td colspan="2" align="center">
						<input type="button"value="수정" id="btnUpdate">				 
						<input type="button"value="삭제" id="btnDelete"></td>
					</tr>
				</table>
			</div>
		</c:forEach>
	</div>
 

	<%-- <div class="col-sm-3 col-md-6 col-lg-4" 
	style=" width:300px; margin-left: 43%; font-size: 18px; text-align: bottom;">
			<input type="text" name="pnum" value="${professor.PROFESSORNUM}">교수번호<br>
			<input type="text" name="pname" value="${professor.PROFESSORNAME}">교수이름<br>
			<input type="text" name="phone" value="${professor.PROFESSORPHONE}">연락처<br>
			<input type="text" name="date" value="${professor.HIREDATE}">입사일<br>
			<input type="text" name="majornum" value="${professor.MAJORNUM}">과목번호<br>
			<a href="./getProfessor"><input type="submit" value="조회"/></a>
			<a href="./updateProfessor"><input type="submit" value="수정"/></a>
			<a href="./deleteProfessor"><input type="submit" value="삭제"/></a>
			<a href="./insertProfessor"><input type="submit" value="등록"/></a>
	</div>
	 --%>
</head>
</html>