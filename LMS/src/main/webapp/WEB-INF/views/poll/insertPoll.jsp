<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my"%>

<!DOCTYPE html>
<html>
<head>
<title></title>

</head>
<body>
<br>
	<form action="./insertPoll" method="post">
		<div align=center>
			<div>
				<h1>
					강의 만족도 조사<br> <br>
				</h1>
			</div>

			<table>
				<tr>
					<td>1. 전체적으로 수업내용이 체계적으로 구성되었다.</td>
				</tr>


			</table>

			<br>

			<table border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<td><input type="radio" name="answer1" value="1" />1. 매우 그렇지
						않다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer1" value="2" />2. 그렇지 않다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer1" value="3" />3. 보통이다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer1" value="4" />4. 그렇다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer1" value="5" />5. 매우 그렇다</td>
				</tr>
			</table>
			<br>
			<hr>
			<br>
			<table>
				<tr>
					<td>2.강의내용은 해당분야의 지식을 습득하는데 도움이 되었다.</td>
				</tr>


			</table>

			<br>

			<table border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<td><input type="radio" name="answer2" value="1" /> 1. 매우 그렇지
						않다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer2" value="2" />2. 그렇지 않다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer2" value="3" />3. 보통이다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer2" value="4" />4. 그렇다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer2" value="5" />5. 매우 그렇다</td>
				</tr>
			</table>
			<br>
			<hr>
			<br>
			<table>
				<tr>
					<td>3. 전반적으로 이 수업에 만족하였다.</td>
				</tr>


			</table>

			<br>

			<table border='0' cellspacing='0' cellpadding='0'>
				<tr>
					<td><input type="radio" name="answer3" value="1" />1. 매우 그렇지 않다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer3" value="2" />2. 그렇지 않다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer3" value="3" />3. 보통이다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer3" value="4" />4. 그렇다</td>
				</tr>
				<tr>
					<td><input type="radio" name="answer3" value="5" />5. 매우 그렇다</td>
				</tr>
			</table>
			<br>
			<hr>
			<br> <button type="submit" class="btn btn-danger">저장</button>
	</form>
	<br>
	<br>
</body>
</html>