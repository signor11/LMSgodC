<%@page import="java.util.Locale"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transcript.jsp</title>
<script>
	function content_print() {

		var initBody = document.body.innerHTML;
		window.onbeforeprint = function() {
			document.body.innerHTML = document.getElementById('printarea').innerHTML;
		}
		window.onafterprint = function() {
			document.body.innerHTML = initBody;
		}
		window.print();
	}
</script>
</head>

<body>
	<div id="printarea" align="center">
		<h2>영구성적 조회</h2>
		<hr>
		<form method="post">
			<table  class="table table-hover" style = " width:100%; margin-bottom: 10">
				
					<tr>
						<td>학번</td>
						<td>${transList[0].getStudentnum()}</td>
						<td>주야구분</td>
						<td><input type="radio" name="" checked>주 <input
							type="radio" name="">야</td>
					</tr>
					<tr>
						<td>소속</td>
						<td colspan="3">${transList[0].getMajorname()}</td>
					</tr>
				
			</table>

			<h4>과목별 성적</h4>
			<table class="table table-hover" style = "width:100%">
				<c:set var="sum" value="0"></c:set>
				<c:set var="sums" value="0"></c:set>
				<c:set var="sumc" value="0"></c:set>
				<tr>
					<td>년도</td>
					<td>과목번호</td>
					<td>교과목명</td>
					<td>학점</td>
					<td>이수학점</td>
					<td>성적등급</td>
					<td>평점</td>
					<td>성적상태</td>
				</tr>
				<c:forEach items="${transList}" var="trans">
					<tr>
						<td>
							<%
								Calendar calendar = new GregorianCalendar(Locale.KOREA);
									int nYear = calendar.get(Calendar.YEAR);
									out.print(nYear);
							%>
						</td>
						<td>${trans.getClassnum()}</td>
						<td>${trans.getClassname()}</td>
						<td>${trans.getScore()}</td>
						<td>${trans.getCredit()}</td>
						<td>${trans.getGrade()}</td>
						<td>${trans.getScoret()}</td>
						<td>성적확정</td>
					</tr>
					<c:set var="sumc" value="${sumc+trans.credit}"></c:set>
					<c:set var="sum" value="${sum+trans.score}"></c:set>
					<c:set var="sums" value="${sums+trans.scoret}"></c:set>
				</c:forEach>
			</table>
			<br><br>
			<table  class="table table-hover" style = "width:100%">
				<tr>
					<td>총이수학점</td>
					<td><c:out value="${sumc }" /></td>
					<td>총학점</td>
					<td><c:out value="${sums }" /></td>
					<td>총점</td>
					<td><c:out value="${sum }" /></td>
				</tr>
			</table>
		</form>
	</div>
	<br>
	<div align="center">
		<a href=# class = "btn btn-danger" onclick="javascript:content_print();">인쇄하기</a>
	</div>

	<br>
</body>
</html>
