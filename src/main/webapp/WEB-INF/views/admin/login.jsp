<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hotel Overton 관리자 로그인</title>
	<link rel="stylesheet" href="../css/adminCSS.css">
</head>

<body>
	<%@ include file="header.jsp" %>
		<!--LoginServlet으로 이동-->
		<div id="loginComment">
			관리자 로그인 화면입니다<br />
			오버톤 호텔 고객님께서는 이전화면으로 이동해주시기 바랍니다
		</div>
		
		<form action="adminlogin" method="post" name="regForm">
			<table align="center" class="log">
				<tr>
					<th align="center" colspan="2">ADMIN LOGIN</th>
				</tr>
				<tr id="loginTr">
					<td id="text">아이디</td>
					<td><input type="text" name="u_id" id="input" /></td>
				</tr>
				<tr>
					<td id="text">비밀번호</td>
					<td><input type="password" name="u_pwd" id="input"  /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인" id="btn" />
					</td>
				</tr>
			</table>
			
		</form>
		<br /><br /><br /><br /><br />
		<c:if test="${msg != null}">
			<script>
				alert("관리자 계정으로 로그인해주세요");
			</script>
		</c:if>
</body>
</html>