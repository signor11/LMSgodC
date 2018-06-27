<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<div align="center" >
		<p style="font-size: 34px">강의 조회</p>
		<div style="display: inline-block;">
			<form name="searchFrm" method="post"
				action="">
				<input type="hidden" name="action" value="list"> <input
					type="hidden" name="p" value="1" /> <input type="text" value="강의구분"
					disabled="disabled" size="7" style="text-align: center;"
					class="btn btn-danger"> <input type="radio" name="q"
					value="nonmajor">교양 <input type="radio" name="q"
					value="major" checked="checked">전공 <br> <br> <input
					type="text" value="교수명" disabled="disabled" size="5"
					style="text-align: center;" class="btn btn-danger"> <input
					type="text" name="professorname" placeholder="내용을 입력해주세요" size="20">
				<input type="text" value="교시" disabled="disabled" size="4"
					style="text-align: center;" class="btn btn-danger"> <select
					name="classtime">
					<option hidden="" disabled="disabled" selected="selected">Dropdown</option>
					<option value="1">1교시</option>
					<option value="2">2교시</option>
					<option value="3">3교시</option>
				</select> <input type="text" value="강의명" disabled="disabled" size="5"
					style="text-align: center;" class="btn btn-danger"> <input
					type="text" name="classname" placeholder="내용을 입력해주세요" size="40">
				<input type="submit" value="조회" size="3" style="text-align: center;"
					class="btn btn-danger">

				<p>* 개설강좌 강의시간 목록</p>
				<table class="table table-hover">
					<tr>
						<td>과목번호</td>
						<td>과목명</td>
						<td>강의시간</td>
						<td>교수명</td>
						<td>학점</td>
						<td>수강인원</td>
					</tr>
					<c:forEach items="${classlist}" var="v">
						<tr>
							<td>${v.CLASSNUM}</td>
							<td>${v.CLASSNAME}</td>
							<td>${v.CLASSTIME}</td>
							<td>${v.PROFESSORNAME}</td>
							<td>${v.CREDIT}</td>
							<td>${v.MAXSTUDENT}</td>
						</tr>
					</c:forEach>
					
				</table>
			</form>
			<%-- <div>
				<my:paging jsfunc="doList" paging="${paging}" />
			</div> --%>
		</div>
	</div>


	<br>
	<br>
	<br>

</body>
</html>