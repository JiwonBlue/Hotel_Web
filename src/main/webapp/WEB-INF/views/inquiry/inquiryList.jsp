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
      <header class="header"><%@ include file="../main/header.jsp" %></header>





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

         <c:if test="${empty listResult}">
         <tr>
            <td colspan="4" align="center">작성된 글이 없습니다</td>
         </tr>
         </c:if>
            <c:forEach var="b" items="${listResult.list.content}">
               <tr>
                  <td align="center">${b.boardCode}</td>
                  <td align="center">${b.memberId}</td>
                  <td align="center"><a href="inquiryDetail.do?boardCode=${b.boardCode}"><b>${b.boardTitle}</b></a></td>
                  <td align="center">${b.boardUdate}</td>
               </tr>
            </c:forEach>

            


	  <tr>
		<td colspan="4" align="center">
		<c:choose>
		   <c:when test="${member != null}">
			  <input type="button" id="btn" value="글쓰기" onclick="location.href='inquiryWrite.do'" />
		   </c:when>
		   <c:otherwise>
			  <input type="button" id="btn" value="글쓰기" onclick="location.href='login.do'" />
		   </c:otherwise>
		</c:choose>
	</td>
</tr>
   </table>
<!-- 페이징  -->
<hr width='600' size='2' color='gray' noshade>
            <font color='gray' size='3' face='휴먼편지체'>
                (총페이지수 : ${listResult.totalPageCount})
                &nbsp;&nbsp;&nbsp;
                <c:forEach begin="0" end="${listResult.totalPageCount-1}" var="i">
                    <a href="inquiryList.do?page=${i}&size=${listResult.size}">
               			<c:choose>
               			    <c:when test="${i==listResult.page}">
                            	<strong>${i+1}</strong>
                            </c:when>
                            <c:otherwise>
                                ${i+1}
                            </c:otherwise>
            			</c:choose>
                	</a>&nbsp;
                </c:forEach>
                ( TOTAL : ${listResult.totalCount} )

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   페이지 싸이즈 :
                <select id="psId" name="ps" onchange="f(this)">
                	<c:choose>
                		<c:when test="${listResult.size == 3}">
                		   <option value="3" selected>3</option>
            		       <option value="5">5</option>
            		       <option value="10">10</option>
                		</c:when>
                		<c:when test="${listResult.size == 5}">
                		   <option value="3">3</option>
            		       <option value="5" selected>5</option>
            		       <option value="10">10</option>
                		</c:when>
                		<c:when test="${listResult.size == 10}">
                		   <option value="3">3</option>
            		       <option value="5">5</option>
            		       <option value="10" selected>10</option>
                		</c:when>
                	</c:choose>
                </select>

                <script language="javascript">
                   function f(select){
                       //var el = document.getElementById("psId");
                       var ps = select.value;
                       //alert("ps : " + ps);
                       location.href="inquiryList.do?size="+ps;
                   }
                </script>
    
</font>
<hr width='600' size='2' color='gray' noshade>
<!-- 페이징끝-->


   <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
   </center>
   </body>
</html>