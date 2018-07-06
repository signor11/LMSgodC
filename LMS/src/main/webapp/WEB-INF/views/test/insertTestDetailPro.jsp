<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.yedam.lms.test.TestVO"%>
<%@page import="com.yedam.lms.test.ExamContentsVO"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String classnum,exnum,tnum,cnts="";
	String temp="temp";
	int cnt = Integer.parseInt(((ExamContentsVO)request.getAttribute("sub")).getCnt());
	int exnum2;
	classnum = ((TestVO)session.getAttribute("regi")).getClassnum();
	if(cnt<10){
		cnts="000"+cnt;
	}
	else if(cnt>=10 && cnt<100){
		cnts="00"+cnt;
	}
	else if(cnt>=100 && cnt<1000){
		cnts="0"+cnt;
	} 
	exnum = "55"+classnum.charAt(0)+classnum.charAt(7)+cnts;
	exnum2 = Integer.parseInt("55"+classnum.charAt(0)+classnum.charAt(7)+"0000");
	tnum=((TestVO)session.getAttribute("regi")).getTestnum();
	request.setAttribute("exnum2", exnum2);
	request.setAttribute("testnum", tnum);
	request.setAttribute("temp", temp);
%>

	<div class="w3-container " style="padding: 50px">
		<br><br>
		<h2>시험출제</h2>
		<br><br>
		<form action="./insertTestDetailPro2">
			<input type="text" name="testnum" required="required"
				value="<%=tnum%>" hidden=""> <input type="text" value="과목명" class="bst"
				style="padding: 10px; display: inline-block; text-align: center;"
				size="5" disabled="disabled">
			<c:if test="${regi.classnum == '48000001' }">자바</c:if>
			<c:if test="${regi.classnum == '48000002' }">데이터베이스</c:if>
			<c:if test="${regi.classnum == '48000003' }">소설</c:if>
			<c:if test="${regi.classnum == '48000004' }">시</c:if>
			<c:if test="${regi.classnum == '48000005' }">캐드</c:if>
			<c:if test="${regi.classnum == '48000006' }">전자기계</c:if>
			<c:if test="${regi.classnum == '58000001' }">영어</c:if>
			<c:if test="${regi.classnum == '58000002' }">수학</c:if>
			<input type="text" name="classnum" value="${regi.classnum }"
				hidden="">
			<div class="addButton1 w3-round">총점</div>
			<input class="w3-border" type="number"
				style="width: 3%; height: 40px" readonly="readonly"
				value="${sub.psum }"> <br>
			<br>
			<div class="addButton1 w3-round">시험명</div>
			<input class="w3-border" type="text" name="testname"
				placeholder="내용을 입력해주세요." style="width: 30%; height: 40px"
				value="${regi.testname }" readonly="readonly"> <br>
			<div class="addButton1 w3-round">시험일시</div>
			<input type="text" name="testdate" tabindex="3"
				value="${regi.testdate }" readonly="readonly" />
			<div class="addButton1 w3-round">시작시간</div>
			<input type="text" name="testtime" tabindex="3"
				value="${regi.testtime }" readonly="readonly" />
			<div class="addButton1 w3-round">진행시간</div>
			<input type="text" name="testing" tabindex="3"
				value="${regi.testing }" readonly="readonly" /> <br>
			<br>
			
				<input type="hidden" name="examconnum" required="required"
					value="<%=exnum%>" readonly="readonly">
				<div class="addButton1 w3-round">시험문제</div>
				<input type="text" placeholder="내용을 입력해주세요."
					style="width: 75%; height: 40px;" name="examcon"
					required="required">
				<div class="addButton1 w3-round">정답</div>
				<input type="number" max="4" min="1" name="answer"
					required="required">
				<div class="addButton1 w3-round">배점</div>
				<input class="w3-border" type="text" name="testpoint"
					style="width: 3%; height: 40px" required="required">
				<br>
				<span class="addButton1 w3-round">보기</span>
				<span class="popup_btn_sec"> <span id="circle">1</span> <input
					class="w3-border" type="text" placeholder="내용을 입력해주세요."
					style="width: 85%; height: 40px;" name="show1" required="required"><br>
					<span id="circle" style="margin-left: 5%;">2</span> <input
					class="w3-border" type="text" placeholder="내용을 입력해주세요."
					style="width: 85%; height: 40px;" name="show2" required="required"><br>
					<span id="circle" style="margin-left: 5%;">3</span> <input
					class="w3-border" type="text" placeholder="내용을 입력해주세요."
					style="width: 85%; height: 40px;" name="show3" required="required"><br>
					<span id="circle" style="margin-left: 5%;">4</span> <input
					class="w3-border" type="text" placeholder="내용을 입력해주세요."
					style="width: 85%; height: 40px;" name="show4" required="required"><br>
				</span>

			<c:if test="<%=cnt != 0%>">
				<c:forEach begin="1" end="<%=cnt%>" step="1" var="i" varStatus="s">
					<a class="w3-button w3-grey w3-round"
						href="insertTestDetailPro4?examconnum=${exnum2+s.count-1}&testnum=${testnum}&temp=${temp}">
						${s.count } </a>
				</c:forEach>
			</c:if>
			<button type="submit" class="btn btn-danger">문제추가</button>
			<a href="goHome"><button type="button" class="btn btn-danger"> 시험등록</button></a>
	</form>
	
	</div>
	<br>
	
</body>
</html>