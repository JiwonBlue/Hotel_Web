<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <jsp:useBean id="b" class="com.bjy.dto.BoardDTO"></jsp:useBean>
<jsp:setProperty property="*" name="b" /> -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>호텔 오버튼 - 고객의 소리 게시글 수정</title>
    <link rel="stylesheet" href="../css/inquiryCSS.css" />
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
    </style>
  </head>

  <body>
    <header class="header"><%@ include file="../main/header.jsp" %></header>

    <br /><br />
    &nbsp;&nbsp;&nbsp; <font size="20">Review 수정<br /></font>

    <div id="detailcomment">
      호텔 에베레스트는은 언제나 고객님의 목소리에 귀기울이고 있습니다.<br />
      고객님들의 소중한 충고와 격려, 또는 제안의 말씀을 주시면 더 나은 서비스로
      보답하겠습니다.
    </div>

    <form action="inquiryUpdate.do" method="post">
      <table align="center" class="inquiryDetail">
        <tr>
          <td id="detail">TITLE</td>
          <td>
            <input
              type="text"
              name="boardTitle"
              maxlength="30"
              value="${update.boardTitle}"
              required="required"
              id="writeTitle"
            />
          </td>
        </tr>
        <tr>
          <td id="detail">CONTENT</td>
          <td>
            <textarea
              name="b_content"
              rows="5"
              cols="40"
              id="writeContent"
              required="required"
            >
            ${boardContent}</textarea
            >
          </td>
        </tr>
        <tr align="center">
          <td colspan="2">
            <input type="submit" id="btn" value="수정완료" />
            <input type="reset" id="btn" value="취소" />
            <input
              type="button"
              id="btn"
              value="목록"
              onclick="location.href='inquiryList.do'"
            />
          </td>
        </tr>
      </table>
    </form>
    <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
  </body>
</html>