
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>



<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디 중복 확인</title>
	<script type="text/javascript" src="../script/script.js" ></script>
	<link rel="stylesheet" href="../css/joinCSS.css">
</head>

<body bgcolor="#f1e3c4">
	<form action="idcheck" name="regForm">
		<table align="center">
			<tr>
				<th colspan="2" style="font-size:large; font-weight:900;">아이디 중복 확인</th>
			</tr>
			<tr>
				<td><input type="text" name="u_id" id="idCheck" value="${u_id }" /></td>
				<td><input type="submit" id="btnID" value="중복체크" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<c:if test="${flag }">
						<script>
							alert("<c:out value='${u_id}'/>는 이미 사용중인 아이디입니다.");
						</script>
					</c:if>
					<c:if test="${!flag }">
						<script>
							alert("<c:out value='${u_id}'/>는 사용 가능한 아이디입니다.");
							document.write('<input type="button" value="사용" id="btnID" onclick="idok(\'' + '<c:out value="${u_id}" />' + '\')" />');
						</script>
					</c:if>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>