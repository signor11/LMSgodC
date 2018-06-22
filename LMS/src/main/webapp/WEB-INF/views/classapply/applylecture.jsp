<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
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
		<c:forEach items="${classapplyList}" var="classapply">
			<tr>
				<td>${classapply.classnum}</td>
				<td>${classapply.classname}</td>
				<td>${classapply.classtime}</td>
				
				<td>${vo.getProfessorname()}</td>
				<td>${classapply.credit}</td>
				<td>${vo.getApplycnt()}/${vo.getMaxstudent()}</td>
				<td style="text-align: center;">
					<button type="button" onclick ="">신청</button>
				</td>

			</tr>
		</c:forEach>	
		</table>
			</form>
</body>
</html>