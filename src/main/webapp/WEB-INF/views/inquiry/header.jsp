<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
  <link rel="stylesheet" href="../css/headerCSS.css" />

  <table class="table-1">
    <tr>
      <td>
        <table class="table-2">
          <tr></tr>
        </table>
      </td>
      <td rowspan="2" align="center">
        <table class="table-4">
          <tr>
            <td class="td10"></td>

            <td class="center-cell">
              <a href="main.do">
                <img
                  src="/data/EVlogo2.png"
                  width="180"
                  height="140"
                  alt="HOME" 
                />
              </a>
            </td>
          </tr>
        </table>
      </td>
      <td>
        <table class="table-5">
          <tr>
            <td class="td30"></td>

            <td>
              <c:choose>
                <c:when test="${empty u_idKey}">
                  <a href="login.do" class="sfont">로그인</a>
                </c:when>
                <c:otherwise>
                  <a href="logout.do" class="sfont">로그아웃</a>
                </c:otherwise>
              </c:choose>

              <c:choose>
                <c:when test="${empty u_idKey}">
                  <a href="join.do" class="sfont">회원가입</a>
                </c:when>
                <c:otherwise>
                  <a href="userinfo.do" class="sfont">회원정보</a>
                </c:otherwise>
              </c:choose>

              <c:choose>
                <c:when test="${empty u_idKey}">
                  <a href="login.do" class="sfont">예약내역</a>
                </c:when>
                <c:otherwise>
                  <a href="reserveinfo.do" class="sfont">예약내역</a>
                </c:otherwise>
              </c:choose>
            </td>
          </tr>
        </table>
      </td>
    </tr>

    <tr>
      <td>
        <table class="table-3">
          <tr>
            <td class="td40"></td>
            <td><a href="standardroom.do" class="hfont">객실 정보</a></td>
            
            <td>
              <c:choose>
              <c:when test="${empty u_idKey}">
                  <a href="login.do" class="hfont">예약</a>
              </c:when>
              <c:otherwise>
                  <a href="reservation1.do" class="hfont">예약</a>
              </c:otherwise>
              </c:choose>
            </td>

          </tr>
        </table>
      </td>
      <td>
        <table class="table-6">
          <tr>
            <td class="td20"></td>

            <td>
              <a href="inquiryList.do" class="hfont">게시판</a>

              <a href="kakaoCome.do" class="hfont">오시는길</a>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</header>
