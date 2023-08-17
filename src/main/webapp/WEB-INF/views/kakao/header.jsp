<%@ page contentType="text/html;charset=utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
  <link rel="stylesheet" href="/css/headerCSS.css" />
  <table class="table-top1">
    <tr>
      <th>
        <c:choose>
          <c:when test="${empty u_idKey}">
            <a href="login.do" class="hfont">로그인</a>
          </c:when>
          <c:otherwise>
            <a href="logout.do" class="hfont">로그아웃</a>
          </c:otherwise>
        </c:choose>
      </th>

      <th>
        <a href="standardroom.do" class="hfont">객실 정보</a>
      </th>

      <th>
        <c:choose>
        <c:when test="${empty u_idKey}">
            <a href="login.do" class="hfont">예약</a>
        </c:when>
        <c:otherwise>
            <a href="reservation1.do" class="hfont">예약</a>
        </c:otherwise>
        </c:choose>
      </th>

      <th>
        <a href="main.do"><img src="/data/EVlogo2.png" width="175" height="140" alt="HOME"/></a>
      </th>

      <th>
        <a href="inquiryList.do" class="hfont">게시판</a>
      </th>

      <th>
        <c:choose>
          <c:when test="${empty u_idKey}">
            <a href="join.do" class="hfont">회원가입</a>
          </c:when>
          <c:otherwise>
            <a href="userinfo.do" class="hfont">회원정보</a>
          </c:otherwise>
        </c:choose>
      </th>
      <th>
        <c:choose>
          <c:when test="${empty u_idKey}">
            <a href="login.do" class="hfont">예약내역</a>
          </c:when>
          <c:otherwise>
            <a href="reserveinfo.do" class="hfont">예약내역</a>
          </c:otherwise>
        </c:choose>
      </th>

    </tr>
    
  </table>
</header>
