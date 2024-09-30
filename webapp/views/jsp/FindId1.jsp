<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/globals.css" />
    <link rel="stylesheet" href="../css/styleguide.css" />
    <link rel="stylesheet" href="../css/FindId1.css" />
</head>

<body>
    <div class="find-id">
        <header class="header">
            <div class="top">
                <div class="home-button">
                    <div class="text-wrapper">푸드피아</div>
                </div>
                <div class="search-bar">
                    <img class="search-icon" src="img/search-icon.svg" />
                    <div class="div-wrapper">
                        <div class="div">검색어를 입력하세요.</div>
                    </div>
                </div>
                <div class="cart-login">
                    <div class="shoppin-cart-button">
                        <img class="shopping-cart-icon" src="img/shopping-cart-icon.svg" />
                        <div class="shopping-cart-text">
                            <div class="text-wrapper-2">장바구니</div>
                        </div>
                    </div>
                    <div class="login-button">
                        <img class="login-icon" src="img/login-icon.svg" />
                        <div class="login-text">
                            <div class="text-wrapper-3">로그인</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu">
                <div class="category-button">
                    <img class="img" src="img/menu.svg" />
                    <div class="text-wrapper-4">카테고리</div>
                </div>
                <div class="div-wrapper-2">
                    <div class="text-wrapper-5">이벤트</div>
                </div>
                <div class="div-wrapper-2">
                    <div class="text-wrapper-5">인기상품</div>
                </div>
                <div class="div-wrapper-2">
                    <div class="text-wrapper-5">럭키박스</div>
                </div>
                <div class="div-wrapper-2">
                    <div class="text-wrapper-5">문의</div>
                </div>
                <div class="div-wrapper-2">
                    <div class="text-wrapper-5">관리자</div>
                </div>
            </div>
        </header>
        <div class="body">
            <div class="find-Id-form">
                <div class="find-Id-text">아이디 찾기</div>
                <div class="mid">
                    <div class="name-function">
                        <div class="name-blank">
                            이름
                        </div>
                        <input type="text" placeholder="이름을 입력해주세요." class="input-field">
                    </div>
                    <div class="phone-function">
                        <div class="phone-blank">
                            전화번호
                        </div>
                        <input type="text" placeholder="전화번호를 입력해주세요." class="input-field">
                    </div>
                </div>

                <button class="find-button" type="button" onclick="findIdFunction()">
                    조회하기
                </button>

            </div>
        </div>
        <footer class="footer">
            <div class="top-2">
                <div class="company">
                    <div class="foodpia">푸드피아</div>
                </div>
                <div class="ceo">
                    <div class="CEO">대표자</div>
                </div>
                <div class="worker">
                    <div class="JM">전제민</div>
                    <div class="YD">김용담</div>
                    <div class="HS">이현선</div>
                    <div class="JH">정주희</div>
                    <div class="SH">조석현</div>
                </div>
            </div>
            <div class="URL-wrapper">
                <p class="URL">CompanyName @ 202X All rights reserved.</p>
            </div>
        </footer>
    </div>
</body>

</html>