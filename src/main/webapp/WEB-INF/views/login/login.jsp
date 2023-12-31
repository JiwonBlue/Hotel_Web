<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Hotel Overton : 로그인</title>
    <link rel="stylesheet" href="../css/loginCSS.css" />
  </head>

  <body>
    <header class="header"><%@ include file="../main/header.jsp" %></header>

    <!--LoginServlet으로 이동-->
    <form action="login.do" method="post" name="regForm">
      <table align="center" class="log">
        <tr align="center">
          <th align="center" colspan="2">HOTEL EVEREST LOGIN</th>
        </tr>
        <tr align="center">
          <td colspan="2">
            호텔 Everest에 오신 것을 진심으로 환영합니다.<br />
            아이디와 비밀번호를 입력해 주시기 바랍니다.
          </td>
        </tr>
        <tr align="center">
          <td id="text"><b>아이디</b></td>
          <td><input type="text" name="u_email" size="24" id="input" /></td>
        </tr>
        <tr align="center">
          <td id="text"><b>비밀번호</b></td>
          <td><input type="password" name="u_pwd" size="24" id="input" /></td>
        </tr>
        <tr align="center">
          <td colspan="2">
            <input type="submit" value="로그인" id="btn" />
            <input
              type="button"
              value="회원가입"
              onclick="location.href='join.do'"
              id="btn"
            />
          </td>
        </tr>
      </table>
    </form>

     <!-- 메시지 출력을 위한 JSTL 구문 -->
     <c:if test="${not empty message}">
        <script>
          alert('${message}');
        </script>
     </c:if>

    <br />
    <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
    <c:choose>
      <c:when test="${mode==0 }">
        <script>
          alert('존재하지 않는 아이디입니다. 다시 입력해주세요');
        </script>
      </c:when>
      <c:when test="${mode==1 }">
        <script>
          alert('비밀번호가 일치하지 않습니다. 다시 입력해주세요');
        </script>
      </c:when>
    </c:choose>
  </body>
</html>
