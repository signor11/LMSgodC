<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>getProfessor</title>
<script
	src="${pageContext.request.contextPath}/resources/scripts/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		function getProfessorList() {
			var requestData = {
				"professorProfessornum" : "${professor.professornum}"
			};

			$.ajax({
						url : "../getProfesorList",
						data : requestData,
						dataType : 'json',
						success : function(data) {
							for (i = 0; i < data.length; i++) {
								var html = '<div class="article" id="'
										+data[i].professornum + '">'
										+ data[i].professorname
										+ data[i].professorphone
										+ data[i].hiredate
										+ data[i].majornum
										+ '</div>';
								$("#professorList").append(html);

							}

						}

					});
		}
		getProfessorList();
		//$(window).bind("load", getCommentsList);
	});
</script>
</head>

</head>
<body>
등록후 확인<br>	
<hr>
	교수 번호:${professor.num}<br>
	교수 이름:${professor.name}<br>
	교수 연락처:${professor.phone}<br>
	교수 입사일:${professor.hiredate}<br>
	담 당 과 목:${professor.major}<br>
	<a href="../updateProfessor">수정</a>
</body>
</html>