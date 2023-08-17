<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버튼 - 예약 내역 조회</title>
	<link rel="stylesheet" href="../css/adminCSS.css">
</head>

<body>
	<%@ include file="header.jsp" %>
	<div id="reserveTitle"><font size="20">예약 내역</font></div>
	

	<table align="center" class="reserveInfo">
		<tr align="center" id="list">
			<td>NO</td>
			<td>ID</td>
			<td>성인 투숙객 수(명)</td>
			<td>어린이 투숙객 수(명)</td>
			<td>체크인</td>
			<td>체크아웃</td>
			<td>객실</td>
			<td>금액(원)</td>
			<td>예약시간</td>
		</tr>
				
		<c:choose>
			<c:when test="${result.size() != 0 }">
				<c:forEach items="${result }" var="d">
					<tr align="center">
						<td>${d.getR_number() }</td>
						<td>${d.getR_id() }</td>
						<td>${d.getR_adults() }</td>
						<td>${d.getR_kids() }</td>
						<td>${d.getR_checkin() }</td>
						<td>${d.getR_checkout() }</td>
						<td>${d.getR_type() }</td>
						<td><fmt:formatNumber value="${d.getR_price()}" pattern="#,###" />원</td>
						<td>${d.getR_time() }</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr align="center"><td colspan="9" align="center">예약 내역이 존재하지 않습니다</td></tr>
			</c:otherwise>
		</c:choose>
						
	</table>
			
</body>
</html>