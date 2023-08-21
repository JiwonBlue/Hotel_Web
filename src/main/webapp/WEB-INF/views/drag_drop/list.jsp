<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>list.jsp</title>
		<style>
			a{text-decoration:none}
		    table{
		        width:60%
		    }
			table,th,td {
			  border : 1px solid black;
			  border-collapse: collapse;
			}
			th,td {
			  padding: 5px;
			}
		</style>
	</head>
	<body style="text-align:center">
	    <h1>Drag&Drop List with SpringBoot</h1>
		<a href="form_dd.do">Drag&Drop업로드폼</a>&nbsp;&nbsp;&nbsp;
	    <a href="../">인덱스
	    <br/><br/>

        <center>
	    <table>

	        <tr>
	           <th width="10%">번호</th>
	           <th>이름</th>
	           <th width="10%">삭제</th>
	        </tr>

            <c:if test="${empty fileups}">
                <tr>
                    <td align="center" colspan="3">파일이 하나도 없음</td>
                </tr>
            </c:if>

            <c:forEach items="${fileups}" var="fileup">

	           <tr>
	             <td align="center">
                   ${fileup.id}
                 </td>
	             <td align="center">
	               <a href="attach/${fileup.id}">${fileup.orgnm}</a>
	             </td>
	             <td align="center">
	               <a href="remove.do?id=${fileup.id}">삭제</a>
	             </td>
	          </tr>

            </c:forEach>

	    </table>
	    </center>
	</body>
</html>