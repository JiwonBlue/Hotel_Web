<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 에베레스트 - 자주묻는질문</title>
	<script type="text/javascript" src="../script/script.js"></script>
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
	<header class="header"><%@ include file="../main/header.jsp" %></header>

	<br/><br />
	<style>
		.centered-text {
		  text-align: center;
		}
	  </style>
	  </head>
	  <body>
	  
	  <div class="centered-text">
		<p><font size="6">Q3.</font></p>
	  </div>
	
		
		<form action="inquiryList2.do" name="regForm" method="post">
		<table align="center" class="inquiryDetail">
			<tr>
				<td id="detail">TITLE</td>
				<td align="center" style="font-size: 22px; max-width: 30px;">결제는 어떻게 할 수 있나요?</td>
			</tr>
			<tr>
				<td id="detail">CONTENT</td>
				<td align="center" rows="5" cols="40" style="font-size: 18px; max-width: 30px;">
					전화 예약 후 계좌 이체로 하시거나 </br> 
					추후 결제를 원하실 경우 룸의 10%의 예약금을 걸고 </br> 
					방문 후 카드 or 현금 or 계좌이체 하시면 됩니다.</br></td>
	
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="button" id="btn" value="뒤로" onclick="location.href='inquiryList2.do'" />

				</td>
			</tr>
		</table>
	</form>
	<footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
</body>
</html>