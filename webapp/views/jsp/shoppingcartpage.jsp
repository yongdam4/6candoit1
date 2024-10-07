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
    <link rel="stylesheet" href="<%=path %>/views/css/spcpstyle.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/spcpstyleguide.css" />
  </head>
  <body>
    <div class="shopping-cart-page">
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
        <div class="div-2"><div class="text-wrapper-7">장바구니</div></div>
        <div class="body-2">
          <div class="cart-product-list">
            <div class="product">
              <img class="melon" src="img/melon-2.png" />
              <div class="product-inform">
                <div class="text-wrapper-8">메론(한국산)/농심</div>
                <div class="frame">
                  <div class="flexcontainer">
                    <p class="text">
                      <span class="span"
                        >상품코드&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;000-0000000<br
                      /></span>
                    </p>
                    <p class="text">
                      <span class="span"
                        >판매단위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;낱개
                        박스<br
                      /></span>
                    </p>
                    <p class="text">
                      <span class="span"
                        >중량/
                        용량&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;850g /
                        1박스 당 3개</span
                      >
                    </p>
                  </div>
                </div>
                <div class="overlap-group-wrapper">
                  <div class="overlap-group">
                    <div class="plus-button"><div class="text-wrapper-9">+</div></div>
                    <div class="minus-button"><div class="text-wrapper-10">-</div></div>
                    <div class="product-quantity"><div class="text-wrapper-11">1</div></div>
                  </div>
                </div>
                <div class="price">
                  <div class="text-wrapper-12">53%</div>
                  <div class="text-wrapper-13">12,000원</div>
                </div>
              </div>
            </div>
            <div class="product">
              <img class="melon" src="img/melon-2.png" />
              <div class="product-inform">
                <div class="text-wrapper-8">메론(한국산)/농심</div>
                <div class="frame">
                  <div class="flexcontainer">
                    <p class="text">
                      <span class="span"
                        >상품코드&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;000-0000000<br
                      /></span>
                    </p>
                    <p class="text">
                      <span class="span"
                        >판매단위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;낱개
                        박스<br
                      /></span>
                    </p>
                    <p class="text">
                      <span class="span"
                        >중량/
                        용량&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;850g /
                        1박스 당 3개</span
                      >
                    </p>
                  </div>
                </div>
                <div class="overlap-group-wrapper">
                  <div class="overlap-group">
                    <div class="plus-button"><div class="text-wrapper-9">+</div></div>
                    <div class="minus-button"><div class="text-wrapper-10">-</div></div>
                    <div class="product-quantity"><div class="text-wrapper-11">1</div></div>
                  </div>
                </div>
                <div class="price">
                  <div class="text-wrapper-12">53%</div>
                  <div class="text-wrapper-13">12,000원</div>
                </div>
              </div>
            </div>
          </div>
          <div class="total-payment">
            <div class="payment-information">
              <div class="payment-amount-text"><div class="text-wrapper-14">결제금액</div></div>
              <div class="div-3">
                <div class="div-wrapper-3"><div class="text-wrapper-15">상품금액</div></div>
                <div class="div-wrapper-4"><div class="text-wrapper-16">12,000원</div></div>
              </div>
              <div class="div-3">
                <div class="div-wrapper-3"><div class="text-wrapper-15">상품할인금액</div></div>
                <div class="div-wrapper-4"><div class="text-wrapper-17">1,200원</div></div>
              </div>
              <div class="div-3">
                <div class="div-wrapper-3"><div class="text-wrapper-15">결제예정금액</div></div>
                <div class="div-wrapper-4"><div class="text-wrapper-16">10,800원</div></div>
              </div>
            </div>
            <div class="buy-button"><div class="text-wrapper-18"><button class="popular-btn"><a href="paymentinformationpage.jsp" method="post">구매하기</a></button></div></div>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="top-2">
          <div class="company"><div class="foodpia">푸드피아</div></div>
          <div class="ceo"><div class="text-wrapper-19">대표자</div></div>
          <div class="worker">
            <div class="text-wrapper-19">전제민</div>
            <div class="text-wrapper-19">김용담</div>
            <div class="text-wrapper-19">이현선</div>
            <div class="text-wrapper-19">정주희</div>
            <div class="text-wrapper-19">조석현</div>
          </div>
        </div>
        <div class="bottom"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
      </footer>
    </div>
  </body>
</html>