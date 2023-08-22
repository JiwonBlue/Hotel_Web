<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <link rel="stylesheet" href="../css/joinCSS.css" />

  <head>
    <meta charset="UTF-8" />
    <title>호텔 에베레스트 - 회원가입</title>
    <script type="text/javascript" src="../script/script.js?ver=3"></script>
  </head>

  <body>
    <header class="header"><%@ include file="../main/header.jsp" %></header>

    <br /><br />
    &nbsp;&nbsp;&nbsp; 

    <center class="center"><font size="20" >회원가입</font></center><br />

    <table align="center" class="joinlist">
		<tr id="list">
			<td id="list1">가입정보</td>
		    <td id="list2">가입완료</td>
		</tr>
	</table>
	
    </form>
	<form action="joinUser" method="post" name="regForm">
		<table align="center" class="joinform">
			<tr>
				<td colspan="2" align="center" id="comment">
					에베레스트 호텔에 오신 것을 환영합니다.<br/>
					※ 모든 항목에 개인정보를 입력해주시기를 바랍니다
				</td>
			</tr>
			<tr>
				<td width="55%" align="right" style="padding-right:13px;">
					아이디 
				</td>
				<td align="left"><input type="button" value="중복확인 " onclick="idCheck()" style="margin-left:20px; margin-top:0px; margin-bottom:0px;" id="btn"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="text" name="u_id" size="30" placeholder="아이디" />
					<input type="hidden" name="u_id2" />
				</td>
			</tr>
			<tr>
				<td colspan="2">비밀번호</td>
			</tr>
			<tr>
				<td colspan="2"><input type="password" name="u_pwd" size="30" /></td>
			</tr>
			<tr>
				<td colspan="2">비밀번호 확인</td>
			</tr>
			<tr>
				<td colspan="2"><input type="password" name="u_pwd2" size="30" /></td>
			</tr>
			<tr>
				<td colspan="2">성함</td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" name="u_name" size="30" placeholder="홍길동" /></td>
			</tr>
			<tr>
				<td colspan="2">전화번호</td>
			</tr>
			<tr>
				<td colspan="2"><input type="tel" name="u_phone" placeholder="010-0000-0000" size="30"></td>
			</tr>
			<tr>
				<td colspan="2">생년월일</td>
			</tr>
			<tr>
				<td colspan="2"><input type="email" name="u_email" placeholder="1900-01-01" size="30"></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="회원가입" onclick="return joinCheck()" id="btn" />
					<input type="reset" value="다시쓰기" id="btn" />
				</td>
			</tr>

         <tr>
            <td colspan="2">성함</td>
         </tr>
         <tr>
            <td colspan="2"><input type="text" name="memberName" size="30" placeholder="성함" /></td>
         </tr>

		</table>
	</form>
    <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
  </body>
</html>
