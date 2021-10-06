<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstlcore.jsp</title>
</head>
<body>
	<c:set var="score" value="100"></c:set>
	<c:set var="name" value="honggildong"></c:set>

	점수 : <c:out value="${score }"></c:out><br>
	이름 : <c:out value="${name }"></c:out>
	
	<hr>
	
	<c:remove var="name" />
	이름 : <c:out value="${name }"></c:out>
	
	<hr>
	<%// 예외처리 %>
	
	<c:catch var="error">
		<%= 1/0 %>
	</c:catch>
	
	<c:out value="${error}"></c:out>
	
	<hr>
	
	<c:if test="${100>10 }">
		100은 10보다 큽니다!
	</c:if>
	
	<c:if test="${100>1000 }">
		100은 1000보다 큽니다!
	</c:if>
	
	<hr>
	
	<c:forEach var="i" begin="0" end="10" step="2">
		${i }<br>
	</c:forEach>
</body>
</html>