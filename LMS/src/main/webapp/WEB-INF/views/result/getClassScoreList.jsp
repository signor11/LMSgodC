<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>예담대학교(교수용)</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<script>

	//성적(tab)키 update
	$(function() {
		$("[name=score]").change(function() {
			var classapplynum;
			var param = {
				score : $(this).val(),
				classapplynum : $(this).prev().text()
			};
			$.ajax({
				url : "updateClassapply",
				method : "get",
				data : param,
				dataType :"json"
			}).done(function(data) {
				
				$("#sc" + param.classapplynum).text(data.scoret);
				$("#gr" + param.classapplynum).text(data.grade);
				console.log(data.scoret);
				alert ("수정 완료");
			}).fail(function(){
				alert("수정 실패")
			});
		});
	});

</script>
</head>

<body>
	<!--body -->
	<div align=center>
		<p style="font-size: 34px">성적 조회</p>
		<div style="display: inline-block;">
			<form method="post" action="updateClassapply" >
				<input type="hidden" name="action" value="list"> 
				<input class="btn btn-danger" type="text" value="과목명" disabled="disabled" 
				       style="padding: 10px; display: inline-block; text-align: center;"size="5">
				<select name="classnum" style="padding: 10px; text-align: center;">
					<option value="DropDown" hidden="" selected="selected">선택</option>
					<c:forEach items="${classname}" var="cl">
						<option value="${cl.classnum}">
							<c:if test="${cl.classnum==param.classnum}">>selected</c:if>
							${cl.classname}</option>
					</c:forEach>		
			<!-- 봄바람 휘날리며~~ 흩 날리는 벗꽃잎이~~ 울려펴진 이 거리를  둘이 걸어요 -->
				</select>
				<!--  난 알아요 이 밤이 흐르고 흐르면 나를 떠나 버려야 한다는 그 사실을 ..  -->
			</form>
			<!-- 뽀얀 담배연기 화려한 조명 속에 거울로 비쳐주네~~~ 우~~~` -->
			<br> <br>
			<!-- 그대가 돌아서면 두 눈이 마주칠까 심장이 바운스바운스 두근 돼 -->
			<table class="table table-hover"
				style="border-top:; border-bottom:; border-color: black; text-align: center;">
			<!-- in my haert heart brake up 내가 뭘 잘못햇는지?  -->
				<tr>
			<!-- 내가 살던 고향은 꽃 피는 산 골 복숭아꽃 살구꽃~~~ -->
					<td class="danger" >번호</td>
					<td class="danger" >학생번호</td>
					<td class="danger" width="400">학생명</td>
					<td class="danger">학점</td>
					<td class="danger">취득 점수</td>
					<td class="danger">취득등급</td>
				</tr>
				<!--  까리끼께 붐붐붐  -->
				<c:forEach items="${insList}" var="ins" varStatus="status">
					<tr>
						<td>${status.index+1}</td>
						<td>${ins.getStudentnum()}</td>
						<td>${ins.getStudentname()}</td>
						<td id="gr${ins.getClassapplynum()}">${ins.getGrade()}</td>
						<td><span style="display: none">${ins.getClassapplynum()}</span>
						<input id="${ins.getClassapplynum()}" name="score" value="${ins.getScore()}"></td>
						<td id="sc${ins.getClassapplynum()}">${ins.getScoret()}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<br> <br>
		<p style="color: red">점수를 변경하면 자동저장됩니다. tab키를 눌러주세요</p>
		<br> <br>
	</div>
</body>
</html>
