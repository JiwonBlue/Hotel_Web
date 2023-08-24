<%@ page contentType="text/html;charset=utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>호텔 에베레스트 - 가입완료</title>
   <link rel="stylesheet" href="../css/joinCSS.css">
</head>

<body>
   <header class="footer"><%@ include file="../main/header.jsp" %></header>


   <br/><br />
   &nbsp;&nbsp;&nbsp; <center><font size="20">♥회원가입♥</font><br /></center>
   
   <table align="center" class="joinlist">
      <tr>
         <td id="list3">가입정보</td>
          <td id="list4">가입완료</td>
      </tr>
   </table>
   
   <table align="center" class="joinFinish">
      <tr align="center">
         <td colspan="2">
            <c:choose>
               <c:when test="${member != null}">
                  <b>환영합니다!<b/><br />
                  <b>${member.memberName}</b>님, 회원가입을 축하드립니다.<br />
                  호텔 에베레스트의 새로운 아이디는<b>${member.memberId}</b>입니다.<br />
                  <input type="button" value="시작하기" id="btnProc" onclick="location.href='main.do'">
               </c:when>
               <c:otherwise>
               다시 가입정보를 입력해주시길 바랍니다!<br />
               <input type="button" value="다시 가입" id="btnProc" onclick="location.href='joinForm.do'">
               </c:otherwise>
            </c:choose>
         </td>
      </tr>
   </table>
   <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
</body>
</html>