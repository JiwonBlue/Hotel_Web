<<<<<<< HEAD
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
=======
<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <meta charset="UTF-8" />
  <style>
    a {
      text-decoration: none;
    }
  </style>
  <body style="text-align: center">
    <h3>index.jsp</h3>

<<<<<<< HEAD
                <a href="address_page/list.do">주소록(페이징)</a></br>
                <a href="board_page/list.do">게시판(페이징)</a></br>
>>>>>>> 3ac76fc796acaa4a6812d78479b4830838937b6f

<html>
    <meta charset="UTF-8">
    <style>
        a{text-decoration:none}
    </style>

    <body style="text-align:center">

        <h3>index.jsp</h3>
        <a href="address/list.do">주소록(Jpa)</a><br/>
        <a href="address_page/list.do">주소록(페이징)</a><br/>
        <a href="board/list.do">게시판(Jpa)</a><br/>
        <a href="board_page/list.do">게시판(페이징)</a><br/>


<<<<<<< HEAD
        <a href="file/upload.do">파일폼</a><br/>
        <a href="file/list.do">파일리스트</a>(회원서비스)<br/><br/>


        <a href="ajax/test1.do">Ajax1</a>
        <a href="ajax/test2.do">Ajax2</a>&nbsp;&nbsp;
        <a href="ajax/test3.do">Ajax3</a>&nbsp;&nbsp;
        <a href="ajax/test4.do">Ajax4</a>(JSP)<br/>


        <a href="auto/auto.do">Autocomplete</a><br/>
        <a href="drag_drop/form_dd.do">Drag&Drop폼</a><br/>
        <a href="drag_drop/list.do">Drag&Drop리스트</a>(JSP)<br/>

        <a href="chart/chart.do">Google Chart</a><br/><br/>

        <a href="rest_addr/create1?name=오늘은&addr=목요일">Addr1</a><br/>
        <a href="rest_addr/read">Addr2</a><br/><br/>


        <a href="rest_board/create1?writer=안녕&email=하세요&subject=저는&content=용빈입니다">Board1</a><br/>
        <a href="rest_board/read">Board2</a><br/><br/>

        <c:choose>
            <c:when test="${empty loginOkUser}">
                <a href="login/form.do">로그인</a>
            </c:when>

            <c:otherwise>
                <font style="color:green">${loginOkUser.name}</font>님.. 어서오세요<br/>
                <a href="login/logout.do">로그아웃</a>
            </c:otherwise>
        </c:choose>

        <a href="project/main.do">프로젝트</a><br/>

        </br>
    </body>
</html>
=======
                <a href="rest_addr/read">Rest</a><br/>
                <a href="rest_board/read">Rest board</a><br/>

                <a href="project/standardroom.do">Project-Standard Room</a><br/>
                <a href="project/deluxeroom.do">Project-Deluxe Room</a><br/>
                <a href="project/sweetroom.do">Project-Sweet Room</a><br/>
                <a href="project/header.do">Project-Header</a><br/>
                <a href="project/footer.do">Project-Footer</a><br/>   
            </body>
        </html>
=======
    <a href="everest/main.do">EVEREST HOTEL 메인</a><br />
    <a href="everest/footer.do">EVEREST HOTEL 푸터</a><br />
    <a href="everest/header.do">EVEREST HOTEL 헤더</a><br />
  </body>
</html>
>>>>>>> 17e66b564ced92f25791fc0b30a68d17bc83129f
>>>>>>> 3ac76fc796acaa4a6812d78479b4830838937b6f
