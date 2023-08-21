<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="../css/headerCSS.css" />


<div class="table-1">
  <div class="table-2">
    <div class="row-left">
      <div class="cell">
        <a href="main.do">
          <img src="/data/EVheader3.png" width="210" height="30" alt="HOME" />
        </a>
      </div>
    </div>
  </div>

  <div class="table-3">
    <div class="row-right">
      <div class="cell">
        <c:choose>
              <c:when test="${empty u_idKey}">
                <a href="login.do" class="sfont">로그인</a>
              </c:when>
              <c:otherwise>
                <a href="logout.do" class="sfont">로그아웃</a>
              </c:otherwise>
            </c:choose>
      </div>

      <div class="cell">
        <c:choose>
              <c:when test="${empty u_idKey}">
                <a href="join.do" class="sfont">회원가입</a>
              </c:when>
              <c:otherwise>
                <a href="userinfo.do" class="sfont">회원정보</a>
              </c:otherwise>
            </c:choose>
      </div>

      <div class="cell">
        <c:choose>
              <c:when test="${empty u_idKey}">
                <a href="login.do" class="sfont">예약내역</a>
              </c:when>
              <c:otherwise>
                <a href="reserveinfo.do" class="sfont">예약내역</a>
              </c:otherwise>
            </c:choose>
      </div>
    </div>
  </div>
</div>

<div class="table-0">
  <div class="table-4">
    <div class="row-center">
      <div class="cell">
        <a href="standardroom.do" class="hfont">객실 정보</a></td>

      </div>

      <div class="cell">
        <c:choose>
              <c:when test="${empty u_idKey}">
                <a href="login.do" class="hfont">예약</a>
              </c:when>
              <c:otherwise>
                <a href="reservation1.do" class="hfont">예약</a>
              </c:otherwise>
            </c:choose>
      </div>

      <div class="cell">
        <a href="inquiryList.do" class="hfont">게시판</a>
      </div>

      <div class="cell">
        <a href="room/Standard.do" class="hfont">호텔 정보</a>
      </div>
      <div class="cell">
        <a href="kakaoCome.do" class="hfont">오시는길</a>
      </div>
    </div>
  </div>
</div>
            