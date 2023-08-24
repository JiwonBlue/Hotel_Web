<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >
<html>
  <head>
    <meta charset="UTF-8" />
    <title>회원정보</title>
    <link rel="stylesheet" href="../css/userCSS.css" />
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
    &nbsp;&nbsp;&nbsp; <center><font size="20">회원정보<br /></font></center>

    <table width="75%" align="center" class="userInfo">
      <form action="userUpdate.do" method="get">
        <tr align="center" height="10%">
          <td><b>아이디</b></td>
        </tr>
        <tr align="center">
          <td>
            <input
              type="email"
              name="memberId"
              value="${member.memberId}"
              size="30"
              readonly="readonly"
            />
          </td>
        </tr>
        <tr align="center">
          <td><b>비밀번호</b></td>
        </tr>
        <tr align="center">
          <td>
            <input
              type="text"
              name="memberPwd"
              value="${member.memberPwd}"
              readonly="readonly"
              size="30"
            />
          </td>
        </tr>
        <tr align="center">
          <td><b>성함</b></td>
        </tr>
        <tr align="center">
          <td>
            <input
              type="text"
              name="memberName"
              value="${member.memberName}"
              readonly="readonly"
              size="30"
            />
          </td>
        </tr>
        <tr align="center">
          <td><b>전화번호</b></td>
        </tr>
        <tr align="center">
          <td>
            <input
              type="tel"
              name="memberPhone"
              value="${member.memberPhone}"
              readonly="readonly"
              size="30"
            />
          </td>
        </tr>
        <tr align="center">
          <td><b>Birth</b></td>
        </tr>
        <tr align="center">
          <td>
            <input type="date"
              name="memberBirthday"
              value="${member.memberBirthday}"
              readonly="readonly"
              size="30"
            />
          </td>
        </tr>
        <tr align="center">
          <td>
            <input type="submit" value="정보수정" id="btn" />
          </td>
        </tr>
      </form>
    </table>

    <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>

    <c:if test="${result != null }">
      <c:if test="${result==1}">
        <script>
          alert('정보수정이 완료되었습니다.');
        </script>
      </c:if>
      <c:if test="${result==0 }">
        <script>
          alert('정보수정을 실패하였습니다,다시 시도해주시기 바랍니다.');
        </script>
      </c:if>
    </c:if>
  </body>
</html>