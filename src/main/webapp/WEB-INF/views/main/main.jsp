<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE >
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="/css/mainCSS.css" />

    <title>EVEREST HOTEL 메인화면</title>
  </head>

  <body>
    <header class="header"><%@ include file="header.jsp" %></header>

    <div class="wrapper">
      <div id="container">
        <img src="../data/main09.jpg" />
        <img src="../data/main10.jpg" />
        <img src="../data/main03.jpg" />
        <img src="../data/main04.jpg" />

        <button id="prev">
          <img src="/data/leftnc.png" width="50" height="149" />
        </button>
        <button id="next">
          <img src="/data/rightnc.png" width="50" height="149" />
        </button>
      </div>
    </div>

    <div class="roominfo">
      <font class="font15">스페셜 오퍼</font><br />
      <div class="horizontal-line"></div>
      <font class="font9">SPECIAL OFFERS<br /> </font>
      <div class="more-button">
        <a href="standardroom.do">
          <img
            src="/data/PLUSnc.png"
            width="85"
            height="25"
            alt="더보기 로고"
          />
        </a>
      </div>
    </div>

    <div class="main">
      <div id="room">
        <img src="../data/EVroom1.jpg" />
        <img src="../data/EVroom9.jpg" />
        <img src="../data/EVroom7.jpg" />
        <img src="../data/EVroom4.png" />
        <img src="../data/EVroom8.png" />
      </div>
    </div>

    <div class="facilityinfo">
      <font size="10">다양한 서비스</font><br />
      <font size="5"
        >다양한 소셜 라이프(Social life)를 즐길 수 있는 라운지부터 <br />
        수영장,퍼스널 트레이닝 스튜디오 그리고 레스토랑 겸 바인 다이닝 존을
        경험할 수 있습니다.
      </font>
    </div>

    <div class="main2">
      <div id="facility">
        <img src="../data/lobby.jpg" />
        <img src="../data/buffet.jpg" />
        <img src="../data/gym.jpg" />
      </div>
    </div>

    <!-- <button id="scrollToTopButton">맨 위로</button> -->

    <footer class="footer"><%@ include file="footer.jsp" %></footer>
    <script src="/script/loginJS.js"></script>
  </body>
</html>
