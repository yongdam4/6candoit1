<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="views/css/globals.css" />
    <link rel="stylesheet" href="views/css/styleguide.css" />
    <link rel="stylesheet" href="views/css/MainPage.css" />
  </head>
  <body>
    <div class="main-page">
      <header class="header">
        <div class="top">
          <div class="home-button"><div class="text-wrapper">푸드피아</div></div>
          <div class="search-bar">
            <img class="search-icon" src="views/img/img-search-icon.svg" />
            <div class="search-input-text"><div class="div">검색어를 입력하세요.</div></div>
          </div>
          <div class="cart-login">
            <div class="shoppin-cart-button">
              <img class="shopping-cart-icon" src="views/img/img-shopping-cart-icon.svg" />
              <div class="shopping-cart-text"><div class="text-wrapper-2">장바구니</div></div>
            </div>
            <div class="login-button">
              <img class="login-icon" src="views/img/img-login-icon.svg" />
              <div class="login-text"><div class="text-wrapper-3">로그인</div></div>
            </div>
          </div>
        </div>
        <div class="menu">
          <div class="category-button">
            <img class="img" src="views/img/img-menu.svg" />
            <div class="text-wrapper-4">카테고리</div>
          </div>
          <div class="navbar">
  			<div class="text-wrapper-5">이벤트</div>
  			<div class="text-wrapper-5">인기상품</div>
  			<div class="text-wrapper-5">럭키박스</div>
  			<div class="text-wrapper-5">문의</div>
  			<!-- 관리자 버튼에 링크 추가 -->
  			<a href="<%= path %>/views/jsp/AdminLoginPage.jsp">
  			<div class="text-wrapper-5">관리자</div>
			</a>
			</div>
        </div>
      </header>
      <div class="body-footer">
        <img class="advertisement" src="views/img/img-advertisement.svg" />
        <div class="recommend">
          <div class="today-tiems"><div class="text-wrapper-6">🎉 오늘의 특가 🎉</div></div>
          <div class="div-2">
            <div class="tamato">
              <img class="image" src="views/img/img-image-3.png" />
              <div class="element">완숙 토마토 950g<br />(봉)<br />10,990원</div>
            </div>
            <div class="broccoli">
              <img class="image-2" src="views/img/img-image-2.png" />
              <div class="element-2">브로콜리 2개(약 500g)<br />6,500원</div>
            </div>
            <div class="div-3">
              <img class="img-2" src="views/img/img-cabage-1.png" />
              <div class="element">강원 양배추(국산) <br />1통<br />3,990원</div>
            </div>
            <div class="div-3">
              <img class="img-2" src="views/img/img-melon-1.png" />
              <div class="element">고당도 점보허니듀멜론<br />(통)<br />12,990원</div>
            </div>
            <div class="tokyo-banana">
              <img class="img-2" src="views/img/img-bananabread-1.png" />
              <div class="element-3">도쿄바나나노 코이비토<br />(10입)<br />7000원</div>
            </div>
            <div class="div-3">
              <img class="img-2" src="views/img/img-1.png" />
              <div class="element">국산 냉동 새우살 400G(팩)<br />17,940원</div>
            </div>
          </div>
          <div class="customized-tiems">
            <p class="p">
              <span class="span">🎀</span>
              <span class="text-wrapper-7"> 맞춤형 </span>
              <span class="span">상품 </span>
              <span class="text-wrapper-7">🎀</span>
            </p>
          </div>
          <div class="div-2">
            <div class="div-3">
              <img class="img-2" src="views/img/img-koreacow-1.png" />
              <div class="element">한우대창나베<br />15,480원</div>
            </div>
            <div class="mille-feuille-nabe">
              <img class="image-3" src="views/img/img-image-4.png" />
              <div class="element-2">밀푀유나베<br />22,900원</div>
            </div>
            <div class="div-3">
              <img class="img-2" src="views/img/img-yakidori-2.png" />
              <div class="element-4">야키토리동<br />8,900원</div>
            </div>
            <div class="tteokbokki">
              <img class="image-4" src="views/img/img-image.png" />
              <div class="element-5">석관동 떡볶이(2인분)<br />10,300원</div>
            </div>
            <div class="div-3">
              <img class="img-2" src="views/img/img-bagle-1.png" />
              <div class="element-6">크랜베리 베이글 샌드위치<br />8,800원</div>
            </div>
            <div class="div-3">
              <img class="img-2" src="views/img/img-mandoo-1.png" />
              <div class="element-7">대구식 수제 납작만두<br />6,480원</div>
            </div>
          </div>
        </div>
        <footer class="footer">
          <div class="top-2">
            <div class="company"><div class="text-wrapper-8">푸드피아</div></div>
            <div class="ceo"><div class="text-wrapper-9">대표자</div></div>
            <div class="employee">
              <div class="frame">
                <div class="text-wrapper-9">전제민</div>
                <div class="text-wrapper-9">김용담</div>
                <div class="text-wrapper-9">이현선</div>
                <div class="text-wrapper-9">정주희</div>
                <div class="text-wrapper-9">조석현</div>
              </div>
            </div>
          </div>
          <div class="url"><p class="text-wrapper-10">CompanyName @ 202X All rights reserved.</p></div>
        </footer>
      </div>
    </div>
  </body>
</html>