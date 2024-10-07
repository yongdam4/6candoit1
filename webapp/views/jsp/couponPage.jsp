<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/globals.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/style.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/styleguide.css" />
  </head>
  <body>
    <div class="coupon-page">
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
        <div class="coupon-page-blank">
          <div class="typography-row"><div class="header-2">내 쿠폰함</div></div>
        </div>
        <div class="coupon-list">
          <div class="div-2">
            <div class="frame">
              <button class="view">      
              </button>
            </div>
            <div class="coupon">
              <div class="title">
                <div class="text-wrapper-7">럭키박스<br/>할인쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">10% 할인 쿠폰</div>
            </div>
          </div>        
          <div class="div-2">
            <div class="frame">
              <button class="view1">             
              </button>
            </div>
            <div class="coupon">
              <div class="title-2">
                <div class="text-wrapper-7">깜짝 쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">5% 할인 쿠폰</div>
            </div>
          </div>        
          <div class="div-2">
            <div class="frame">
              <button class="view2">
              </button>
            </div>
            <div class="coupon">
              <div class="title-3">
                <div class="text-wrapper-7">신규회원<br />쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">15% 할인 쿠폰</div>
            </div>
          </div>
        
          <div class="div-2">
            <div class="frame">
              <button class="view3">
               
              </button>
            </div>
            <div class="coupon">
              <div class="title-4">
                <div class="text-wrapper-7">추석 이벤트 쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">20% 할인 쿠폰</div>
            </div>
          </div>
        </div>
        <button class="check-button"><a href="paymentinformationpage.jsp" method="post"><div class="text-wrapper-8">확인</div></a></button>
      </div>
      <footer class="footer">
        <div class="top-2">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-9">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-9">전제민</div>
            <div class="text-wrapper-9">김용담</div>
            <div class="text-wrapper-9">이현선</div>
            <div class="text-wrapper-9">정주희</div>
            <div class="text-wrapper-9">조석현</div>
          </div>
        </div>
        <div class="bottom"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
    </div>
  </body>
</html>