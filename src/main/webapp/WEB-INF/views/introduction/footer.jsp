<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="../css/footerCSS.css" />

<div>
  <button id="scrollToTopButton" class="ffshow">↑</button>

  <script src="../js/scrollToTopButton.js"></script>
</div>

<div class="fcontainer1">
  <div class="ftable-0">
    <div class="frow-center">
      <div class="fcell">
        <a href="https://www.facebook.com" target="_blank">
          <img
            src="/data/facebook.png"
            width="20"
            height="20"
            alt="페이스북 로고"
            style="margin-right: 5%"
          />
        </a>
      </div>

      <div class="fcell">
        <a href="https://www.instagram.com" target="_blank">
          <img
            src="/data/instagram.png"
            width="20"
            height="20"
            alt="인스타그램 로고"
            style="margin-right: 5%"
          />
        </a>
      </div>

      <div class="fcell">
        <a href="https://www.youtube.com" target="_blank">
          <img
            src="/data/youtube.png"
            width="20"
            height="20"
            alt="유튜브 로고"
            style="margin-right: 5%"
          />
        </a>
      </div>

      <div class="fcell">
        <a href="https://twitter.com" target="_blank">
          <img
            src="/data/twitter.png"
            width="20"
            height="20"
            alt="트위터 로고"
            style="margin-right: 5%"
          />
        </a>
      </div>
    </div>
  </div>
  <div class="ftable-1">
    <div class="ftable-2">
      <div class="frow1">
        <div class="fleft-column">
          <div class="fcell2">
            <a href="main.do">
              <img
                src="/data/EVfoot1.png"
                width="150"
                height="100"
                alt="HOME"
              />
            </a>
          </div>
          <div class="fcell3">(주)에베레스트호텔 02-0000-0000</div>
          <div class="fcell3">08505 서울특별시 금천구 가산디지털2로 101</div>
          <div class="fcell3">Email : everesthotel@everesthotel.com</div>
        </div>
      </div>
    </div>
    <div class="ftable-3">
      <div class="frow2">
        <div class="fleft-column">
          <div class="fcell4">호텔찾기</div>
          <div class="fcell4">(주)에베레스트호텔 기업 소개</div>
          <div class="fcell4">에베레스트호텔 소개</div>
          <div class="fcell4">브랜드 소개</div>
          <div class="fcell4">수상</div>
          <div class="fcell4">갤러리</div>
        </div>
        <div class="fvertical-line"></div>
        <div class="fcenter-column">
          <div class="fcell4">고객의 소리</div>
          <div class="fcell4">지점별 연락처</div>
          <div class="fcell4">신문고(제보)</div>
          <div class="fcell4">컴플라이언스</div>
          <div class="fcell4">채용</div>
          <div class="fcell4">ART COLLECTION</div>
        </div>
        <div class="fvertical-line"></div>
        <div class="fright-column">
          <div class="fcell4">팀장: 김지원</div>
          <div class="fcell4">팀원: 조영태</div>
          <div class="fcell4">팀원: 양현주</div>
          <div class="fcell4">팀원: 신용빈</div>
        </div>
      </div>
    </div>
  </div>

  <div class="ftable-4">
    <div class="ftable-5">
      <div class="frow3">
        <div class="fleft-column">
          <div class="fcell6">개인정보처리방침</div>
        </div>
        <div class="fvertical-line1"></div>
        <div class="fcenter-column">
          <div class="fcell6">사이트 이용약관</div>
        </div>
        <div class="fvertical-line1"></div>
        <div class="fcenter-column">
          <div class="fcell6">쿠키설정</div>
        </div>
        <div class="fvertical-line1"></div>
        <div class="fright-column">
          <div class="fcell6">약관 및 정책</div>
        </div>
      </div>
    </div>
    <div class="ftable-6">
      <div class="frow3">
        <div class="fleft-column">
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="login.do" class="fhfont">로그인</a>
            </c:when>
            <c:otherwise>
              <a href="logout.do" class="fhfont">로그아웃</a>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="fvertical-line2"></div>
        <div class="fcenter-column">
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="join.do" class="fhfont">회원가입</a>
            </c:when>
            <c:otherwise>
              <a href="userinfo.do" class="fhfont">회원정보</a>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="fvertical-line2"></div>
        <div class="fcenter-column">
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="login.do" class="fhfont">예약내역</a>
            </c:when>
            <c:otherwise>
              <a href="reserveinfo.do" class="fhfont">예약내역</a>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="fvertical-line2"></div>
        <div class="fcenter-column">
          <a href="https://apps.apple.com/kr/app/" target="_blank">
            <img src="/data/APP2.png" width="80" height="25" alt="애플 로고" />
          </a>
        </div>
        <div class="fvertical-line2"></div>
        <div class="fcenter-column">
          <a href="https://play.google.com/store/apps" target="_blank">
            <img
              src="/data/GOOGLE2.png"
              width="84"
              height="25"
              alt="구글스토어 로고"
            />
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
