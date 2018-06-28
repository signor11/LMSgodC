<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>예담대학교</title>
<script>
	//성적표 출력
	function content_print() {

		var initBody = document.body.innerHTML;
		window.onbeforeprint = function() {
			document.body.innerHTML = document.getElementById('printarea').innerHTML;
		}
		window.print();
	}
	
	//새창 열기
	function openprint() {
		window
				.open("getSchedulepopup", "출력",
						"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");

	}
</script>
</head>
<body>
<div align="center" id="printarea">
<h3>학기 시간표</h3>
<form name=scheduleFrm method="post" action="">
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
<c:forEach items="${classapplylist2}" var="vo">
	<script>
	<c:forTokens items="${vo.classtime}" delims="," var="time">
	 document.getElementById("${time}").innerHTML="${vo.classname}";
	</c:forTokens>
	</script>
</c:forEach>
</table>
<br>
<button id="printbtn" type="button" class="btn btn-danger" onclick="javascript:openprint();">시간표 출력</button>
<button id="openbtn" type="button" class="btn btn-danger" onclick="javascript:content_print();">출력하기</button>


<script>
	if (document.location.pathname == '${pageContext.request.contextPath}/getSchedule') {
		 $("#openbtn").hide()
		
	}else {
		$("#printbtn").hide()
	}
</script>

<br><br>
</form>
</div>

</body>
</html>