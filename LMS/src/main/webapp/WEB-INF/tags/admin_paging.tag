<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="admin_paging" type="com.yedam.admin.web.Paging"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 관리자 페이지 -->
<c:forEach begin="${admin_paging.startPage}" end="${admin_paging.endPage}" var="i">
	<c:if test="${i != admin_paging.page}">
		<a href="javascript:doList2(${i})">${i}</a>
	</c:if>
	<c:if test="${i == admin_paging.page}">
		${i}
	</c:if>
</c:forEach>