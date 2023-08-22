<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="../css/footerCSS.css" />

<div>
  <button id="scrollToTopButton" class="footfshow">↑</button>

  <script src="../js/scrollToTopButton.js"></script>
</div>

<div class="footcontainer1">
  <div class="foottable-0">
    <div class="footrow-center">
      <div class="footcell">
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

      <div class="footcell">
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

      <div class="footcell">
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

      <div class="footcell">
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
  <div class="foottable-1">
    <div class="foottable-2">
      <div class="footrow1">
        <div class="footleft-column">
          <div class="footcell2">
            <a href="main.do">
              <img
                src="/data/EVfoot1.png"
                width="150"
                height="100"
                alt="HOME"
              />
            </a>
          </div>
          <div class="footcell3">(주)에베레스트호텔 02-0000-0000</div>
          <div class="footcell3">08505 서울특별시 금천구 가산디지털2로 101</div>
          <div class="footcell3">Email : everesthotel@everesthotel.com</div>
        </div>
      </div>
    </div>
    <div class="foottable-3">
      <div class="footrow2">
        <div class="footleft-column">
          <div class="footcell4">호텔찾기</div>
          <div class="footcell4">(주)에베레스트호텔 기업 소개</div>
          <div class="footcell4">에베레스트호텔 소개</div>
          <div class="footcell4">브랜드 소개</div>
          <div class="footcell4">수상</div>
          <div class="footcell4">갤러리</div>
        </div>
        <div class="footvertical-line"></div>
        <div class="footcenter-column">
          <div class="footcell4">고객의 소리</div>
          <div class="footcell4">지점별 연락처</div>
          <div class="footcell4">신문고(제보)</div>
          <div class="footcell4">컴플라이언스</div>
          <div class="footcell4">채용</div>
          <div class="footcell4">ART COLLECTION</div>
        </div>
        <div class="footvertical-line"></div>
        <div class="footright-column">
          <div class="footcell4">팀장: 김지원</div>
          <div class="footcell4">팀원: 조영태</div>
          <div class="footcell4">팀원: 양현주</div>
          <div class="footcell4">팀원: 신용빈</div>
        </div>
      </div>
    </div>
  </div>

  <div class="foottable-4">
    <div class="foottable-5">
      <div class="footrow3">
        <div class="footleft-column">
          <div class="footcell6">개인정보처리방침</div>
        </div>
        <div class="footvertical-line1"></div>
        <div class="footcenter-column">
          <div class="footcell6">사이트 이용약관</div>
        </div>
        <div class="footvertical-line1"></div>
        <div class="footcenter-column">
          <div class="footcell6">쿠키설정</div>
        </div>
        <div class="footvertical-line1"></div>
        <div class="footright-column">
          <div class="footcell6">약관 및 정책</div>
        </div>
      </div>
    </div>
    <div class="foottable-6">
      <div class="footrow3">
        <div class="footleft-column">
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="login.do" class="foothfont">로그인</a>
            </c:when>
            <c:otherwise>
              <a href="logout.do" class="foothfont">로그아웃</a>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="footvertical-line2"></div>
        <div class="footcenter-column">
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="join.do" class="foothfont">회원가입</a>
            </c:when>
            <c:otherwise>
              <a href="userinfo.do" class="foothfont">회원정보</a>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="footvertical-line2"></div>
        <div class="footcenter-column">
          <c:choose>
            <c:when test="${empty u_idKey}">
              <a href="login.do" class="foothfont">예약내역</a>
            </c:when>
            <c:otherwise>
              <a href="reserveinfo.do" class="foothfont">예약내역</a>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="footvertical-line2"></div>
        <div class="footcenter-column">
          <a href="https://apps.apple.com/kr/app/" target="_blank">
            <img src="/data/APP2.png" width="80" height="25" alt="애플 로고" />
          </a>
        </div>
        <div class="footvertical-line2"></div>
        <div class="footcenter-column">
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
