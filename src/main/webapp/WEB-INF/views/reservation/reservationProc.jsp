<%@ page contentType="text/html;charset=utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
/*
	int result = (int)request.getAttribute("result");
	if(result == 1){
*/
%> 


<script>

if (true) {
			alert("예약이 완료되었습니다, 감사합니다 ^^");
			location.href = "main.do";
		} else {
			alert("예약이 이뤄지지 않았습니다, 다시 시도해주시기 바랍니다");
			location.href = "../reservation/reservation1.do";
		}
</script>




