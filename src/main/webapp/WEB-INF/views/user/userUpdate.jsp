<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 정보 수정</title>
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
	&nbsp;&nbsp;&nbsp; <font size="20">정보수정<br /></font>
	

			<form action="userinfo" method="post">
				<table width="75%" align="center" class="userInfo">
					<tr>
						<td>*표시된 부분만 수정이 가능합니다.</td>
					</tr>
					<tr>
						<td><b>아이디</b></td>
					</tr>
					<tr>
						<td>
							<input type="text" name="u_id" value="${param.u_id }" size="30" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td><b>*비밀번호</b></td>
					</tr>
					<tr>
						<td><input type="text" name="u_pwd" value="${param.u_pwd }" required="required" size="30" /></td>
					</tr>
					<tr>
						<td><b>*성함</b></td>
					</tr>
					<tr>
						<td><input type="text" name="u_name"  value="${param.u_name }" required="required" size="30" /></td>
					</tr>
					<tr>
						<td><b>*전화번호</b></td>
					</tr>
					<tr>
						<td><input type="tel" name="u_phone" value="${param.u_phone }" required="required" size="30"></td>
					</tr>
					<tr>
						<td><b>*E-mail</b></td>
					</tr>
					<tr>
						<td><input type="email" name="u_email" value="${param.u_email }" required="required" size="30"></td>
					</tr>
					<tr align="center">
						<td>
							<input type="submit" id="btn" value="정보수정" />
						</td>
					</tr>
				</table>
			</form>


	
	<%@ include file="footer.jsp" %>
</body>
</html>