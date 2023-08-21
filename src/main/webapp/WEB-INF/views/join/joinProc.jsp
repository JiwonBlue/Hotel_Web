<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 에베레스트 - 가입완료</title>
	<link rel="stylesheet" href="../css/joinCSS.css">
</head>

<body>
	<header class="header"><%@ include file="header.jsp" %></header>


	<br/><br />
	&nbsp;&nbsp;&nbsp; <font size="20">회원가입</font><br />
	
	<table align="center" class="joinlist">
		<tr>
			<td id="list3">가입정보</td>
		    <td id="list4">가입완료</td>
		</tr>
	</table>
	
	<table align="center" class="joinFinish">
		<tr align="center">
			<td colspan="2">
				<c:if test="${flag }">
					<b>환영합니다!<b/><br />
					<b>${u_name }</b>님, 회원가입을 축하드립니다.<br />
					호텔 에베레스트의 새로운 아이디는<b> ${u_id}</b>입니다.<br />
					<input type="button" value="시작하기" id="btnProc" onclick="location.href='../login/login.jsp'">
				</c:if>
				<c:if test="${!flag }">
					다시 가입정보를 입력해주시길 바랍니다!<br />
					<input type="button" value="다시 가입" id="btnProc" onclick="location.href='../join/joinForm.jsp'">
				</c:if>
			</td>
		</tr>
	</table>
	<%@ include file="footer.jsp" %>
</body>
</html>