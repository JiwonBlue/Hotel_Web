<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>호텔 오버튼 - 고객의 소리 상세 내역</title>
	<link rel="stylesheet" href="../css/inquiryCSS.css">
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
	  <script>
		function deleteBoard(boardCode) {
		   if (confirm('정말로 삭제하시겠습니까?')) { //confirm 함수는 사용자에게 확인 메시지를 표시, 확인하면 true
			  fetch(`inquiryDelete.do?boardCode=${content.boardCode}`, { // fetch 함수를 사용하여 서버로 HTTP 요청을 보내는 코드
				 method: 'DELETE'
			  })
			  .then(response => {
				 // location.href = 'inquiryList.do';
				 if (response) {
					location.href = 'inquiryList.do';
				 } else {
					console.error('삭제 실패');
				 }
			  })
			  .catch(error => {
				 console.error('네트워크 에러:', error);
			  });
		   }
		}
	 </script><!-- 이 script 부분은 공부가 필요 js너무 어려움.. 거의 복붙 -->
  
  
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
		<p><font size="6">Review</font></p>
	  </div>
	
	<div id="detailcomment">
		호텔 에베레스트는 언제나 고객님들의 목소리에 귀기울이고 있습니다.<br/>
      고객님들의 정성스러운 리뷰를 통해 발전해 나아가겠습니다.
	</div>
	
	<form action="inquiryDetail.do" method="post">
		<table align="center" class="inquiryDetail">
		   <tr>
			  <td id="detail">제목</td>
			  <td>
				 <input type="text" style="outline:none; focus{outline:none}" name="boardTitle" value="${content.boardTitle}" />
			  </td>
			  <td id="detail">번호</td>
			  <td>
				 ${content.boardCode}
				 <input type="hidden" name="boardCode" value="${content.boardCode}" />
			  </td>
		   </tr>
		   <tr>
			  <td id="detail">작성자</td>
			  <td>
				 ${content.memberId}
				 <input type="hidden" name="memberId" value="${content.memberId}" />
			  </td>
			  <td id="detail">작성일</td>
			  <td>
				 ${content.boardUdate}
				 <input type="hidden" name="boardUdate" value="${content.boardUdate}"  />
			  </td>
	 
		   </tr>
		   <tr>
			  <td id="detailcontent">내용</td>
			  <td colspan="3">
				 <textarea rows="5" cols="40" id="detailtextarea" name="boardContent">${content.boardContent}</textarea>
			  </td>
		   </tr>
		   <tr align="center">
			  <td colspan="4">
  
					<c:if test="${content != null}">
						<c:choose>
						   <c:when test="${content.memberId eq sessionScope.member.memberId}"> <!-- 각각 세션과 모델 사용해서 비교하는 부분 eq=같냐는 의미 -->
							  <input type="submit" id="btn" value="수정" />
							  <input type="button" id="btn" value="목록" onclick="location.href='inquiryList.do'" />
							  <input type="button" id="btn" value="삭제" onclick="deleteBoard('${content.boardCode}')" />
							  <!-- <input type="button" id="btn" value="삭제" onclick="location.href='inquiryDelete.do?boardCode=${update.boardCode}'" /> -->
						   </c:when>
						   <c:otherwise>
							  <input type="button" id="btn" value="목록" onclick="location.href='inquiryList.do'" />
						   </c:otherwise>
						</c:choose>
							  
					 </c:if>
	  
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
	
		<footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
</body>
</html>