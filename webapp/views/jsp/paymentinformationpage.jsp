<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%> 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/paymentinformationpagestyle.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/paymentinformationpageguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/global.css">
    <title>Document</title>
  </head>
  <body>
    <div class="payment-information">
  
  		<%@ include file="/views/jsp/header.jsp" %>
  
  
  
  
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
               	
              </div>
                <div class="coupon-choice-button">
                <div class="text-wrapper-16"><button class="popular-btn"><a href="couponPage.jsp" method="post">선택하기</a></button></div>
              </div>
            </div>
          </div>
          <div class="div-2">
            <div class="text-wrapper-12">총 결제 금액</div>
            <div class="text-wrapper-13">30,000원-불러오기</div>
          </div>
        </div>
        <div class="payment-button"><div class="text-wrapper-17"><input type="button" value="결제하기">토스 결제창 연걸</div></div>
      </div>
 
 
 	<%@ include file="/views/jsp/footer.jsp" %>
 
 
 
    </div>
  </body>
</html>