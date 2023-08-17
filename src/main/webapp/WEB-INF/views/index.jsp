<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>
            <meta charset="UTF-8">
            <style>
                a{text-decoration:none}
            </style>
            <body style="text-align:center">
                <h3>index.jsp</h3>
                <a href="address/list.do">주소록</a></br>
                <a href="board/list.do">게시판</a></br>

                <a href="address_page/list.do">주소록(페이징)</a></br>
                <a href="board_page/list.do">게시판(페이징)</a></br>

                <a href="file/upload.do">파일폼</a></br>
                <a href="file/list.do">파일리스트</a></br>

                <a href="ajax/test1.do">Ajax1</a>
                <a href="ajax/test2.do">Ajax2</a>&nbsp;&nbsp;
                <a href="ajax/test3.do">Ajax3</a>&nbsp;&nbsp;
                <a href="ajax/test4.do">Ajax4</a>(JSP)<br/>

                <a href="auto/auto.do">Autocomplete</a><br/>
                <a href="drag_drop/form_dd.do">Drag&Drop폼</a>
                <a href="drag_drop/list.do">Drag&Drop리스트</a><br/>

                <a href="chart/chart.do">Google Chart</a><br/>

                <a href="rest_addr/read">Rest</a><br/>
                <a href="rest_board/read">Rest board</a><br/>

                <a href="project/standardroom.do">Project-Standard Room</a><br/>
                <a href="project/deluxeroom.do">Project-Deluxe Room</a><br/>
                <a href="project/sweetroom.do">Project-Sweet Room</a><br/>
                <a href="project/header.do">Project-Header</a><br/>
                <a href="project/footer.do">Project-Footer</a><br/>
            </body>
        </html>