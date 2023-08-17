<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>호텔 오버튼 - 고객의 소리</title>
		<link rel="stylesheet" href="../css/inquiryCSS.css">
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
	<% 
		u_idKey = (String)session.getAttribute("u_idKey"); 
		boolean flag = true;
		if(u_idKey == null){
			flag = false;
		}
	%>
	<br/><br />
	&nbsp;&nbsp;&nbsp; <font size="20">고객의 소리</font><br /><br />
	
	<div id="listcomment">
		호텔 오버톤은 언제나 고객의 목소리에 귀기울이고 있습니다.<br/>
		고객님들의 소중한 충고와 격려, 또는 제안의 말씀을 주시면 더 나은 서비스로 보답하겠습니다.<br/>
	</div>
				
	<table align="center" width="80%" class="inquiryInfo">
		<tr align="center" id="list">
			<td align="center">no</td>
			<td align="center">작성자</td>
			<td align="center">제목</td>
			<td align="center">작성일 </td>
		</tr>
		<c:choose>
			<c:when test="${balist.size() >0 }">
				<c:forEach var="b" items="${balist }">
					<tr>
						<td align="center">${b.getB_number() }</td>
						<td align="center">${b.getB_writer() }</td>
						<td align="center"><a href="inquirydetail?b_number=${ b.getB_number()}"><b>${ b.getB_title()}</b></a></td>
						<td align="center">${b.getB_time()}</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="4" align="center">작성된 글이 없습니다</td>
				</tr>
			</c:otherwise>
		</c:choose>

		<c:if test="<%=flag %>">
			<tr align="right">
			<td colspan="4"><input type="button" id="btn" value="작성" onclick="location.href='../inquiry/inquiryWrite.jsp'" /></td>
			</tr>
		</c:if>
	</table>
	<%@ include file="footer.jsp" %>
	
</body>
</html>