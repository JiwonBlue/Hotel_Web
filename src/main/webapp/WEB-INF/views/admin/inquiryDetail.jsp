<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버톤 - 고객의 소리 상세 내역</title>
	<link rel="stylesheet" href="../css/adminCSS.css">
	<script type="text/javascript" src="../script/script.js"></script>
	<style>
		input{
			margin:2% auto;
			background-color: #382f24;
		    width:100px;
		    height:40px;
		    border: none;
		    font-size:medium;
		    color:#f1ebd5;
			}
	</style>
</head>

<body>
	<%@ include file="header.jsp" %>
	<div id="reserveTitle"><font size="20">고객의 소리</font></div>
	
	<form action="inquiryDelete?b_number=${dto.getB_number()}" method="get">
		<table align="center" class="inquiryDetail">
			<tr>
				<td id="detail">제목</td>
				<td>
					${dto.getB_title()}
				</td>
				<td id="detail">번호</td>
				<td>
					${dto.getB_number()}
					<input type="hidden" name="b_number" value="${dto.getB_number()}" />
				</td>
			</tr>
			<tr>
				<td id="detail">작성자</td>
				<td>
					${dto.getB_writer()}
				</td>
				<td id="detail">작성일</td>
				<td>
					${dto.getB_time()}
				</td>
	
			</tr>
			<tr>
				<td id="detailcontent">내용</td>
				<td colspan="3">
					<textarea rows="5" cols="40" id="detailtextarea" readonly="readonly" name="b_content">${dto.getB_content()}</textarea>
				</td>
			</tr>

			<tr align="center">
				<td colspan="4">
				<input type="submit" value="삭제" />
				<input type="button" value="목록" onclick="location.href='adminInquiry'" />
				</td>
			</tr>
			</form>
			
			<c:forEach items="${calist }" var="comment">
				<tr>
					<td colspan="4" id="comment">
						${comment.c_writer} | ${comment.c_time }<br/>
						
						<div id="showContent${comment.c_number}" style="white-space:pre;"><c:out value="${comment.c_comment}"></c:out><br /></div>
						
						<div id="hideContent${comment.c_number}" style="display:none;">
							<form action="AdminCommentUpdate" method="post">
								<textarea rows="6" cols="100" name="c_comment" required="required">${comment.c_comment }</textarea><br />
								<input type="hidden" name="c_number" value="${comment.c_number}" />
								<input type="hidden" name="b_number" value="${comment.b_number}" />
								<input type="submit" value="수정 완료" id="commentBtn" />
								<input type="button" value="취소" onclick="showDesc(${comment.c_number})" id="commentBtn" />
							</form>
						</div>
					
					<c:if test="${comment.c_writer eq 'admin' }">
						<div id="showContent${comment.c_number}">
							<input type="button" value="수정" id="commentBtn" onclick="showDesc(${comment.c_number})" />
							<input type="button" value="삭제" id="commentBtn" onclick="location.href='AdminCommentDelete?c_number=${comment.c_number}&b_number=${comment.b_number }'" />
						</div>
					</c:if>
					</td>
				</tr>	
			</c:forEach>
			
			<tr>
				<td colspan="4" id="commentWrite">
					<form action="AdminCommentWrite" method="post">
						<textarea rows="6" cols="100" name="c_comment" required="required" placeholder="소중한 댓글을 작성해주시길 바랍니다."></textarea>
						<input type="hidden" name="b_number" value="${dto.getB_number()}">
						<input type="hidden" name="c_writer" value="${dto.getB_writer()}">
						<input type="submit" value="댓글 작성" id="commentWriteBtn" />
					</form>
				</td>
			</tr>
		</table>
		

	
</body>
</html>