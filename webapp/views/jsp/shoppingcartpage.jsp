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
  
 	 <%@ include file="/views/jsp/header.jsp" %>
 	 
 	 
      <div class="body">
        <div class="div-2"><div class="text-wrapper-7">장바구니</div></div>
        <div class="body-2">
          <div class="cart-product-list">
            <div class="product">
              <img class="melon" src="views/img/img-image-3.png" />
              <div class="product-inform">
                <div class="text-wrapper-8">완숙 토마토/자연산</div>
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
                        용량&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;950g /
                        1박스 당 8개</span
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
                  <div class="text-wrapper-12">10%</div>
                  <div class="text-wrapper-13">9,890원</div>
                </div>
              </div>
            </div>
            <div class="product">
              <img class="melon" src="views/img/img-melon-1.png" />
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
                  <div class="text-wrapper-12">10%</div>
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
                <div class="div-wrapper-4"><div class="text-wrapper-16">24,190원</div></div>
              </div>
              <div class="div-3">
                <div class="div-wrapper-3"><div class="text-wrapper-15">상품할인금액</div></div>
                <div class="div-wrapper-4"><div class="text-wrapper-17">2,300원</div></div>
              </div>
              <div class="div-3">
                <div class="div-wrapper-3"><div class="text-wrapper-15">결제예정금액</div></div>
                <div class="div-wrapper-4"><div class="text-wrapper-16">21,890</div></div>
              </div>
            </div>
            <div class="buy-button"><div class="text-wrapper-18"><button class="popular-btn"><a href="paymentinformationpage.bo">구매하기</a></button></div></div>
          </div>
        </div>
      </div>
   <%@ include file="/views/jsp/footer.jsp" %>
    </div>
  </body>
</html>