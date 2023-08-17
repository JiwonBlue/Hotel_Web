<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String u_idKey = (String)session.getAttribute("u_idKey");

	String user = "";
	if(u_idKey != null && u_idKey.equals("admin")){
		user = "<a href=adminUser>회원조회</a>";
	}else{
		user = "<a href=../admin/login.jsp>회원조회</a>";
	}
	
	String reserve = "";
	if(u_idKey != null && u_idKey.equals("admin")){
		reserve = "<a href=adminReserve>예약조회</a>";
	}else{
		reserve = "<a href=../admin/login.jsp>예약조회</a>";
	}
	
	String inquiry = "";
	if(u_idKey != null && u_idKey.equals("admin")){
		inquiry = "<a href=adminInquiry>고객의 소리</a>";
	}else{
		inquiry = "<a href=../admin/login.jsp>고객의 소리</a>";
	}
	
	String room = "";
	if(u_idKey != null && u_idKey.equals("admin")){
		room = "<a href=adminRoom>객실수정</a>";
	}else{
		room = "<a href=../admin/login.jsp>객실수정</a>";
	}

%>
<table width="100%" bgcolor="#f1e3c4" class="header">
	<tr>
		<th><%=user %></th>
		<th><%=reserve %></th>
		<th><a href="../admin/logout.jsp"><img src="../data/logo.png" width="175" height="140" alt="HOME"></a></th>
		<th><%=inquiry %></th>
		<th><%=room %></th>
	</tr>
</table>