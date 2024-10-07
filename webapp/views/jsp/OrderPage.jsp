<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String path = request.getContextPath();
%>   
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/globals4.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/styleguide4.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/style4.css" />
  </head>
  <body>
    <div class="order-page">
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
        <div class="order-page-blank"><div class="text-wrapper-7">주문내역 페이지</div></div>
        <div class="my-information">
          <div class="name">
            <div class="name-2"><div class="text-wrapper-8">이름</div></div>
            <div class="name-3"><div class="text-wrapper-9">이름</div></div>
          </div>
          <div class="address">
            <div class="address-2"><div class="text-wrapper-8">주소</div></div>
            <div class="div-wrapper-3"><p class="p">xxx시 xxx동 xxx아파트 xxx동 xxx호</p></div>
          </div>
          <div class="coupon">
            <div class="coupon-blank"><div class="text-wrapper-10">쿠폰함</div></div>
          </div>
        </div>
        <div class="mid">
          <div class="order-information">
            <div class="div-wrapper-4"><div class="text-wrapper-11">내 주문정보</div></div>
            <div class="div-wrapper-4"><div class="text-wrapper-12">배송 정보</div></div>
          </div>
          <div class="order">
            <div class="order-2">
              <div class="order-product">
                <div class="order-product-img"><img class="melon" src="img/melon-2.png" /></div>
                <div class="order-product-2">
                  <div class="order-detail">
                    <div class="order-detail-2"><p class="text-wrapper-13">구매일 : 20xx - xx - xx</p></div>
                  </div>
                  <div class="melon-2"><div class="text-wrapper-14">메론(한국산)/농심</div></div>
                  <div class="sale-price">
                    <div class="div-wrapper-3"><div class="text-wrapper-15">53%</div></div>
                    <div class="div-wrapper-3"><div class="text-wrapper-16">12,000원</div></div>
                  </div>
                  <div class="quantity">
                    <div class="div-wrapper-5"><div class="text-wrapper-17">-</div></div>
                    <div class="status"><div class="text-wrapper-18">2</div></div>
                    <div class="div-wrapper-5"><div class="text-wrapper-19">+</div></div>
                  </div>
                </div>
              </div>
              <div class="order-detail-3"><div class="text-wrapper-20">주문 상세 정보&nbsp;&nbsp;&gt;</div></div>
            </div>
            <div class="delivery-information">
              <div class="div-wrapper-6"><p class="text-wrapper-21">결제 방법 : 무통장 입금</p></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">결제 금액 : 24000원</div></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">배송 방법 : @@배송</div></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">배송지 : 서울 강남구</div></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">배송 상태 : 준비중</div></div>
            </div>
          </div>
          <div class="order">
            <div class="order-2">
              <div class="order-product">
                <div class="order-product-img"><img class="melon" src="img/melon-2.png" /></div>
                <div class="order-product-2">
                  <div class="order-detail">
                    <div class="order-detail-2"><p class="text-wrapper-13">구매일 : 20xx - xx - xx</p></div>
                  </div>
                  <div class="melon-2"><div class="text-wrapper-14">메론(한국산)/농심</div></div>
                  <div class="sale-price">
                    <div class="div-wrapper-3"><div class="text-wrapper-15">53%</div></div>
                    <div class="div-wrapper-3"><div class="text-wrapper-16">12,000원</div></div>
                  </div>
                  <div class="quantity">
                    <div class="div-wrapper-5"><div class="text-wrapper-17">-</div></div>
                    <div class="status"><div class="text-wrapper-18">2</div></div>
                    <div class="div-wrapper-5"><div class="text-wrapper-19">+</div></div>
                  </div>
                </div>
              </div>
              <div class="order-detail-3"><div class="text-wrapper-22">주문 상세 정보&nbsp;&nbsp;&gt;</div></div>
            </div>
            <div class="delivery-information">
              <div class="div-wrapper-6"><p class="text-wrapper-21">결제 방법 : 무통장 입금</p></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">결제 금액 : 24000원</div></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">배송 방법 : @@배송</div></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">배송지 : 서울 강남구</div></div>
              <div class="div-wrapper-6"><div class="text-wrapper-21">배송 상태 : 준비중</div></div>
            </div>
          </div>
        </div>
        <!-- 추가된 글 -->
    <div class="info-section">
      <div class="info-title">취소/반품/교환 신청 전 확인해주세요!!</div>
      <div class="info-content">
        <p><span class="highlight">취소</span><br />
        해당 상품 취소 시 수수료가 발생할 수 있으며, 수수료는 구매 금액에서 5%입니다.</p>

        <p><span class="highlight">반품</span><br />
        상품 수령 후 7일 이내에 반품 신청을 해야만 정상적으로 반품이 됩니다.<br />
        상품이 출고된 이후에는 배송 완료 후 반품 상품을 회수합니다.<br />
        반품 시에 반품 수수료가 발생할 수 있으며, 수수료는 3000원입니다.</p>

        <p><span class="highlight">교환</span><br />
        상품의 교환 신청은 고객센터로 문의해 주세요.</p>

        <p><a href="문의하기 링크">문의하기</a></p>
      </div>
    </div>
      <footer class="footer">
        <div class="top-2">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="CEO">대표자</div></div>
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