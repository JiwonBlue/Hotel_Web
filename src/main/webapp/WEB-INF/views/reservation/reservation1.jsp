<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %> -->

<% /* // 로그인 하지 않았을 시 로그인 페이지로 이동
if(session.getAttribute("u_idKey")==null){
response.sendRedirect("../login/login.jsp"); } // 오늘 날짜를 나타내는 변수 생성
Date today = new Date(); SimpleDateFormat simpleDateFormat = new
SimpleDateFormat("yyyy-MM-dd"); String now = simpleDateFormat.format(today); */
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>객실 예약 : 날짜, 인원 선택</title>
    <script type="text/javascript" src="../script/script.js?ver=1"></script>
    <link rel="stylesheet" href="../css/reserveCSS.css" />
    <style>
      #btn {
        margin-top: 15px;
        margin-bottom: 15px;
        background-color: #060481;
        width: 120px;
        height: 50px;
        border: none;
        font-size: medium;
        color: #f1ebd5;
      }
    </style>
  </head>

  <body>
    <header class="header"><%@ include file="../main/header.jsp" %></header>

    <br /><br />
    &nbsp;&nbsp;&nbsp;
    <center><font size="20">객실예약</font></center>
    <br />

    <table align="center" class="reservelist1">
      <tr id="list1">
        <td id="step1">날짜,인원 선택</td>
        <td id="step2">객실 선택</td>
        <td id="step3">옵션 선택</td>
      </tr>
    </table>

    <form action="reservation2.do" method="get" name="regForm">
      <table width="80%" align="center" class="reserve1">
        <tr align="center" style="color: #060481; font-weight: bold">
          <td>체크인</td>
          <td>체크아웃</td>
          <td width="10%">성인</td>
          <td width="10%">어린이</td>
        </tr>
        <tr align="center">
          <td>
            <input
              type="date"
              name="r_checkin"
              min="<%=java.time.LocalDate.now()%>"
            />
          </td>
          <td><input type="date" name="r_checkout" /></td>
          <td><input type="number" name="r_adults" min="1" value="1" /></td>
          <td><input type="number" name="r_kids" value="0" min="0" /></td>
          <td>
            <input
              type="submit"
              value="검색"
              id="btn"
              onclick="return reservationCheck()"
            />
          </td>
        </tr>
        <tr align="center">
          <td colspan="5">예약을 원하는 날짜,인원을 선택해주세요</td>
        </tr>
      </table>
    </form>

    <br /><br /><br /><br /><br /><br /><br />

    <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
  </body>
</html>
