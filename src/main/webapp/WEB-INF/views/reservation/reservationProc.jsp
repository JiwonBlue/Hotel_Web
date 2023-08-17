<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int result = (int)request.getAttribute("result");
	if(result == 1){
%>
<script>
		alert("예약이 완료되었습니다, 감사합니다 ^^");
		location.href="../login/main.jsp";
</script>
<%
	}else{
%>
<script>
		alert("예약이 이뤄지지 않았습니다, 다시 시도해주시기 바랍니다");
		location.href="../reservation/reservation1.jsp";
</script>
<%
	}
%>
