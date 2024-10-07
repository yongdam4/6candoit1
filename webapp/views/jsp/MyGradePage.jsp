<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/globals1.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/style1.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/css/styleguide1.css" />
  </head>
  <body>
    <div class="my-grade-page">
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
        <div class="mypage-navbar">
          <div class="navbar">
            <div class="view"><button class="real-button"><div class="text-wrapper-7">등급 정보 및 혜택</div></button></div>
            <div class="view-2"><div class="text-wrapper-8"><button class="real-button">쿠폰함</button></div></div>
            <div class="overlap-group">
              <div class="view-3"><div class="text-wrapper-9">혜택</div></div>
              <div class="my-account-list-wrapper">
                <div class="my-account-list">
                  <div class="view-4"><button class="real-button"><div class="text-wrapper-7">개인정보 수정 및 정보</div></button></div>
                  <div class="view-5"><button class="real-button"><div class="text-wrapper-10">주문 내역</div></button></div>
                </div>
              </div>
            </div>
            <div class="view-6"><div class="text-wrapper-11">나의 계정</div></div>
          </div>
          <div class="view-7"><div class="text-wrapper-12"><button class="real-button">회원탈퇴</button></div></div>
        </div>
        <div class="mid">
          <div class="top-2"><div class="text-wrapper-13">등급 정보 및 혜택</div></div>
          <div class="block">
            <div class="overlap-group-2">
              <div class="mygrade-blank">
                <p class="p">
                  <span class="span">현재 회원님의 등급은 </span>
                  <span class="text-wrapper-14">다이아</span>
                  <span class="span"> 입니다.</span>
                </p>
              </div>
              <div class="view-8">
                <div class="view-9"><div class="text-wrapper-15">골드 회원</div></div>
                <div class="view-10"><div class="text-wrapper-16">다이아 회원</div></div>
                <div class="view-11"><div class="text-wrapper-16">브론즈 회원</div></div>
                <div class="frame-wrapper">
                  <div class="frame"><div class="text-wrapper-17">브론즈 등급 혜택 내용</div></div>
                </div>
                <div class="view-12">
                  <div class="frame-2"><div class="text-wrapper-18">골드 등급 혜택 내용</div></div>
                </div>
                <div class="view-13">
                  <div class="frame-2"><div class="text-wrapper-19">다이아 등급 혜택 내용</div></div>
                </div>
              </div>
              <img class="picture" src="img/picture.svg" />
            </div>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="top-3">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-20">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-20">전제민</div>
            <div class="text-wrapper-20">김용담</div>
            <div class="text-wrapper-20">이현선</div>
            <div class="text-wrapper-20">정주희</div>
            <div class="text-wrapper-20">조석현</div>
          </div>
        </div>
        <div class="bottom"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
    </div>
  </body>
</html>