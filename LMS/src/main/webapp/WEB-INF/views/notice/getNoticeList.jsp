<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		    <h2><strong>공지사항</strong></h2>
	</div>
	<div>
		<select name="searchCnd" class="select" title="검색조건 선택">
				<option value="0">제목</option>
				<option value="1">내용</option>
				<option value="2">작성자</option>
		</select>
		<input name="searchWrd" type="text" size="35" value='' maxlength="35" onkeypress="press(event);" title="검색어 입력">
		<button id="searchbtn" type="button" class="btn btn-default" onclick="javascript:opennotice();">조회</button>
	</div>
	<div align=center>
		<table class="table table-hover" border="1">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
			</tr>

			<c:forEach items="${noticeList}" var="no" varStatus="status">
				<tr>
					<td>${status.index+1}</td>
					<td width="500px">
					<form name="NoticeForm" method="get" action="./updateNotice">
				            <c:choose>
				                <c:when test="">
				                    <c:out value="${no.TITLE}" />
				                </c:when>
				                <c:otherwise>
				                		<input type="hidden" name="seq" value="${no.SEQ}">
				                        <span class="link">
											<input type="submit" style="width:500px;border:solid 0px black;text-align:left;" value="<c:out value="${no.TITLE}"/>" >
										</span>
				                </c:otherwise>
				            </c:choose>
				    </form>
					</td>
					<td>${no.WRITER}</td>
					<td>${no.REGDATE}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<button id="insertbtn" type="button" class="btn btn-default"  onclick="javascript:openinsert();">입력</button>
	<br>
	<!-- 페이징 -->
	<my:paging paging="${paging}"/> 
	<script>
		function doList(page){
			location.href="./getNoticeList?page=" + page
		}
	</script>
	
	
</body>
</html>