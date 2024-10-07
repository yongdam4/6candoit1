<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/global.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/popularitemspageguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/popularitemspagestyle.css" />
    <title>인기 상품</title>
</head>
<body>
    <div class="popular-items-page">
       
       <%@ include file="/views/jsp/header.jsp" %>
       
       
            <div class="menu">
                <div class="category-button">
                    <img class="img" src="img/menu.svg" alt="카테고리 아이콘" />
                    <div class="text-wrapper-8">카테고리</div>
                </div>
                <div class="div-wrapper-2">이벤트</div>
                <div class="div-wrapper-2">인기상품</div>
                <div class="div-wrapper-2">럭키박스</div>
                <div class="div-wrapper-2">문의</div>
                <div class="div-wrapper-2">관리자</div>
            </div>
        </header>
        
        <div class="body">
            <div class="top">
                <div class="text-wrapper">인기 상품</div>
            </div>
            <div class="mid">
                <!-- 각 상품의 이미지와 가격을 표시 -->
                <div class="product">
                    <img class="image" src="img/image.png" alt="완숙 토마토" / onclick="">
                    <div class="element">10,990원</div>
                </div>
                <!-- 추가 상품 예시 -->
                <div class="product">
                    <img class="image" src="img/image2.png" alt="신선한 사과" />
                    <div class="element">8,990원</div>
                </div>
                <div class="product">
                    <img class="image" src="img/image3.png" alt="바나나" />
                    <div class="element">5,990원</div>
                </div>
                <!-- 상품을 추가로 반복할 수 있습니다. -->
            </div>
        </div>
        
		<%@ include file="/views/jsp/footer.jsp" %>
      
    </div>
</body>
</html>
