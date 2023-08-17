<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% int index=1; %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버튼 - 예약 내역 조회</title>
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
		#reserveComment{
			width:100%;
			height: 546px;
			text-align: center;
			line-height:546px;
			font-size: xx-large;
		
		}
	</style>
</head>

<body>
	<%@ include file="header.jsp" %>
	<br/><br />
	&nbsp;&nbsp;&nbsp; <font size="20">예약 내역<br /></font>

	<c:if test="${dto.size() ==0 }">
					<div id="reserveComment">예약 내역이 존재하지 않습니다</div>
				</c:if>
				<c:if test="${dto.size() != 0 }">
					<table align="center" class="reserveInfo">
						<tr align="center" id="list" >
							<td>no</td>
							<td>성인 투숙객 수(명)</td>
							<td>어린이 투숙객 수(명)</td>
							<td>체크인</td>
							<td>체크아웃</td>
							<td>객실</td>
							<td>금액(원)</td>
							<td>예약시간</td>
						</tr>
					
						<c:forEach items="${dto }" var="d">
							<tr align="center">
								<td><%=index++ %></td>
								<td>${d.getR_adults() }</td>
								<td>${d.getR_kids() }</td>
								<td>${d.getR_checkin() }</td>
								<td>${d.getR_checkout() }</td>
								<td>${d.getR_type() }</td>
								
								<td><fmt:formatNumber value="${d.getR_price()}" pattern="#,###" /></td>
								<td>${d.getR_time() }</td>
							</tr>
						</c:forEach>
						
						<tr align="center">
							<td colspan="8">
								<form action="reserveinfo" method="post">
									<input type="submit" id="btn" value="예약 취소" />
								</form>
							</td>
						</tr>
					</table>
					
				</c:if>
	
	
	<c:if test="${num != null }">
		<c:if test="${num>0 }">
			<script>
				alert("선택하신 예약 내역이 취소되었습니다");
			</script>
		</c:if>
		<c:if test="${num==0 }">
			<script>
				alert("예약이 취소되지 않았습니다");
			</script>
		</c:if>
	</c:if>
	
	
	<%@ include file="footer.jsp" %>
</body>
</html>