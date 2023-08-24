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
		<p><font size="6">Q9.</font></p>
	  </div>
	
		
		<form action="inquiryList2.do" name="regForm" method="post">
		<table align="center" class="inquiryDetail">
			<tr>
				<td id="detail">TITLE</td>
				<td align="center" style="font-size: 22px; max-width: 30px;">이용 대금은 언제 청구되나요?</td>
			</tr>
			<tr>
				<td id="detail">CONTENT</td>
				<td align="center" rows="5" cols="40" style="font-size: 18px; max-width: 30px;">
					청구 시기는 호텔에서 공시한 객실 요율에 따라 결정됩니다. </br>
					당사의 웹사이트에서는 대체로 다음과 같이 2가지 종류의 결제 방법을 제시합니다.</br></br>
 					선불: 이용 대금은 객실 예약 시 귀하가 제공하는 신용카드 정보를 근거로 하여 청구됩니다. </br>
					청구가 실패할 경우, 예약은 취소됩니다.</br></br>
 					후불: 귀하가 제공하는 신용카드 정보는 객실 예약을 위해 호텔 측에 전송됩니다. </br>
					호텔 측은 이 신용카드 정보를 근거로 하여 객실 요금을 직접 청구하며, </br>
					객실 예약 또는 체크아웃 시 부과되는 세금은 예약 조건에 따라 결정됩니다. </br>
					청구가 실패할 경우, 호텔 측은 예약을 취소하게 됩니다.</br></td>
	
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