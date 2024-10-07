<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>     
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/globals3.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/styleguide3.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/style3.css" />
  </head>
  <body>
    <div class="product-page">
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
        <div class="product-infom">
          <img class="melon" src="img/melon-1.png" />
          <div class="product-inform">
            <div class="frame"><div class="text-wrapper-7">멜론(한국산)</div></div>
            <div class="frame-2"><div class="text-wrapper-8">메론(한국산)/농심 , 850g</div></div>
            <div class="frame-3"><div class="text-wrapper-9">수량 : 3</div></div>
            <div class="frame-4"><div class="text-wrapper-10">가격: 16,800</div></div>
            <div class="frame-5"><div class="text-wrapper-11">총가격: 16,800</div></div>
            <div class="add-button">
              <button class="typography-row"><div class="header-2">장바구니 담기</div></button>
            </div>
          </div>
        </div>
        <div class="product-explaination">
          <div class="text-wrapper-12">달고 맛있는 메론!</div>
          <p class="p">고창에서 나고 자란 국산 메론입니다.</p>
        </div>
        <div class="inquiry-list">
          <div class="table">
            <div class="top-2">
              <div class="frame-6"><div class="text-wrapper-13">번호</div></div>
              <div class="frame-7"><div class="text-wrapper-14">문의종류</div></div>
              <div class="frame-8"><div class="text-wrapper-14">제목</div></div>
              <div class="frame-9"><div class="text-wrapper-15">작성자</div></div>
              <div class="frame-10"><div class="text-wrapper-16">작성일</div></div>
            </div>
            <div class="mid">
              <div class="inquiry-number"><div class="text-wrapper-17">1</div></div>
              <div class="inquiry-type"><div class="text-wrapper-18">배송</div></div>
              <div class="inquiry-title"><div class="text-wrapper-19">아 배송 개느리네 진짜</div></div>
              <div class="inquiry-author"><div class="text-wrapper-20">jjm****</div></div>
              <div class="inquiry-creation"><div class="text-wrapper-21">2024-09-05</div></div>
            </div>
            <div class="bottom"></div>
          </div>
        </div>
        <button class="real-button"><div class="inquiry-button"><div class="text-wrapper-22">문의하기</div></div></button>
      </div>
      <footer class="footer">
        <div class="top-3">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-23">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-23">전제민</div>
            <div class="text-wrapper-23">김용담</div>
            <div class="text-wrapper-23">이현선</div>
            <div class="text-wrapper-23">정주희</div>
            <div class="text-wrapper-23">조석현</div>
          </div>
        </div>
        <div class="url-wrapper"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
    </div>
  </body>
</html>