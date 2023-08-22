<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<footer>
  <link rel="stylesheet" href="../css/footer1CSS.css" />

  <div>
    <button id="scrollToTopButton" class="show">↑</button>

    <script src="../js/scrollToTopButton.js"></script>
  </div>

  <div class="container">
    <div class="table-0">
      <div class="row-center">
        <div class="cell">
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

        <div class="cell">
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

        <div class="cell">
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

        <div class="cell">
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
    <div class="table-1">
      <div class="table-2">
        <div class="row1">
          <div class="left-column">
            <div class="cell2">
              <a href="main.do">
                <img
                  src="/data/EVfoot1.png"
                  width="150"
                  height="100"
                  alt="HOME"
                />
              </a>
            </div>
            <div class="cell3">(주)에베레스트호텔 02-0000-0000</div>
            <div class="cell3">08505 서울특별시 금천구 가산디지털2로 101</div>
            <div class="cell3">Email : everesthotel@everesthotel.com</div>
          </div>
        </div>
      </div>
      <div class="table-3">
        <div class="row2">
          <div class="left-column">
            <div class="cell4">호텔찾기</div>
            <div class="cell4"><(주)에베레스트호텔 기업 소개></div>
            <div class="cell4">에베레스트호텔 소개</div>
            <div class="cell4">브랜드 소개</div>
            <div class="cell4">수상</div>
            <div class="cell4">갤러리</div>
          </div>
          <div class="vertical-line"></div>
          <div class="center-column">
            <div class="cell4">고객의 소리</div>
            <div class="cell4">지점별 연락처</div>
            <div class="cell4">신문고(제보)</div>
            <div class="cell4">컴플라이언스</div>
            <div class="cell4">채용</div>
            <div class="cell4">ART COLLECTION</div>
          </div>
          <div class="vertical-line"></div>
          <div class="right-column">
            <div class="cell4">팀장: 김지원</div>
            <div class="cell4">팀원: 조영태</div>
            <div class="cell4">팀원: 양현주</div>
            <div class="cell4">팀원: 신용빈</div>
          </div>
        </div>
      </div>
    </div>

    <div class="table-4">
      <div class="table-5">
        <div class="row3">
          <div class="left-column">
            <div class="cell6">개인정보처리방침</div>
          </div>
          <div class="vertical-line1"></div>
          <div class="center-column">
            <div class="cell6">사이트 이용약관</div>
          </div>
          <div class="vertical-line1"></div>
          <div class="center-column">
            <div class="cell6">쿠키설정</div>
          </div>
          <div class="vertical-line1"></div>
          <div class="right-column">
            <div class="cell6">약관 및 정책</div>
          </div>
        </div>
      </div>
      <div class="table-6">
        <div class="row3">
          <div class="left-column">
            <c:choose>
              <c:when test="${empty u_idKey}">
                <a href="login.do" class="hfont">로그인</a>
              </c:when>
              <c:otherwise>
                <a href="logout.do" class="hfont">로그아웃</a>
              </c:otherwise>
            </c:choose>
          </div>
          <div class="vertical-line2"></div>
          <div class="center-column">
            <c:choose>
              <c:when test="${empty u_idKey}">
                <a href="join.do" class="hfont">회원가입</a>
              </c:when>
              <c:otherwise>
                <a href="userinfo.do" class="hfont">회원정보</a>
              </c:otherwise>
            </c:choose>
          </div>
          <div class="vertical-line2"></div>
          <div class="center-column">
            <c:choose>
              <c:when test="${empty u_idKey}">
                <a href="login.do" class="hfont">예약내역</a>
              </c:when>
              <c:otherwise>
                <a href="reserveinfo.do" class="hfont">예약내역</a>
              </c:otherwise>
            </c:choose>
          </div>
          <div class="vertical-line2"></div>
          <div class="center-column">
            <a href="https://apps.apple.com/kr/app/" target="_blank">
              <img
                src="/data/APP2.png"
                width="80"
                height="25"
                alt="애플 로고"
              />
            </a>
          </div>
          <div class="vertical-line2"></div>
          <div class="center-column">
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
</footer>
