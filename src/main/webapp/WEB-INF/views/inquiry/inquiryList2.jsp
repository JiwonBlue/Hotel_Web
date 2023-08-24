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
		<header class="header"><%@ include file="../main/header.jsp" %></header>
	<br/><br />
	&nbsp;&nbsp;&nbsp;<font id="title" font size="10" >자주 묻는 질문</font><br /><br />
	


	<div class="roomList" >
		<table class="table">
			<tr>
				</td><th>게시판</th>
			</tr>
			<tr>
				<td><a href="inquiryList.do">Review</a></td>
			</tr>
			<tr>
				<td id="select"><a href="inquiryList2.do">QnA</a></td>
			</tr>
			
		</table>
	</div>


	<table align="center" width="80%" class="inquiryInfo">
		<tr align="center" id="list">
			<td align="center">no</td>
			<td align="center">제목</td>
		</tr>
		<c:choose>
			<c:when test="${balist.size() >0 }">
				
			</c:when>
			<c:otherwise>
			<tr>	
				<td align="center">Q1</td>
				<td align="center"><a href="qna1.do">예약하려면 어떻게 해야되나요?</a></td>
			</tr>
			<tr>
				<td align="center">Q2</td>
				<td align="center"><a href="qna2.do">호텔 객실 내 투숙 가능한 허용 인원은 몇 명인가요?</a></td>
			</tr>
			<tr>
				<td align="center">Q3</td>
				<td align="center"><a href="qna3.do">결제는 어떻게 할 수 있나요?</a></td>
			</tr>
			<tr>
				<td align="center">Q4</td>
				<td align="center"><a href="qna4.do">호텔 객실 요금은 일일 아침식사를 포함하나요?</a></td>
			</tr>
			<tr>
				<td align="center">Q5</td>
				<td align="center"><a href="qna5.do">객실 내 침대 추가 시 비용은 얼마인가요?</a></td>
			</tr>
			<tr>
				<td align="center">Q6</td>
				<td align="center"><a href="qna6.do">투숙객의 이름과 등록된 이름이 서로 일치하지 않을 경우, 어떻게 하면 되나요?</a></td>
			</tr>
			<tr>
				<td align="center">Q7</td>
				<td align="center"><a href="qna7.do">체크인 날짜 이전에 예약 취소를 잊어버릴 경우에도 신용카드 대금이 청구되나요?</a></td>
			</tr>
			<tr>
				<td align="center">Q8</td>
				<td align="center"><a href="qna8.do">환불은 언제 받을 수 있나요?</a></td>
			</tr>
			<tr>
				<td align="center">Q9</td>
				<td align="center"><a href="qna9.do">이용 대금은 언제 청구되나요?</a></td>
			</tr>
			<tr>
				<td align="center">Q10</td>
				<td align="center"><a href="qna10.do">예약은 어떻게 취소하면 되나요?</a></td>
			</tr>

			</c:otherwise>
		</c:choose>

	</table>

	<footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
	</center>
	</body>
</html>