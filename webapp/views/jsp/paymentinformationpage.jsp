<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="../css/paymentinformationpagestyle.css" />
    <link rel="stylesheet" href="../css/paymentinformationpageguide.css" />
    <link rel="stylesheet" href="../global.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  </head>
  <body>
    <div class="payment-information">
      <header class="header">
        <div class="top">
          <div class="home-button"><div class="text-wrapper" onclick="">푸드피아</div></div>
          <div class="search-bar">
            <img class="search-icon" src="img/img-search-bar.svg" alt="Search-bar SVG" />
        <div class="search-input-text">
                <input type="text" placeholder="검색어를 입력하세요.">
        </div>
          </div>
          <div class="cart-logout">
            <div class="shoppin-cart-button">
              <img class="shopping-cart-icon" src="img/img-shopping-cart-icon.svg" />
              <div class="div-wrapper"><div class="text-wrapper-2" onclick="">장바구니</div></div>
            </div>
            <div class="shoppin-cart-button-2">
              <img class="my-page-icon" src="img/img-my-page-icon.svg" />
              <div class="div-wrapper"><div class="text-wrapper-3" onclick="">내 정보</div></div>
            </div>
            <div class="logout-button">
              <img class="login-icon" src="img/login-icon.svg" />
              <div class="login-text"><div class="text-wrapper-4" onclick="">로그아웃</div></div>
            </div>
          </div>
        </div>
        <div class="menu">
          <div class="category-button">
            <img class="img" src="img/menu.svg" />
            <div class="text-wrapper-5" onclick="">카테고리</div>
          </div>
          <div class="div-wrapper-2"><div class="text-wrapper-6" onclick="">이벤트</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6" onclick="">인기상품</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6" onclick="">럭키박스</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6" onclick="">문의</div></div>
          <div class="div-wrapper-2"><div class="text-wrapper-6" onclick="">관리자</div></div>
        </div>
      </header>
      <div class="body">
        <div class="typography-row-wrapper">
          <div class="typography-row"><div class="header-2">결제 정보 입력</div></div>
        </div>
        <div class="mid">
          <div class="name"><div class="text-wrapper-7">이름</div></div>
          <div class="name-text">
            <input type="text" class="name" placeholder="이름 입력칸">
          </div>
          <div class="phone"><div class="text-wrapper-9">휴대전화</div></div>
          <div class="phone-text">
            <input type="text" class="phone" placeholder="휴대전화 입력칸">
        </div>
          <div class="address"><div class="text-wrapper-10">집주소</div></div>
          <div class="address-text">
            <input type="text" placeholder="집주소 입력칸">
          </div>
          <div class="payment-product">
            <br>
            <div class="view"><p class="p">총 구매 물품 개수 2-불러오기</p></div>
            <div class="view-2"><div class="text-wrapper-11">메론(한국산)/농심 , 850g/ 3개-불러오기</div></div>
          </div>
          <div class="div-2">
            <div class="text-wrapper-12">총 구매 금액</div>
            <div class="text-wrapper-13">30,000원-불러오기</div>
          </div>
          <div class="div-2">
            <div class="text-wrapper-14">할인쿠폰</div>
            <div class="coupon-choice-blank">
              <div class="text-wrapper-15">
                선택 안됨 -불러오기
              </div>
                <div class="coupon-choice-button">
                <div class="text-wrapper-16"><input type="button" name="" id="" value="버튼" onclick=""></div>
              </div>
            </div>
          </div>
          <div class="div-2">
            <div class="text-wrapper-12">총 결제 금액</div>
            <div class="text-wrapper-13">30,000원-불러오기</div>
          </div>
        </div>
        <div class="payment-button"><div class="text-wrapper-17"><input type="button" value="결제하기"></div></div>
      </div>
      <footer class="footer">
        <div class="top-2">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-18">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-18">전제민</div>
            <div class="text-wrapper-18">김용담</div>
            <div class="text-wrapper-18">이현선</div>
            <div class="text-wrapper-18">정주희</div>
            <div class="text-wrapper-18">조석현</div>
          </div>
        </div>
        <div class="bottom"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
    </div>
  </body>
</html>