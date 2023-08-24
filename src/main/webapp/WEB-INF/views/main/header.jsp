<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<link rel="stylesheet" href="../css/headerCSS.css" />

<div class="headcontainer">
  <div class="headtable-1">
    <div class="headtable-2">
      <div class="headrow-left">
        <div class="headcell">
          <a href="main.do">
            <img src="/data/MLnc.png" width="220" height="30" alt="HOME" />
          </a>
        </div>
      </div>
    </div>

    <div class="headtable-3">
      <div class="headrow-right">
        <div class="headcell">
          <c:choose>
            <c:when test="${empty member}">
                  <a href="login.do" class="headhfont">로그인</a>
                </c:when>
                <c:otherwise>
                  <a href="logout.do" class="headhfont">로그아웃</a>
                </c:otherwise>
              </c:choose>
        </div>

        <div class="headcell">
          <c:choose>
            <c:when test="${empty member}">
                  <a href="join.do" class="headhfont">회원가입</a>
                </c:when>
                <c:otherwise>
                  <a href="userInfo.do" class="headhfont">회원정보</a>
                </c:otherwise>
              </c:choose>
        </div>
       
      </div>
    </div>
  </div>

  <div class="headtable-0">
    <div class="headtable-4">
      <div class="headrow-center">
        <div class="headcell">
          <a href="standardroom.do" class="headhfont1">객실 정보</a></td>

        </div>

        

        <div class="headcell">
          <a href="inquiryList.do" class="headhfont1">게시판</a>
        </div>

        <div class="headcell">
          <a href="introduction1.do" class="headhfont1">호텔 소개</a>
        </div>
       
      </div>
    </div>
  </div>
  

</div>