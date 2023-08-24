<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>회원 정보 수정</title>
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
    &nbsp;&nbsp;&nbsp; <center><font size="20">정보수정<br /></font></center>

    <form action="userInfo.do" method="post">
      <table width="75%" align="center" class="userInfo">
        <tr>
          <td>*표시된 부분만 수정이 가능합니다.</td>
        </tr>
        <tr>
          <td><b>아이디</b></td>
        </tr>
        <tr>
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
        <tr>
          <td><b>*비밀번호</b></td>
        </tr>
        <tr>
          <td>
            <input
              type="text"
              name="memberPwd"
              value="${member.memberPwd}"
              required="required"
              size="30"
            />
          </td>
        </tr>
        <tr>
          <td><b>*성함</b></td>
        </tr>
        <tr>
          <td>
            <input
              type="text"
              name="memberName"
              value="${member.memberName}"
              required="required"
              size="30"
            />
          </td>
        </tr>
        <tr>
          <td><b>*전화번호</b></td>
        </tr>
        <tr>
          <td>
            <input
              type="tel"
              name="memberPhone"
              value="${member.memberPhone}"
              required="required"
              size="30"
            />
          </td>
        </tr>
        <tr>
          <td><b>*Birth</b></td>
        </tr>
        <tr>
          <td>
            <input
              type="date"
              name="memberBirthday"
              value="${member.memberBirthday}"
              required="required"
              size="30"
            />
          </td>
        </tr>
        <tr align="center">
          <td>
            <input type="submit" id="btn" value="수정" />
            <input type="submit" id="btn" value="회원정보" onclick="location.href='userinfo.do'" />
          </td>
        </tr>
      </table>
    </form>

    <footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
  </body>
</html>