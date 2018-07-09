<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<script>
	//등록 폼으로 넘어감
	function openinsert() {
		location.assign("./insertNotice");

	}
	//목록으로 넘어감
	function opennotice() {
		location.assign("./getNoticeList");

	}
</script>
</head>
<body>
	<div>
		    <h3>공지사항</h3>
	</div>
	
	<div align=center>
		<table class="table table-hover">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
			</tr>

			<c:forEach items="${noticeList}" var="no" varStatus="status">
				<tr>
					<td width="50px">${status.index+1}</td>
					<td width="500px">
						<form name="NoticeForm" method="get" action="./updateNotice">
					            <c:choose>
					                <c:when test="">
					                    <c:out value="${no.TITLE}" />
					                </c:when>
					                <c:otherwise>
					                		<input type="hidden" name="seq" value="${no.SEQ}">
					                        <span class="link">
												<input type="submit" style="width:700px;border:solid 0px black;text-align:left;" value="<c:out value="${no.TITLE}"/>" >
											</span>
					                </c:otherwise>
					            </c:choose>
					    </form>
					</td>
					<td width="200px">${no.WRITER}</td>
					<td width="200px">${no.REGDATE}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div align="center">
	<button id="insertbtn" type="button" class="btn btn-danger"  onclick="javascript:openinsert();">등록</button>
	</div>
	<br>
	<!-- 페이징 -->
	<div align="center">
	<my:paging paging="${paging}"/> 
	<script>
		function doList(page){
			location.href="./getNoticeList?page=" + page
		}
	</script>
	</div>
	
	
</body>
</html>