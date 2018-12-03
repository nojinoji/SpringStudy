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
 
 <script>
 
 	var result = '${msg}';
 	
 	if(result == 'SUCCESS'){
 		alert("처리가 완료되었습니다.");	
 	}
 	
 </script>

</head>

<body>
	<table class="table table-bordered">
	 <tr>
	 	<th style="width: 10px">BNO</th>
	 	<th>TITLE</th>
	 	<th>WRITER</th>
	 	<th>REGDATE</th>
	 	<th style="width: 40px">VIEWCNT</th>
	 </tr>
	 

	
	<c:forEach items="${list}" var="boardVO" >
		<tr>
			<td>${boardVO.bno}</td>
			<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
			<td>${boardVO.writer}</td>
			<td><fmt:formatDate value= "${boardVO.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td> 
			<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
		</tr>
	</c:forEach>
	</table>
</body>
<%@include file="../include/footer.jsp" %>
</html>
