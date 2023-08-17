<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hotel Overton : 로그인</title>
	<link rel="stylesheet" href="../css/loginCSS.css">
</head>

<body>
	<%@ include file="header.jsp" %>
		<!--LoginServlet으로 이동-->
		<form action="loginUser" method="post" name="regForm">
			<table align="center" class="log">
				<tr align="center">
					<th align="center" colspan="2">HOTEL OVERTON LOGIN</th>
				</tr>
				<tr align="center">
					<td colspan="2">
						호텔 오버톤에 오신 것을 진심으로 환영합니다.<br />
						아이디와 비밀번호를 입력해 주시기 바랍니다.
					</td>
				</tr>
				<tr align="center">
					<td id="text"><b>아이디</b></td>
					<td><input type="text" name="u_id" size="24" id="input"/></td>
				</tr>
				<tr align="center">
					<td id="text"><b>비밀번호</b></td>
					<td><input type="password" name="u_pwd" size="24" id="input"/></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" value="로그인" id="btn" />
						<input type="button" value="회원가입" onclick="location.href='../join/joinForm.jsp'" id="btn"/>
					</td>
				</tr>
			</table>
			
		</form>
		<br />
	<%@ include file="footer.jsp" %>
	<c:choose>
		<c:when test="${mode==0 }">
			<script>
				alert("존재하지 않는 아이디입니다. 다시 입력해주세요");
			</script>
		</c:when>
		<c:when test="${mode==1 }">
			<script>
				alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요");
			</script>
		</c:when>
	</c:choose>
</body>
</html>