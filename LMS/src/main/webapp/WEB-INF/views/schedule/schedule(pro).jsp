<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>예담대학교</title>
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
<form name=scheduleFrm2 method="post" action="">
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
<%-- <c:forEach items="${schedulelistpro}" var="vo"> --%>
	
	<c:forTokens items="${schedulelistpro.classtime}" delims="," var="time">

	 <%-- //document.getElementById("${time}").innerHTML="${vo.classname}"; --%>
	<script> document.getElementById("${time}").innerHTML="${schedulelistpro.classname}";</script>
	</c:forTokens>
	
	 
<%-- </c:forEach> --%>
</table>
<br>
<button type="button" class="btn btn-danger" onclick="javascript:content_print();">출력</button>

<br><br>
</form>
</div>

</body>
</html>