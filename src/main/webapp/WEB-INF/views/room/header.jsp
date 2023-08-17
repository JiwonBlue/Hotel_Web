<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String u_idKey = (String)session.getAttribute("u_idKey");

	String log = "";
	if(u_idKey== null){
		log = "<a href=login.do>로그인</a>";
	}else{
		log = "<a href=../login/logout.jsp>로그아웃</a>";
	}
	
	String reg = "";
	if(u_idKey == null){
		reg = "<a href=../join/joinForm.jsp>회원가입</a>";
	}else{
		reg = "<a href=userinfo>회원정보</a>";
	}
	
	String url = "";
	if(u_idKey == null){
		url = "<a href=../login/login.jsp>예약내역</a>";
	}else{
		url = "<a href=reserveinfo>예약내역</a>";
	}


%>
<table width="100%" bgcolor="#112d42" class="header">
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