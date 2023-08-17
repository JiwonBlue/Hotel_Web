<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버튼 - 고객의 소리 상세 내역</title>
	<link rel="stylesheet" href="../css/inquiryCSS.css?ver=1">
	<script type="text/javascript" src="../script/script.js"></script>
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
	&nbsp;&nbsp;&nbsp; <font size="20">고객의 소리<br /></font>
	
	<div id="detailcomment">
		호텔 오버톤은 언제나 고객님의 목소리에 귀기울이고 있습니다.<br />
		고객님들의 소중한 충고와 격려, 또는 제안의 말씀을 주시면 더 나은 서비스로 보답하겠습니다.
	</div>
	
	<form action="../inquiry/inquiryUpdate.jsp">
		<table align="center" class="inquiryDetail">
			<tr>
				<td id="detail">제목</td>
				<td>
					${dto.getB_title()}
					<input type="hidden" name="b_title" value="${dto.getB_title()}" />
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
					<input type="hidden" name="b_writer" value="${dto.getB_writer()}" />
				</td>
				<td id="detail">작성일</td>
				<td>
					${dto.getB_time()}
					<input type="hidden" name="b_time" value="${dto.getB_time()}"  />
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
			<c:if test="${flag }">
				<input type="submit" id="btn" value="수정" />
				<input type="button" id="btn" value="삭제"  onclick="location.href='inquiryremove?b_number=${dto.getB_number()}'" />
			</c:if>
				<input type="button" id="btn" value="목록" onclick="location.href='inquirylist'" />
				</td>
			</tr>
			</form>
			
			<!-- 작성된 댓글들 보여주기 -->
			<c:forEach items="${calist }" var="comment">
				<tr>
					<td colspan="4" id="comment">
						${comment.c_writer} | ${comment.c_time }<br/>
						
						<div id="showContent${comment.c_number}" style="white-space:pre;"><c:out value="${comment.c_comment}"></c:out><br /></div>
						
						<div id="hideContent${comment.c_number}" style="display:none;">
							<form action="CommentUpdate" method="post">
								<textarea rows="6" cols="100" name="c_comment" required="required">${comment.c_comment }</textarea><br />
								<input type="hidden" name="c_number" value="${comment.c_number}" />
								<input type="hidden" name="b_number" value="${comment.b_number}" />
								<input type="submit" value="수정 완료" id="commentBtn" />
								<input type="button" value="취소" onclick="showDesc(${comment.c_number})" id="commentBtn" />
							</form>
						</div>
					
						<c:if test="${comment.c_writer eq sessionScope.u_idKey }">
						<div id="showContent${comment.c_number}">
							<input type="button" value="수정" id="commentBtn" onclick="showDesc(${comment.c_number})" />
							<input type="button" value="삭제" id="commentBtn" onclick="location.href='CommentDelete?c_number=${comment.c_number}&b_number=${comment.b_number }'" />
						</div>
					</c:if>
					</td>
				</tr>	
			</c:forEach>
			
			<!-- 글주인일 경우만 댓글 작성 가능 -->
				<c:if test="${flag }">
				
					<tr>
						<td colspan="4" id="commentWrite">
							<form action="CommentWrite" method="post">
							<textarea rows="6" cols="100" name="c_comment" required="required" placeholder="소중한 댓글을 작성해주시길 바랍니다."></textarea>
							<input type="hidden" name="b_number" value="${dto.getB_number()}">
							<input type="hidden" name="c_writer" value="${dto.getB_writer()}">
							<input type="submit" value="댓글 작성" id="commentWriteBtn" />
							</form>
						</td>
					</tr>
				</c:if>
		</table>
	
	<%@ include file="footer.jsp" %>
</body>
</html>