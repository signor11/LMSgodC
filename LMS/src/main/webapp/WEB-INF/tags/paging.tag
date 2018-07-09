<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paging" type="com.yedam.lms.web.Paging"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 학생 및 교수 페이지 -->
<ul class="pagination">
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
			<c:if test="${i != paging.page}">
			<li class="page-item"><a class="page-link" href="javascript:doList(${i})">Previous</a>
			</c:if>
			<c:if test="${i != paging.page}">
				<li class="page-item"><a class="page-link" href="javascript:doList(${i})">1</a>
				<li class="page-item"><a class="page-link" href="javascript:doList(${i})">2</a>
			</c:if>
			<c:if test="${i != paging.page}">
			<li class="page-item"><a class="page-link" href="javascript:doList(${i})">Next</a>
			</c:if>
	</c:forEach>
</ul>


