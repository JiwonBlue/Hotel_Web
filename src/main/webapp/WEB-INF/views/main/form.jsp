<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="utf-8" />
<script src="/js/trim.js"></script>
<script language="javascript">
  function check() {
    var idval = f.email.value;
    idval = trim(idval);
    if (idval.length == 0) {
      alert('아이디를 넣어주세요');
      f.email.value = '';
      f.email.focus();
      return false;
    } else {
      pass = checkByteLen(idval, 50);
      if (!pass) {
        alert('아이디가 너무 길어요');
        f.email.focus();
        return false;
      }
    }

    var pwdval = f.pwd.value;
    pwdval = trim(pwdval);
    if (pwdval.length == 0) {
      alert('비번을 넣어주세요');
      f.pwd.value = '';
      f.pwd.focus();
      return false;
    } else {
      pass = checkByteLen(pwdval, 30);
      if (!pass) {
        alert('비번이 너무 길어요');
        f.pwd.focus();
        return false;
      }
    }

    f.submit();
  }

  function checkByteLen(str, size) {
    var byteLen = getByteLen(str);
    if (byteLen <= size) {
      return true;
    } else {
      return false;
    }
  }
  function getByteLen(str) {
    return str.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g, '$&$1$2').length;
  }

  function enterCheck(elm) {
    if (event.keyCode == 13) {
      if (elm == f.email) {
        f.pwd.focus();
      } else {
        check();
      }
    }
  }
</script>
<style>
  table,
  th,
  td {
    border: 1px solid black;
    border-collapse: collapse;
  }
  th,
  td {
    padding: 5px;
  }
  a {
    text-decoration: none;
  }
</style>
<body onload="document.f.email.focus()">
  <center>
    <h1>Login</h1>
    <form name="f" action="login.do" method="post">
      <table border="1" width="300" height="200">
        <tr>
          <td width="30%" colspan="2" align="center"><h2>입력폼</h2></td>
        </tr>
        <tr>
          <th width="30%">아이디(Email)</th>
          <td>
            <input
              name="email"
              align="center"
              size="20"
              align="center"
              onkeydown="enterCheck(this)"
            />
          </td>
        </tr>
        <tr>
          <th width="30%">비번</th>
          <td>
            <input
              name="pwd"
              size="20"
              align="center"
              type="password"
              onkeydown="enterCheck(this)"
            />
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="button" value="전송" onclick="check()" />
            <input type="reset" value="취소" />
          </td>
        </tr>
      </table>
    </form>
  </center>
</body>
