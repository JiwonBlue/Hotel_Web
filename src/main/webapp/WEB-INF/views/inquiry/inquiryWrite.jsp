<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>호텔 오버튼 - 고객의 소리 글 작성</title>
   <script type="text/javascript" src="../script/script.js?ver=10"></script>
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
      <p><font size="6">Review 작성</font></p>
     </div>
   
   <div id="detailcomment">
      호텔 에베레스트는 언제나 고객님의 목소리에 귀기울이고 있습니다.<br />
      고객님들의 소중한 충고와 격려, 또는 제안의 말씀을 주시면 더 나은 서비스로 보답하겠습니다.
   </div>
      
      <form action="inquiryList.do" name="regForm" method="post">
         <table align="center" class="inquiryDetail">
      <tr>
         <td id="detail" >작성자</td>
         <td><input type="text" name="memberId" maxlength="30" id="writeTitle" value="${member.memberId}" readonly/></td>s
   
      </tr>
         
         <tr>
            <td id="detail" >TITLE</td>
            <td><input type="text" name="boardTitle" maxlength="30" id="writeTitle" placeholder="내용을 상세히 기재해 주시면 운영에 많은 도움이 됩니다"/></td>
         </tr>
         <tr>
            <td id="detail" >CONTENT</td>
            <td><textarea name="boardContent" rows="5" cols="40" id="writeContent" placeholder="불건전한 내용(예: 불충분한 증거/귀책 사유에 대한 개인 음해성 등) 또는 광고성 게시물은 사전 통보 없이 삭제 처리될 수 있습니다."></textarea></td>
         </tr>
         <tr align="center">
            <td colspan="2">
               <input type="submit" id="btn" value="확인" onclick="return boardCheck()" />
               <input type="reset" id="btn" value="취소" onclick="location.href='inquiryList.do'" />
            </td>
         </tr>

      </table>

   </form>
   <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
</body>
</html>