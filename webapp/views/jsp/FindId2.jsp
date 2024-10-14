<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/views/css/globals.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/views/css/styleguide.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/views/css/FindId2.css" />
</head>
<body>
    <%@ include file="/views/jsp/header.jsp"%>
    <div class="body">
        <div class="Find-Id-Form2">
            <div class="find-Id-text2">조회된 아이디</div>
            <div class="mid">
                <table>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>아이디</th>
                            <th>전화번호</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="member" items="${memberList}">
                            <tr>
                                <td>${member.userId}</td>
                                <td>${member.userName}</td>
                                <td>${member.phone}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- 로그인하러 가기 버튼을 폼 안에 넣어 POST 요청으로 전송 -->
            <form action="${pageContext.request.contextPath}/MemberLogin.do" method="post">
                <div class="bottom">
                    <button class="action-button" type="submit">로그인하러 가기</button>
                </div>
            </form>
        </div>
    </div>
    <%@ include file="./footer.jsp"%>
</body>
</html>
