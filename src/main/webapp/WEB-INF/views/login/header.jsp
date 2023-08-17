<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>호텔 헤더</title>
</head>
<body>
    <table width="100%" height="8%" bgcolor="#f1e3c4" class="header">
        <tr>
            <th>
                <c:choose>
                    <c:when test="${empty u_idKey}">
                        <a href="login.do">로그인</a>
                    </c:when>
                    <c:otherwise>
                        <a href="logout.do">로그아웃</a>
                    </c:otherwise>
                </c:choose>
            </th>

            <th>
                <a href="standardroom.do">객실 정보</a>
            </th>

            <th>
                <c:choose>
                <c:when test="${empty u_idKey}">
                    <a href="login.do">예약</a>
                </c:when>
                <c:otherwise>
                    <a href="reservation1.do">예약</a>
                </c:otherwise>
                </c:choose>
            </th>

            <th>
                <a href="main.do"><img src="/data/logo.png" width="175" height="140" alt="HOME"></a>
            </th>

            <th>
                <a href="inquiryList.do">고객의 소리</a>
            </th>

            <th>
                <c:choose>
                    <c:when test="${empty u_idKey}">
                        <a href="join.do">회원가입</a>
                    </c:when>
                    <c:otherwise>
                        <a href="userinfo.do">회원정보</a>
                    </c:otherwise>
                </c:choose>
            </th>

            <th>
                <c:choose>
                    <c:when test="${empty u_idKey}">
                        <a href="login.do">예약내역</a>
                    </c:when>
                    <c:otherwise>
                        <a href="reserveinfo.do">예약내역</a>
                    </c:otherwise>
                </c:choose>
            </th>

        </tr>
    </table>
	
</body>
</html>