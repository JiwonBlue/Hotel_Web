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
			background-color: #5a5b5e;
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
		<header class="header"><%@ include file="header.jsp" %></header>





	<br/><br />
	&nbsp;&nbsp;&nbsp;<font id="title" font size="10" >Review</font><br /><br />
	
	<div id="listcomment">
		호텔 에베레스트는 언제나 고객님들의 목소리에 귀기울이고 있습니다.<br/>
		고객님들의 정성스러운 리뷰를 통해 발전해 나아가겠습니다.<br/>
	</div>

	<div class="roomList" >
		<table class="table">
			<tr>
				</td><th>게시판</th>
			</tr>
			<tr>
				<td id="select"><a href="inquiryList.do">Review</a></td>
			</tr>
			<tr>
				<td><a href="inquiryList2.do">QnA</a></td>
			</tr>
			
		</table>
	</div>
		
	<div style="text-align: right; margin-right: 100px;">
		<c:choose>
			<c:when test="${login}">
				<input type="button" id="btn" value="글쓰기" onclick="location.href='inquiryWrite.do'" />
			</c:when>
			<c:otherwise>
				<input type="button" id="btn" value="글쓰기" onclick="location.href='login.do'" />
			</c:otherwise>
		</c:choose>
	</div>

	
	<!-- 위에가 html tag로 설정한 방법, 아래 주석처리가 js로 설정한 방법 -->


	<!-- <div style="text-align: right; margin-right: 100px;">
		<input type="button" id="btn" value="글쓰기" onclick="redirectToWritePage()" />
	</div>
	<script>
		// 테스트를 위해 로그인 상태 설정
		var login = flase; // true일 경우 로그인 상태(inquiryWrite.do), false일 경우 비로그인 상태(login.do)
		
		function redirectToWritePage() {
			if (login) {
				location.href = 'inquiryWrite.do';
			} else {
				location.href = 'login.do';
			}
		}
	</script> -->


	<table align="center" width="80%" class="inquiryInfo">
		<tr align="center" id="list">
			<td align="center">no</td>
			<td align="center">작성자</td>
			<td align="center">제목</td>
			<td align="center">작성일 </td>
		</tr>
		<c:choose>
			<c:when test="${list.size()>0}">
				<c:forEach var="b" items="${list}">
					<tr>
						<td align="center">${b.boardCode}</td>
						<td align="center">${b.memberId}</td>
						<td align="center"><a href="inquiryDetail?b_number=${b.boardTitle}"><b>${b.boardTitle}</b></a></td>
						<td align="center">${b.boardUdate}</td>
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