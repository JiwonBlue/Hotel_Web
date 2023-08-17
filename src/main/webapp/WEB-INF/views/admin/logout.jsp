<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("u_idKey") != null && session.getAttribute("u_idKey").equals("admin")){
		session.invalidate();
%>
<script>
	alert("관리자 계정이 로그아웃 되었습니다");
	location.href="../login/main.jsp";
</script>
<%
	}else{
		
%>
<script>
	location.href="../login/main.jsp";
</script>
<%
	}
%>