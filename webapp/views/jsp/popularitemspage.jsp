<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../global.css" />
    <link rel="stylesheet" href="../css/popularitemspageguide.css" />
    <link rel="stylesheet" href="../css/popularitemspagestyle.css" />
    <title>인기 상품</title>
</head>
<body>
    <div class="popular-items-page">
        <header class="header">
            <div class="top-3">
                <div class="home-button">푸드피아</div>
                <div class="search-bar">
                    <img class="search-icon" src="img/search-icon.svg" alt="검색 아이콘" />
                    <div class="search-input-text">검색어를 입력하세요.</div>
                </div>
                <div class="cart-logout">
                    <div class="shoppin-cart-button">
                        <img class="shopping-cart-icon" src="img/shopping-cart-icon.svg" alt="장바구니 아이콘" />
                        <div class="div-wrapper">장바구니</div>
                    </div>
                    <div class="shoppin-cart-button-2">
                        <img class="my-page-icon" src="img/my-page-icon.svg" alt="내 정보 아이콘" />
                        <div class="div-wrapper">내 정보</div>
                    </div>
                    <div class="logout-button">
                        <img class="login-icon" src="img/login-icon.svg" alt="로그아웃 아이콘" />
                        <div class="login-text">로그아웃</div>
                    </div>
                </div>
            </div>
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
        

        <footer class="footer">
            <div class="top-2">
                <div class="company">푸드피아</div>
                <div class="ceo">대표자: 전제민, 김용담, 이현선, 정주희, 조석현</div>
            </div>
            <div class="bottom">
                <p class="url">CompanyName @ 202X All rights reserved.</p>
            </div>
        </footer>
    </div>
</body>
</html>
