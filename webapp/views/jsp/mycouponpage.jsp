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
  
  	<%@ include file="/views/jsp/header.jsp" %>

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
              <img class="coupon-inline-img" src="<%=contextPath%>/views/img/pepicons-print-seedling.svg" />
          </div>
      </div>
      
    </div>
      </div>

      </body>

	<%@ include file="/views/jsp/footer.jsp" %>
   
  </body>
</html>