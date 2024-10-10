<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/globals.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/style.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/styleguide.css" />
  </head>
  <body>
    <div class="coupon-page">
     
     
     <%@ include file="/views/jsp/header.jsp" %>
     
     
      <div class="body">
        <div class="coupon-page-blank">
          <div class="typography-row"><div class="header-2">내 쿠폰함</div></div>
        </div>
        <div class="coupon-list">
          <div class="div-2">
            <div class="frame">
              <button class="view">      
              </button>
            </div>
            <div class="coupon">
              <div class="title">
                <div class="text-wrapper-7">럭키박스<br/>할인쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">10% 할인 쿠폰</div>
            </div>
          </div>        
          <div class="div-2">
            <div class="frame">
              <button class="view1">             
              </button>
            </div>
            <div class="coupon">
              <div class="title-2">
                <div class="text-wrapper-7">깜짝 쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">5% 할인 쿠폰</div>
            </div>
          </div>        
          <div class="div-2">
            <div class="frame">
              <button class="view2">
              </button>
            </div>
            <div class="coupon">
              <div class="title-3">
                <div class="text-wrapper-7">신규회원<br />쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">15% 할인 쿠폰</div>
            </div>
          </div>
        
          <div class="div-2">
            <div class="frame">
              <button class="view3">
               
              </button>
            </div>
            <div class="coupon">
              <div class="title-4">
                <div class="text-wrapper-7">추석 이벤트 쿠폰</div>
              </div>
              <div class="text-wrapper-7" style="margin-left: 245px;">20% 할인 쿠폰</div>
            </div>
          </div>
        </div>
        <button class="check-button"><a href="paymentinformationpage.jsp" method="post"><div class="text-wrapper-8">확인</div></a></button>
      </div>
  
  	<%@ include file="/views/jsp/footer.jsp" %>
  
  
    </div>
  </body>
</html>