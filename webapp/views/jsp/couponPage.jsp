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

    <style>
      /* 기본 라디오 버튼 숨기기 */
      .hidden-radio {
        display: none;
      }
    
      /* 커스텀 라디오 버튼 스타일 */
      .custom-radio {
        display: inline-block;
        width: 25px; /* 라디오 버튼 크기 */
        height: 25px; /* 라디오 버튼 크기 */
        border-radius: 50%; /* 동그란 모양 */
        border: 2px solid #ccc;
        cursor: pointer;
        position: relative;
      }
    
      /* 라디오 버튼 선택 시 스타일 */
      .hidden-radio:checked + .custom-radio {
        background-color: #edf8e8; /* 선택된 버튼 배경색 */
        border-color: #12690b; /* 선택된 버튼 테두리 */
      }
    
      /* 라벨을 클릭했을 때 시각적으로 변화하도록 설정 */
      .custom-radio::after {
        content: '';
        width: 15px;
        height: 15px;
        background-color: #12690b;
        border-radius: 50%;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        opacity: 0;
        transition: opacity 0.2s;
      }
    
      .hidden-radio:checked + .custom-radio::after {
        opacity: 1;
      }
    </style>
  </head>

  
  <body>
    <div class="coupon-page">
     
     
     <%@ include file="/views/jsp/header.jsp" %>
     
     
     <div class="body">
      <div class="coupon-page-blank">
        <div class="typography-row">
          <div class="header-2">내 쿠폰함</div>
        </div>
      </div>
      <div class="coupon-list">
        <!-- 첫 번째 쿠폰 -->
        <div class="div-2">
          <div class="frame">
            <input type="radio" name="coupon" id="coupon1" value="럭키박스 할인쿠폰" class="hidden-radio">
            <label for="coupon1" class="custom-radio"></label>
          </div>
          <div class="coupon">
            <div class="title">
              <div class="text-wrapper-7">럭키박스<br/>할인쿠폰</div>
            </div>
            <div class="text-wrapper-7" style="margin-left: 245px;">10% 할인 쿠폰</div>
          </div>
        </div>        
        <!-- 두 번째 쿠폰 -->
        <div class="div-2">
          <div class="frame">
            <input type="radio" name="coupon" id="coupon2" value="깜짝 쿠폰" class="hidden-radio">
            <label for="coupon2" class="custom-radio"></label>
          </div>
          <div class="coupon">
            <div class="title-2">
              <div class="text-wrapper-7">깜짝 쿠폰</div>
            </div>
            <div class="text-wrapper-7" style="margin-left: 245px;">5% 할인 쿠폰</div>
          </div>
        </div>        
        <!-- 세 번째 쿠폰 -->
        <div class="div-2">
          <div class="frame">
            <input type="radio" name="coupon" id="coupon3" value="신규회원 쿠폰" class="hidden-radio">
            <label for="coupon3" class="custom-radio"></label>
          </div>
          <div class="coupon">
            <div class="title-3">
              <div class="text-wrapper-7">신규회원<br />쿠폰</div>
            </div>
            <div class="text-wrapper-7" style="margin-left: 245px;">15% 할인 쿠폰</div>
          </div>
        </div>
        <!-- 네 번째 쿠폰 -->
        <div class="div-2">
          <div class="frame">
            <input type="radio" name="coupon" id="coupon4" value="추석 이벤트 쿠폰" class="hidden-radio">
            <label for="coupon4" class="custom-radio"></label>
          </div>
          <div class="coupon">
            <div class="title-4">
              <div class="text-wrapper-7">추석 이벤트 쿠폰</div>
            </div>
            <div class="text-wrapper-7" style="margin-left: 245px;">20% 할인 쿠폰</div>
          </div>
        </div>
      </div>
    
    
        <button class="check-button"><a href="paymentinformationpage.bo"><div class="text-wrapper-8">확인</div></a></button>
      </div>

      <script>
 function confirmCouponSelection() {
    // 선택된 라디오 버튼 가져오기
    const selectedCoupon = document.querySelector('input[name="coupon"]:checked');
 }
      </script>
  
  	<%@ include file="/views/jsp/footer.jsp" %>
  
  
    </div>
  </body>
</html>