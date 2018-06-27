<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>예담대학교</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script src="../scripts/jquery-3.2.1.min.js"></script>
<script>
	function content_print() {

		var initBody = document.body.innerHTML;
		window.onbeforeprint = function() {
			document.body.innerHTML = document.getElementById('printarea').innerHTML;
		}
		window.print();
	}
</script>
</head>
<body>
<div align="center" id="printarea">
<h3>학기 시간표</h3>
<form name=scheduleFrm method="post" action="schedule.jsp?action=schedule">
<table border="1" class="table table-hover" id="table1">
<tr>
<td>&nbsp;</td><td>월</td><td>화</td>
<td>수</td><td>목</td><td>금</td>
</tr>
<% String[] dayarr = {"월","화","수","목","금"}; %>
<c:set var="d" value="<%=dayarr %>">

</c:set>
<c:forEach begin = "1" end = "4" varStatus="r">
	<tr><td>&nbsp;${r.index }교시</td>
	<c:forEach begin = "0" end = "4" varStatus="c">	
			<td id="${d[c.index]}${r.count}"></td>
	</c:forEach>	
	</tr>
</c:forEach>
<c:forEach items="${classapplylist}" var="vo">
	<script>
	<c:forTokens items="${vo.getClasstime()}" delims="," var="time">
	 document.getElementById("${time}").innerHTML="${vo.getClassname()}";
	</c:forTokens>
	</script>
</c:forEach>
</table>
<br>
<button type="button" class="btn btn-danger" onclick="javascript:content_print();">출력</button>


<br><br>
</form>
</div>

</body>
</html>