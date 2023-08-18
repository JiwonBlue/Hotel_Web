<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>호텔 에베레스트 - 게시판</title>
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
	<center>
	<%@ include file="header.jsp"%>

	<br/><br />
	&nbsp;&nbsp;&nbsp; <font size="20">게시판!!</font><br /><br />
	
	<div id="listcomment">
		호텔 에베레스트는 언제나 고객님들의 목소리에 귀기울이고 있습니다.<br/>
		이용에 불편 사항을 말씀해주시면 신속한 답변으로 최선을 다하겠습니다.<br/>
	</div>

	<div class="roomList" >
		<table class="table">
			<tr>
				</td><th>게시판/QnA</th>
			</tr>
			<tr>
				<td id="select"><a href="inquiryList.do">게시판</a></td>
			</tr>
			<tr>
				<td><a href="deluxeroom.do">QnA</a></td>
			</tr>
			
		</table>
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

	</table>

	<%@ include file="footer.jsp" %>
	</center>
	</body>
</html>