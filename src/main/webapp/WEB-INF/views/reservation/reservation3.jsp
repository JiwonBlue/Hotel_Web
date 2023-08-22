<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <% /* int room_price =
Integer.parseInt(request.getParameter("room_price")); int diffday =
Integer.parseInt(request.getParameter("diffday")); int totalPrice = room_price *
diffday; */ %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>reservation3.jsp : 옵션 선택</title>
    <script type="text/javascript" src="../script/script.js"></script>
    <link rel="stylesheet" href="../css/reserveCSS.css" />
    <style>
      #btn {
        margin-top: 15px;
        margin-bottom: 15px;
        background-color: #382f24;
        width: 120px;
        height: 50px;
        border: none;
        font-size: medium;
        color: #f1ebd5;
      }

      #input {
        height: 20px;
        width: 95px;
        border: none;
        text-align: left;
        font-size: large;
        font-weight: bold;
      }
    </style>
  </head>

  <body>
    <header class="header"><%@ include file="header.jsp" %></header>

    <br /><br />
    &nbsp;&nbsp;&nbsp; <font size="20">객실예약</font><br />

    <table align="center" class="reservelist1">
      <tr id="list1">
        <td id="step3">날짜,인원 선택</td>
        <td id="step2">객실 선택</td>
        <td id="step1">옵션 선택</td>
      </tr>
    </table>

    <form action="reservationProc.do" method="get" name="regForm">
      <table width="80%" align="center" class="reserveOption">
        <tr height="15%">
          <th colspan="4" align="center"><font size="5">예약정보</font></th>
        </tr>
        <tr id="line">
          <td align="center" id="line">
            <img src="../data/${param.room_img}" width="280" height="200" />
          </td>
          <td colspan="3" id="line">
            <table width="100%">
              <tr align="left">
                <td>
                  예약 객실 : <b>${param.room_type}</b>
                  <input
                    type="hidden"
                    name="r_type"
                    value="${param.room_type}"
                  />
                </td>
                <td>
                  체크인날짜 : <b>${param.r_checkin }</b>
                  <input
                    type="hidden"
                    name="r_checkin"
                    value="${param.r_checkin}"
                  />
                </td>
              </tr>
              <tr align="left">
                <td>
                  체크아웃 날짜 : <b>${param.r_checkout }</b>
                  <input
                    type="hidden"
                    name="r_checkout"
                    value="${param.r_checkout }"
                  />
                </td>
                <td>
                  성인 투숙객 수 : <b>${param.r_adults}</b>명
                  <input
                    type="hidden"
                    name="r_adults"
                    value="${param.r_adults }"
                  />
                </td>
              </tr>
              <tr align="left">
                <td>
                  아동 투숙객 수 : <b>${param.r_kids }</b>명
                  <input type="hidden" name="r_kids" value="${param.r_kids }" />
                </td>
                <!-- 총 금액: 부분 일단 삭제 -->
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td colspan="4" align="center" style="font-weight: bold" height="15%">
            <font size="5">옵션선택</font>
          </td>
        </tr>
        <tr id="line">
          <td colspan="4" align="center" id="line">
            총 금액 :
            <input
              type="number"
              style="background-color: #e7eaed; text-align: center"
              name="breakfast"
              id="input"
              size="5"
              min="0"
              max='${param.r_adults + param.r_kids - "" }'
            />&nbsp;&nbsp;
            <!-- <input type="button" id="btn" value=" 옵션 확인" onclick="breakfastCheck(${param.diffday})" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
            <input type="submit" id="btn" value="예약하기" />
          </td>
        </tr>
      </table>
    </form>
    <footer class="footer"><%@ include file="footer.jsp" %></footer>
  </body>
</html>
