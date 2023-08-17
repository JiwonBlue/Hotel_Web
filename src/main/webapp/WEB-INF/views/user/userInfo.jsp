<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보</title>
	<link rel="stylesheet" href="../css/userCSS.css">
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
	</style>
</head>

<body>
	<%@ include file="header.jsp" %>
	<br/><br />
	&nbsp;&nbsp;&nbsp; <font size="20">회원정보<br /></font>
	
				<table width="75%" align="center" class="userInfo">
					<form action="../user/userUpdate.jsp"  method="post">
					<tr align="center" height="10%">
						<td><b>아이디</b></td>
					</tr>
					<tr align="center">
						<td>
							<input type="text" name="u_id" value="${dto.getU_id() }" size="30" readonly="readonly" />
						</td>
					</tr>
					<tr align="center">
						<td><b>비밀번호</b></td>
					</tr>
					<tr align="center">
						<td><input type="text" name="u_pwd" value="${dto.getU_pwd() }" readonly="readonly" size="30" /></td>
					</tr>
					<tr align="center">
						<td><b>성함</b></td>
					</tr>
					<tr align="center">
						<td><input type="text" name="u_name"  value="${dto.getU_name() }" readonly="readonly" size="30" /></td>
					</tr>
					<tr align="center">
						<td><b>전화번호</b></td>
					</tr>
					<tr align="center">
						<td><input type="tel" name="u_phone" value="${dto.getU_phone() }" readonly="readonly" size="30"></td>
					</tr>
					<tr align="center">
						<td><b>E-mail</b></td>
					</tr>
					<tr align="center">
						<td><input type="email" name="u_email" value="${dto.getU_email() }" readonly="readonly" size="30"></td>
					</tr>
					<tr align="center">
						<td>
							<input type="submit" value="정보수정" id="btn" />
						</td>
					</tr>
					</form>
				</table>
		
	
	<%@ include file="footer.jsp" %>
	<c:if test="${result != null }">
		<c:if test="${result==1 }">
			<script>
			alert("정보수정이 완료되었습니다.");
			</script>
		</c:if>
		<c:if test="${result==0 }">
			<script>
				alert("정보수정을 실패하였습니다,다시 시도해주시기 바랍니다.");
			</script>
		</c:if>
	</c:if>
	
</body>
</html>