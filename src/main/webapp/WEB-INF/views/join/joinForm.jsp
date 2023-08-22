<%@ page contentType="text/html;charset=utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
   <link rel="stylesheet" href="../css/joinCSS.css">

<head>
   <meta charset="UTF-8">
   <title>호텔 오버튼 - 회원가입</title>
   <!-- <script type="text/javascript" src="../script/script.js?ver=3"></script> -->
</head>

<body>
   <%@ include file="header.jsp" %>
   <br/><br />
   &nbsp;&nbsp;&nbsp; <center><font size="20">회원가입<br /></font></center>
   
   <table align="center" class="joinlist">
      <tr id="list">
         <td id="list1">가입정보</td>
         <td id="list2">가입완료</td>
      </tr>
   </table>

   <form action="joinForm.do" method="post" name="regForm">
      <table align="center" class="joinform">
         <tr>
            <td colspan="2" align="center" id="comment">
               오버톤호텔에 오신 것을 환영합니다.<br/>
               ※ 모든 항목에 개인정보를 입력해주시기를 바랍니다
            </td>
         </tr>

         <tr>
            <td width="55%" align="center" style="padding-right:13px;">
               아이디 
            </td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="email" name="memberId" size="30" placeholder="아이디" />
            </td>
         </tr>

         <tr>
            <td colspan="2">비밀번호</td>
         </tr>
         <tr>
            <td colspan="2"><input type="password" name="memberPwd" size="30" /></td>
         </tr>

         <tr>
            <td colspan="2">성함</td>
         </tr>
         <tr>
            <td colspan="2"><input type="text" name="memberName" size="30" placeholder="성함" /></td>
         </tr>

         <tr>
            <td colspan="2">전화번호</td>
         </tr>
         <tr>
            <td colspan="2"><input type="tel" name="memberPhone" placeholder="Tel" size="30"></td>
         </tr>

         <tr>
            <td colspan="2">생년월일</td>
         </tr>
         <tr>
            <td colspan="2"><input type="date" name="memberBirthday" placeholder="YYYY-MM-DD" size="30"></td>
         </tr>

         <tr align="center">
            <td colspan="2">
               <input type="submit" value="회원가입" id="btn" />
               <input type="reset" value="다시쓰기" id="btn" />
            </td>
         </tr>
      </table>
   </form>

   <%@ include file="footer.jsp" %>
</body>
</html>