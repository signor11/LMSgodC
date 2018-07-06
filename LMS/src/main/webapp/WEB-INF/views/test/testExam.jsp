<%@page import="com.yedam.lms.test.ExamContentsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>s
</head>
<body onload="init();">
<input type="hidden" value="${sub.cnt}" id="cnt">
<input type="hidden" value="${timer}" id="timer">
<%
	int maxp = Integer.parseInt(((ExamContentsVO)request.getAttribute("sub")).getCnt());
	int nowp=0,allp=1,countp=0;
%>
	<c:set value="<%=maxp %>" var="maxp"/>
	<c:set value="<%=nowp %>" var="nowp"/>
	<c:set value="<%=allp %>" var="allp"/>
	<c:set value="<%=countp %>" var="countp"/>
<script>
var maxcount = document.getElementById('cnt').value;//총문제수
var nowcount = 1;//현재페이지 시작문제 번호
var pagecoount = 1;//현재페이지 마지막 문제번호
var alltime = document.getElementById('timer').value * 60;
var q=0,w=2;
var nn=0;
var myanswer="";
var dd="";
//좌우 체크호환함수s
	
	function disp_time(){
			var hour = parseInt(alltime/3600);
			var min = parseInt((alltime-(hour*3600))/60);
			var second = parseInt(alltime-(hour*3600)-(min*60));
			document.getElementById("tim").innerHTML = hour +"시간 "  + min + "분 " + second + "초 남음" ;
			alltime--;
			if(alltime==0){
				document.ee.submit();
			}
	}
	function timer(){
		window.setInterval(disp_time,1000);
	}
	
	function init(){
		timer();
		ss();
		showExam();
	} 
	function ss(){
		for(k=0;k<maxcount;k++){
			$("#ss"+k).hide();
		}
	}
	function showExam(){
		for(j=q-2;j<w-2;j++){
			$("#ss"+j).hide();
		}	
		for(j=q;j<w;j++){
			$("#ss"+j).show();
		}
		q=q+2;
		w=w+2;
	}
	function backExam(){
		q=q-2;
		w=w-2;
		for(j=q-2;j<w-2;j++){
			$("#ss"+j).show();
		}	
		for(j=q;j<w;j++){
			$("#ss"+j).hide();
		}
	}
	function checkedNum(num,exnum){
		//var exnum = document.moon.moon1.value;
		//var exnum = a.slice(4);
		
		if(num==1)
			document.getElementById("ex"+exnum).src= "./resources/im/m1.PNG";
		else if(num==2)
			document.getElementById("ex"+exnum).src= "./resources/im/m2.PNG";
		else if(num==3)
			document.getElementById("ex"+exnum).src= "./resources/im/m3.PNG";
		else if(num==4)
			document.getElementById("ex"+exnum).src= "./resources/im/m4.PNG";
		document.getElementById("moon0"+exnum).value=10;
		document.getElementById("moon"+num+exnum).value=num;
		redioCheck(num,exnum);
	}
	function redioCheck(num,exnum){
		document.getElementById("moon"+num+exnum).checked="checked";
		for(i=1;i<=maxcount;i++){
			if(document.getElementById("moon0"+i).value=="10"){
				nn=nn+1;
			}
		}
		document.getElementById("nammoon").innerHTML=(maxcount-nn); 
		nn=0;
	}
	
	function finishExam(){
		for(i=1;i<=maxcount;i++){
			for(j=1;j<5;j++){
				dd = document.getElementById("moon"+j+i).value;
				if(dd != 0){
					myanswer = myanswer + document.getElementById("moon"+j+i).value;
				}
			}
		}
		document.getElementById("myanswer").value = myanswer;
		document.ee.submit(); 
	}
</script>	
	<table border="1" width=100% height=100% >
		<tr><td rowspan="2" colspan="2" width=85% height="100" style="text-align: center;font-size: 50px">${tename }
					<span style="text-align: left;;font-size:20px"> (과목명 : 
					<c:if test="${clnum == '48000001' }">자바</c:if>
					<c:if test="${clnum == '48000002' }">데이터베이스</c:if>
					<c:if test="${clnum == '48000003' }">소설</c:if>
					<c:if test="${clnum == '48000004' }">시</c:if>
					<c:if test="${clnum == '48000005' }">캐드</c:if>
					<c:if test="${clnum == '48000006' }">전자기계</c:if>
					<c:if test="${clnum == '58000001' }">영어</c:if>
					<c:if test="${clnum == '58000002' }">수학</c:if> )</span>
		</td>
		<td><span id="tim"></span>
		</td></tr>
		<tr><td height="40" style="text-align: center;font-size: 17px">총 합 : ${sub.psum }/ 총문제 : ${sub.cnt } / 남은문제 : <span id="nammoon"></span>
		</td></tr>
		<tr><td height="700" width=80% id="c1" colspan="2"><table width=100%><tr>
		<c:forEach begin="${nowp}" end="${maxp}" step="1" var="i" varStatus="s" items="${elist}">
		<td id="ss${s.index }" width=50%>
		${countp=countp+1}<input type="text" value="${i.examcon }" id="text${countp}"><input type="text" value="${i.testpoint}">
		<ol>
		<li><input type="radio" name="moon${countp}" value="0" onclick="checkedNum(1,${countp});" id="moon1${countp}">${i.show1}</li>
		<li><input type="radio" name="moon${countp}" value="0" onclick="checkedNum(2,${countp});" id="moon2${countp}">${i.show2}</li>
		<li><input type="radio" name="moon${countp}" value="0" onclick="checkedNum(3,${countp});" id="moon3${countp}">${i.show3}</li>
		<li><input type="radio" name="moon${countp}" value="0" onclick="checkedNum(4,${countp});" id="moon4${countp}">${i.show4}</li>
		<li hidden=""><input type="radio" name="moon${countp}" value="0" id="moon0${countp}" checked="checked"></li>
		</ol>
		</td>
		</c:forEach>
		</tr></table>
		</td><td width=20%>
		
		<script>//우측 OMR생성
				for(i=1;i<=maxcount;i++){
					document.write('<li><img alt="시험" src="./resources/im/m0.PNG" id="ex'+i+'"usemap="#image'+i+'"><map name = "image'+i+'">'+
							'<area shape="rect" coords="0,0,25,30" onclick="checkedNum(1,'+i+');">'+
							'<area shape="rect" coords="25,0,50,30" onclick="checkedNum(2,'+i+');">'+
							'<area shape="rect" coords="50,0,75,30" onclick="checkedNum(3,'+i+');">'+
							'<area shape="rect" coords="75,0,100,30" onclick="checkedNum(4,'+i+');"></map></li>');
	
				}
			</script></td></tr>
		<tr><td height="100" colspan="2" style="text-align: center;"><input type="button" onclick="backExam();" value="이전" >
		<input type="button" onclick="showExam();" value="다음" ></td>
		<td><input type="button" onclick="finishExam();" value="시험제출" ></td></tr>
	</table>
	<form name="ee" action="testResult">
		<input name="action" value="getscore" hidden="">
		<input name="myanswer" id="myanswer" hidden="">
		<input name="classnum" value="${clnum}" hidden="">
		<input name="testnum" value="${tnum}" hidden="">
	</form>
</body>
</html>