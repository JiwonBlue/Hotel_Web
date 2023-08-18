<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버튼 - 고객의 소리 글 작성</title>
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
	<%@ include file="header.jsp" %>
	<br/><br />
	<style>
		.centered-text {
		  text-align: center;
		}
	  </style>
	  </head>
	  <body>
	  
	  <div class="centered-text">
		<p><font size="6">Q & A 작성</font></p>
	  </div>
	
	<div id="detailcomment">
		호텔 오버톤은 언제나 고객님의 목소리에 귀기울이고 있습니다.<br />
		궁금하신 사항들을 작성해주시면 신속히 답변해 드리겠습니다.
	</div>
		
		<form action="inquiryList2.do" name="regForm" method="post">
		<table align="center" class="inquiryDetail">
			<tr>
				<td id="detail">TITLE</td>
				<td><input type="text" name="b_title" maxlength="30" id="writeTitle" placeholder="문의 내용을 상세히 기재해 주시면 정확한 답변에 도움이 됩니다"/></td>
			</tr>
			<tr>
				<td id="detail">CONTENT</td>
				<td><textarea name="b_content" rows="5" cols="40" id="writeContent" placeholder="불건전한 내용(예: 불충분한 증거/귀책 사유에 대한 개인 음해성 등) 또는 광고성 게시물은 사전 통보 없이 삭제 처리될 수 있습니다."></textarea></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" id="btn" value="확인" onclick="return boardCheck()" />
					<input type="reset" id="btn" value="취소" />
				</td>
			</tr>
		</table>
	</form>
	<%@ include file="footer.jsp" %>
</body>
</html>