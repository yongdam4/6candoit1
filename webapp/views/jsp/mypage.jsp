<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../global.css" />
    <link rel="stylesheet" href="../css/mypageguide.css" />
    <link rel="stylesheet" href="../css/mypagestyle.css" />
  </head>
  <body>
    <div class="my-page">
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
        <!-- 통합된 사이드 메뉴 시작 -->
        <div class="side">
          <!-- '나의 계정' 섹션 -->
          <div class="menu-section">
            <div class="menu-title" style="border-bottom: 1px solid #000;">나의 계정</div>
            <div class="menu-item"  style="border-bottom: 1px solid #000;">
              개인정보 수정 및 정보<br />주문내역
            </div>
          </div>
      
          <!-- '혜택' 섹션 -->
          <div class="menu-section">
            <div class="menu-title"  style="border-bottom: 1px solid #000;">혜택</div>
            <div class="menu-item">
              등급 정보 및 혜택<br />쿠폰함
            </div>
          </div>
      
          <!-- 회원 탈퇴 버튼 -->
          <div class="secession-button">
            <div class="menu-item">회원탈퇴</div>
          </div>
        </div>
        <!-- 통합된 사이드 메뉴 끝 -->
      
        <!-- 내 정보 영역 시작 -->
        <div class="side-2">
          <!-- 내 정보 상단 박스 -->
          <div class="myinformation-blank">
            <div class="menu-title">내 정보</div>
          </div>
      
          <!-- 내 정보 리스트 -->
          <div class="myinformation">
            <div class="myinformation-list">
              <!-- 성명 -->
              <div class="info-item">
                <div class="info-title">성명<input type="text"></div>
                <div class="info-content"></div>
              </div>
      
              <!-- 아이디 -->
              <div class="info-item">
                <div class="info-title">아이디<input type="text"></div>
                <div class="info-content"></div>
              </div>
      
              <!-- 비밀번호 -->
              <div class="info-item">
                <div class="info-title">비밀번호<input type="text"></div>
                <div class="frame-wrapper">
                  <div class="change-password">
                    비밀번호 변경하기
                  </div>
                </div>
              </div>
      
              <!-- 주소 -->
              <div class="info-item">
                <div class="info-title">주소 <input type="text"></div>
                <div class="info-content"></div>
              </div>
      
              <!-- 전화번호 -->
              <div class="info-item">
                <div class="info-title">전화번호 <input type="text"></div>
                <div class="info-content"></div>
              </div>
      
              <!-- 이메일 -->
              <div class="info-item">
                <div class="info-title">이메일<input type="text"></div>
                <div class="info-content"></div>
              </div>
      
              <!-- 회원등급 -->
              <div class="info-item">
                <div class="info-title">회원등급<input type="text"></div>
                <div class="info-content"></div>
              </div>
      
              <!-- 성별 -->
              <div class="info-item">
                <div class="info-title">성별<input type="text"></div>
                <div class="info-content"></div>
              </div>
            </div>
          </div>
        </div>
        <!-- 내 정보 영역 끝 -->
      </div>
      









      <footer class="footer">
        <div class="top-3">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-12">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-12">전제민</div>
            <div class="text-wrapper-12">김용담</div>
            <div class="text-wrapper-12">이현선</div>
            <div class="text-wrapper-12">정주희</div>
            <div class="text-wrapper-12">조석현</div>
          </div>
        </div>
        <div class="url-wrapper"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
    </div>
  </body>
</html>