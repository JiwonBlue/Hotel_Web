<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버튼 - 고객의 소리</title>
	<link rel="stylesheet" href="../css/adminCSS.css">
</head>

<body>
	<%@ include file="header.jsp" %>
	<div id="reserveTitle"><font size="20">고객의 소리</font></div>
	
	<table align="center" class="reserveInfo">
		<tr align="center" id="list">
			<td>NO</td>
			<td>작성자</td>
			<td>제목</td>
			<td>작성일 </td>
		</tr>
		
		<c:choose>
			<c:when test="${balist.size() >0 }">
				<c:forEach var="b" items="${balist }">
					<tr align="center">
						<td>${b.getB_number() }</td>
						<td>${b.getB_writer() }</td>
						<td><a href="adminDetail?b_number=${ b.getB_number()}"><b>${ b.getB_title()}</b></a></td>
						<td>${b.getB_time()}</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="4" align="center">작성된 글이 없습니다</td>
				</tr>
			</c:otherwise>
		</c:choose>
		
		
	</table>
</body>
</html>