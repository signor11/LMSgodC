<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%-- <%@ taglib tagdir="/WEB-INF/tags" prefix="my" %> --%>
=======
>>>>>>> branch 'master' of https://github.com/signor11/LMSgodc
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="../scripts/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">

	function delcheck(classapplynum) {
		result = confirm("정말로 수강취소하십니까 ?");
	
		if(result == true){
			document.form1.classapplynum.value = classapplynum;
			var requestData={"classapplynum" :  classapplynum}
			$.ajax({
				url : "${pageContext.request.contextPath}/deleteClassapply",
				data : requestData,
				dataType : 'json',
				success : function(data){
					alert('처리되었습니다')
				}
			});
		}

	}

		function doList(p){
			document.searchFrm.p.value = p;
			document.searchFrm.submit();
			
		}
	</script>
</head>
<body>
<<<<<<< HEAD
<div align = center>
 	<div>
	<h1>
			수강신청<br> <br>
		</h1>
	</div>
	
	<form name =searchFrm method="post" action="">
	<div>
		<span> 과목번호 </span> <span> 
		<input type="text" name="classnum" size="40" placeholder="과목번호를 입력해주세요.">
		</span> 
			<input type="submit" value="조회" class="btn btn-danger"
				/>
=======
>>>>>>> branch 'master' of https://github.com/signor11/LMSgodc

<<<<<<< HEAD
		 <br> <br>
	</div>
	<div>● 수강신청</div>
	<br>
	
		<input type="hidden" name= "p" value="1"/>
		<table class="table table-hover">
			<tr style="height: 30px">
				<td style="width: 150px;">과목번호<br></td>
				<td style="width: 200px;">과목명</td>
				<td style="width: 200px;">강의시간&nbsp;</td>
				<td style="width: 100px;">&nbsp;교수명</td>
				<td style="width: 100px;">이수학점</td>
				<td style="width: 100px;">현재수강인원</td>
				<td style="width: 80px;">수강신청</td>
			</tr>
		<c:forEach items="${classlist}" var="vo">	
			<tr>
				<td>${vo.CLASSNUM}</td>
				<td>${vo.CLASSNAME}</td>
				<td>${vo.CLASSTIME}</td>
				<td>${vo.PROFESSORNAME}</td>
				<td>${vo.CREDIT}</td>
				<td>${vo.APPLYCNT}/${vo.MAXSTUDENT}</td>
				<td style="text-align: center;">
					<%-- <button type="button" onclick ="location.href='applylecture_control.jsp?action=insert&classnum=${vo.classnum}';" --%>
					<button type="button" onclick=""
						class="btn btn-danger">신청</button>
				</td>

			</tr>
		</c:forEach>	
		</table>
			</form>
		<br> <br>
		
		<%-- <my:paging jsfunc="doList" paging ="${paging}"/> --%>
		

	<!-- **************************
	               두번째 부분입니다.
     ****************************-->
	<br>
	<br>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<br>
	<form name = form1 method=post action="">
	<div>● 수강정정</div>
	<br>
	
		
		<table class="table table-hover">
			<tr style="height: 30px">
				<td style="width: 150px;">과목번호<br></td>
				<td style="width: 200px;">과목명</td>
				<td style="width: 200px;">강의시간&nbsp;</td>
				<td style="width: 100px;">&nbsp;교수명</td>
				<td style="width: 100px;">이수학점(최대 : 20학점)</td>
				<td style="width: 80px;">정정</td>
			</tr>
		<c:forEach items="${classapplyList}" var="classapply">
			<tr>
				<td>${classapply.classnum}</td>
				<td>${classapply.classname}</td>
				<td>${classapply.classtime}</td>
				<td>${classapply.professorname}</td>
				<td>${classapply.credit}</td>
				<td style="text-align: center;">
					<button type="button" onclick ="delcheck(${classapply.classapplynum});"
						class="btn btn-danger">삭제</button>
				</td>

			</tr>
		</c:forEach>	
		</table>
		</form>
		</div>
=======
>>>>>>> branch 'master' of https://github.com/signor11/LMSgodc
</body>
</html>