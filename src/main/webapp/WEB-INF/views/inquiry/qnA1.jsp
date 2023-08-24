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
		<p><font size="6">Q1.</font></p>
	  </div>
	
		
		<form action="inquiryList2.do" name="regForm" method="post">
		<table align="center" class="inquiryDetail">
			<tr>
				<td id="detail">TITLE</td>
				<td align="center" style="font-size: 22px; max-width: 30px;">예약하려면 어떻게 해야되나요?</td>
			</tr>
			<tr>
				<td id="detail">CONTENT</td>
				<td align="center" rows="5" cols="40" style="font-size: 18px; max-width: 30px;">
					아쉽게도 저희 홈페이지에서는 예약을 할 수 없으므로 02-0000-0000 으로 전화주시면 바로 예약 안내를 도와드리겠습니다. </td>
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