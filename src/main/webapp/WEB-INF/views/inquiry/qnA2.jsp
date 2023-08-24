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
		<p><font size="6">Q2.</font></p>
	  </div>
	
		
		<form action="inquiryList2.do" name="regForm" method="post">
		<table align="center" class="inquiryDetail">
			<tr>
				<td id="detail">TITLE</td>
				<td align="center" style="font-size: 22px; max-width: 30px;">호텔 객실 내 투숙 가능한 허용 인원은 몇 명인가요?</td>
			</tr>
			<tr>
				<td id="detail">CONTENT</td>
				<td align="center" rows="5" cols="40" style="font-size: 18px; max-width: 30px;">
					호텔 객실의 점유 용적은 객실 유형에 따라 달라집니다.</br> 
					호텔은 추가로 투숙하는 인원에 대해 부가 수수료를 부과할 수 있습니다.</br>
					해당 호텔에 연락해 직접 확인하거나 당사에 연락하시면 도움을 받으실 수 있습니다.</td>
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