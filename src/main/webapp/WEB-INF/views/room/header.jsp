<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String u_idKey = (String)session.getAttribute("u_idKey");

	String log = "";
	if(u_idKey== null){
		log = "<a href=login.do>로그인</a>";
	}else{
		log = "<a href=logout.do>로그아웃</a>";
	}
	
	String reg = "";
	if(u_idKey == null){
		reg = "<a href=join.do>회원가입</a>";
	}else{
		reg = "<a href=userinfo.do>회원정보</a>";
	}
	
	String url = "";
	if(u_idKey == null){
		url = "<a href=login.do>예약내역</a>";
	}else{
		url = "<a href=reserveinfo.do>예약내역</a>";
	}


%>
<table width="100%" bgcolor="#f1e3c4" class="header">
	<tr>
		<th><%=log %></th>
		<th><a href="standardroom.do">객실 정보</a></th>
		<th><a href="../reservation/reservation1.jsp">예약</a></th>
		<th><a href="../login/main.jsp"><img src="../data/logo.png" width="175" height="140" alt="HOME"></a></th>
		<th><a href="inquiryList.do">고객의 소리</a></th>
		<th><%=url %></th>
		<th><%=reg %></th>
	</tr>
</table>