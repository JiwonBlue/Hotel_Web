<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bjy.dao.ReservationDAO" %>
<%@ page import="com.bjy.dto.RoomDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	if(session.getAttribute("u_idKey")==null){
		response.sendRedirect("../login/login.jsp");
	}

	Date today = new Date();
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String now = simpleDateFormat.format(today);

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>객실 예약 : 방 선택</title>
	<script type="text/javascript" src="../script/script.js"></script>
	<link rel="stylesheet" href="../css/reserveCSS.css">
	<style>
		#btn{
			margin-top:15px;
			margin-bottom:15px;
			background-color: #382f24;
		    width:120px;
		    height:50px;
		    border: none;
		    font-size:medium;
		    color:#f1ebd5;
			}
			
		input{
		    height:20px;
		    width:70%;
		    border:none;
		    text-align:center;
		    font-size:large;
		    font-weight:bold;
			}
	</style>
</head>

<body>
	<%@ include file="header.jsp" %>
	<br/><br />
	&nbsp;&nbsp;&nbsp; <font size="20">객실예약</font><br />
	
		<table align="center" class="reservelist1">
			<tr id="list1">
				<td id="step2">날짜,인원 선택</td>
				<td id="step1">객실 선택</td>
				<td id="step3">옵션 선택</td>
			</tr>
		</table>
		
	<form action="reserveroom" method="get" name="regForm">
			<table width="80%" align="center" class="reserve1">
				<tr align="center" id="list1" style="color:#a0a0a0; font-weight:bold;">
					<td>체크인</td>
					<td>체크아웃</td>
					<td width="10%" align="center"><img src="../data/night.png" width="30" height="30"></td>
					<td width="10%" >성인</td>
					<td width="10%">어린이</td>
				</tr>
				<tr align="center">
					<td><input type="date" name="r_checkin" min='<%=now %>' value="${r_checkin}" /></td>
					<td><input type="date" name="r_checkout" value="${r_checkout }"/></td>
					<td><input type="number" name="diffday" size="10" value="${diffday }" readonly="readonly"/></td>
					<td><input type="number" name="r_adults" size="10" min="1" value="${r_adults }"/></td>
					<td>
						<input type="number" name="r_kids" size="10" min="0" value="${r_kids }"/>
					</td>
					<td><input type="submit" id="btn" value="검색" onclick="return reservationCheck()"/></td>
				</tr>
		</table>
	</form>


	<c:choose>
		<c:when test="${msg != '' }">
			${msg }
		</c:when>
		<c:otherwise>
			<table width="80%" align="center" class="reserveResult">
				<c:forEach items="${totalroom }" var="tr">
					<tr align="center" id="line">
						<td width="30%" id="line"><img src="../data/${tr.getRoom_img() }" width="280" height="200"></td>
						<td width="30%" id="line">
							<table>
								<tr align="center">
									<th>${tr.getRoom_type() }</th>
								</tr>
								<tr align="left">
									<td>객실크기 : ${tr.getRoom_size() }㎡</td>
								</tr>
								<tr align="left">
									<td>최대 수용 인원 : ${tr.getRoom_capacity()}명</td>
								</tr>
							</table>
						</td>
						<td width="25%" id="line"><b><fmt:formatNumber value="${tr. getRoom_price() }" pattern="#,###" />원  (1박)</b></td>
						<td id="line"><input type="button" id="btn2" value="예약하기" onclick="location.href='reservation3.jsp?r_checkin=${param.r_checkin}&r_checkout=${param.r_checkout }&r_adults=${param.r_adults}&r_kids=${param.r_kids }&room_type=${tr.getRoom_type() }&room_img=${tr.getRoom_img()}&room_price=${tr. getRoom_price() }&diffday=${diffday}'"></td>
					</tr>
				</c:forEach>
			</table>	
		</c:otherwise>
	</c:choose>
	
		
	<%@ include file="footer.jsp" %>
</body>
</html>