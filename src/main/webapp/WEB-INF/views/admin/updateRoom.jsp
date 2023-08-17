<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버톤 - 객실 정보</title>
	<link rel="stylesheet" href="../css/adminCSS.css">
	<style>
		input{
			margin:2% auto;
			background-color: #382f24;
		    width:100px;
		    height:40px;
		    border: none;
		    font-size:medium;
		    color:#f1ebd5;
			}
	</style>
</head>

<body>
	<%@ include file="header.jsp" %>
	<div id="reserveTitle"><font size="20">객실 정보</font></div>
	
	<table align="center" class="reserveInfo">
		<tr align="center" id="list">
			<td>객실 type</td>
			<td>객실 크기(㎡)</td>
			<td>수용 가능 인원(명)</td>
			<td>금액(원)</td>
			<td>객실 수(개)</td>
			<td>수정하기</td>
		</tr>
		<c:forEach items="${dto}" var="d">
				<tr align="center">
				<td>
					<img src="../data/${d.getRoom_img() }" width="250" height="200"><br /><br />
					<b>${d.getRoom_type() }</b>
				</td>
				<td>${d.getRoom_size() }</td>
				<td>${d.getRoom_capacity() }</td>
				<td><fmt:formatNumber value="${d.getRoom_price()}" pattern="#,###" /></td>
				<td>${d.getRoom_count() }</td>
				<td><input type="button" value="객실 수정" onclick="location.href='roomUpdate?room_type=${d.getRoom_type()}'"/></td>
			</tr>		
		</c:forEach>
	</table>
</body>
</html>