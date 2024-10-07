<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/global.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/luckyboxguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/luckyboxstyle.css" />
  </head>
  <body>
    <div class="lucky-box">
      <header class="header">
        <div class="top">
          <div class="home-button"><div class="text-wrapper">푸드피아</div></div>
          <div class="search-bar">
            <img class="search-icon" src="img/search-icon.svg" />
            <div class="search-input-text"><div class="div">검색어를 입력하세요.</div></div>
          </div>
          <div class="cart-logout">
            <div class="shoppin-cart-button">
              <img class="shopping-cart-icon" src="img/shopping-cart-icon.svg" />
              <div class="div-wrapper"><div class="text-wrapper-2">장바구니</div></div>
            </div>
            <div class="shoppin-cart-button-2">
              <img class="my-page-icon" src="img/my-page-icon.svg" />
              <div class="div-wrapper"><div class="text-wrapper-3">내 정보</div></div>
            </div>
            <div class="logout-button">
              <img class="login-icon" src="img/login-icon.svg" />
              <div class="login-text"><div class="text-wrapper-4">로그아웃</div></div>
            </div>
          </div>
        </div>
        <div class="menu">
          <div class="category-button">
            <img class="img" src="img/menu.svg" />
            <div class="text-wrapper-5">카테고리</div>
          </div>
          <div class="div-wrapper-2"><div class="text-wrapper-6">이벤트</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6">인기상품</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6">럭키박스</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6">문의</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6">관리자</div></div>
        </div>
      </header>







      <div class="body">
      	<img class="luckybox-function" src="<%=path %>/views/img/img_luckybox-function.svg" onclick="">
        <div class="luckybox-blank">
          <div class="luckybox-guide">
            <p class="p">
              <span class="span">다음과 같은 상품이 나올 수 있습니다.<br /></span>
              <span class="text-wrapper-7">이달의 특별상품, 할인쿠폰, 포춘쿠키</span>
            </p>
          </div>
        </div>
      </div>




      
      <footer class="footer">
        <div class="top-2">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-8">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-8">전제민</div>
            <div class="text-wrapper-8">김용담</div>
            <div class="text-wrapper-8">이현선</div>
            <div class="text-wrapper-8">정주희</div>
            <div class="text-wrapper-8">조석현</div>
          </div>
        </div>
        <div class="bottom"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
    </div>
  </body>
</html>