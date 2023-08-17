<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>메뉴</title>
    <link rel="stylesheet" href="../css/headerCSS.css">
  </head>
  <body>
    <table width="100%" height="8%" bgcolor="#112d4e" class="header">
      <tr>
        <th>
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="login.do">로그인</a>
            </c:when>
            <c:otherwise>
              <a href="logout.do">로그아웃</a>
            </c:otherwise>
          </c:choose>
        </th>
        <th><a href="room/Standard.do">객실 정보</a></th>
        <th><a href="../reservation/reservation1.jsp">예약</a></th>
        <th>
          <a href="main.do"
            ><img src="/data/EVlogo2.png" width="175" height="140" alt="HOME"
          /></a>
        </th>
        <th><a href="inquirylist.do">고객의 소리</a></th>
        <th>
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="join.do">회원가입</a>
            </c:when>
            <c:otherwise>
              <a href="userinfo.do">회원정보</a>
            </c:otherwise>
          </c:choose>
        </th>
        <th>
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="login.do">예약내역</a>
            </c:when>
            <c:otherwise>
              <a href="reserveinfo.do">예약내역</a>
            </c:otherwise>
          </c:choose>
        </th>
      </tr>
    </table>
  </body>
</html>
