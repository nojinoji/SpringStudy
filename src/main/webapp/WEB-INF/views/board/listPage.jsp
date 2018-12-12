<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ListALL PAGE</title>
 <%@include file="../include/header.jsp" %>

</head>

<body>
	
	<div class="text-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li><a href="listPage?page=${pageMaker.startPage -1}">&laquo;</a></li>
			</c:if>
			
			<c:forEach begin= "${pagemaker.startPage}"
			 end="${pageMaker.endPage}" var = "idx">
				<li>
					<c:out value="${pageMaker.cri.page == idx?' class=active':''}" />
					<a href = "listPage?page=${idx }">${idx }</a>
				</li>
			</c:forEach>
			
			<c:if test="${pageMaker.next && pageMaker.endPage>0}">
				<li><a href="listPage?page=${pageMaker.endPage +1}">&raquo;</a></li>
			</c:if>
			
		</ul>
	</div>
	
	
</body>
<%@include file="../include/footer.jsp" %>
</html>
