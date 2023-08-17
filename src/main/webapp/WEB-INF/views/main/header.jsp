<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%


	String u_idKey = (String)session.getAttribute("u_idKey");

	String log = "";
	if(u_idKey== null){
		log = "<a href=login.jsp >로그인</a>";
	}else{
		log = "<a href=logout.jsp>로그아웃</a>";
	}
	
	String reg = "";
	if(u_idKey == null){
		reg = "<a href=../join/joinForm.jsp>회원가입</a>";
	}else{
		reg = "<a href=userinfo>회원정보</a>";
	}

	String url = "";
	if(u_idKey == null){
		url = "<a href=login.jsp>예약내역</a>";
	}else{
		url = "<a  href=reserveinfo>예약내역</a>";
	}

%>
<link /l="stylesheet" href="/css/footerCSS.css">


<table width="100%" height="8%" bgcolor="#112d4e" class="header">
	<tr>
		<th><%=log %></th>
		<th><a class="cl-white" href="roomInfo?room_type=Standard">객실 정보</a></th>
		<th><a class="cl-white" href="../reservation/reservation1.jsp">예약</a></th>
		<th><a href="main.jsp"><img src="/data/logo.png" width="175" height="140" alt="HOME"></a></th>
		<th><a class="cl-white" href="inquirylist">고객의 소리</a></th>
		<th><%=url %></th>
		<th><%=reg %></th>
	</tr>
</table>