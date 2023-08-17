<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE >
<html>
  <link rel="stylesheet" href="../css/login1CSS.css" />

  <head>
    <meta charset="UTF-8" />
    <title>EVEREST HOTEL 메인화면</title>
  </head>

  <body>
    <%@ include file="header.jsp" %>

    <div class="wrapper">
      <div id="container">
        <img src="../data/hotel1.jpg" />
        <img src="../data/hotel2.jpg" />
        <img src="../data/hotel3.jpg" />
        <button id="prev">&lang;</button>
        <button id="next">&rang;</button>
      </div>
    </div>

    <div class="roominfo">
      <font size="10">호텔 오버튼만의 모던한 객실</font><br />
      <font size="5"
        >호텔 오버튼의 객실은 모던하면서도 품격 있는 라이프 스타일 공간으로<br />
        고객님들께 집과 같이 보다 쾌적한 환경에서 지내실 수 있는 객실을
        제공합니다.
      </font>
    </div>

    <div class="main">
      <div id="room">
        <img src="../data/deluxe.jpg" />
        <img src="../data/royal.jpg" />
        <img src="../data/sweet.jpg" />
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

    <%@ include file="footer.jsp" %>
    <script src="../script/loginJS.js"></script>
  </body>
</html>