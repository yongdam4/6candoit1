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
    <link rel="stylesheet" href="<%=path %>/views/css/mycouponpageguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/mycouponpagestyle.css" />
  </head>
  <body>
    <div class="my-coupon-page">
      <div class="header">
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
      </div>

      <div class="body">
    <div class="body">
        <div class="side">
            <div class="mypage-navbar">
                <div class="view">
                    <div class="text-wrapper-7" onclick="">등급 정보 및 혜택</div>
                </div>
                <div class="view-2">
                    <div class="text-wrapper-8" onclick="">쿠폰함</div>
                </div>
                <div class="overlap">
                    <div class="view-3">
                        <div class="text-wrapper-9">혜택</div>
                    </div>
                    <div class="frame-wrapper">
                        <div class="frame">
                            <div class="view-4">
                                <div class="text-wrapper-7" onclick="">개인정보 수정 및 정보</div>
                            </div>
                            <div class="view-5">
                                <div class="text-wrapper-10" onclick="">주문 내역</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="overlap-group">
                    <div class="view-6">
                        <div class="text-wrapper-11">나의 계정</div>
                    </div>
                    <img class="frame-2" src="img/frame-693.svg" />
                </div>
                <img class="frame-3" src="img/frame-694.svg" />
            </div>
            <div class="sesscsion-button">
                <div class="text-wrapper-12" onclick="">회원탈퇴</div>
            </div>
        </div>
        <div class="mid">
          <div class="coupon-blank">
              <div class="text-wrapper-13">쿠폰함</div>
          </div>
          <div class="coupon-main">
              <div class="coupon-list">
                  <!-- 럭키박스 특별 쿠폰 -->
                  <div class="coupon-group">
                      <div class="coupon-box luckybox-special">
                          <div class="text-wrapper-14">럭키박스특별쿠폰</div>
                      </div>
                      <div class="coupon-box-2 luckybox-special-2">
                          <div class="frame-4">
                              <div class="text-wrapper-15">10% 할인 쿠폰-불러오기</div>
                          </div>
                      </div>
                  </div>
      
                  <!-- 추석 이벤트 쿠폰 -->
                  <div class="coupon-group">
                      <div class="coupon-box holiday-event-coupon">
                          <p class="text-wrapper-14">추석이벤트 쿠폰</p>
                      </div>
                      <div class="coupon-box-2 holiday-event-coupon-2">
                          <div class="frame-4">
                              <div class="text-wrapper-15">5% 할인 쿠폰-불러오기</div>
                          </div>
                      </div>
                  </div>
      
                  <!-- 신규 회원 쿠폰 -->
                  <div class="coupon-group">
                      <div class="coupon-box new-member-coupon">
                          <div class="text-wrapper-14">신규회원쿠폰</div>
                      </div>
                      <div class="coupon-box-2 new-member-coupon-2">
                          <div class="frame-5">
                              <div class="text-wrapper-15">10% 할인 쿠폰-불러오기</div>
                          </div>
                      </div>
                  </div>
              </div>
              <img class="coupon-inline-img" src="img/coupon-inline-img.svg" />
          </div>
      </div>
      
    </div>
      </div>

      </body>


      <footer class="footer">
        <div class="top-2">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-16">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-16">전제민</div>
            <div class="text-wrapper-16">김용담</div>
            <div class="text-wrapper-16">이현선</div>
            <div class="text-wrapper-16">정주희</div>
            <div class="text-wrapper-16">조석현</div>
          </div>
        </div>
        <div class="bottom"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
  </body>
</html>