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
    <link rel="stylesheet" href="<%=path %>/views/css/mypageguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/mypagestyle.css" />
  </head>
  <body>
    <div class="my-page">


	<%@ include file="/views/jsp/header.jsp" %>








<div class="body">
        <!-- 통합된 사이드 메뉴 시작 -->
        <div class="side">
          <!-- '나의 계정' 섹션 -->
          <div class="menu-section">
            <div class="menu-title" style="border-bottom: 1px solid #000;">나의 계정</div>
            <div class="menu-item">
              개인정보 수정 및 정보
            </div>
            <div class="menu-item" style="border-bottom: 1px solid #000;">
            	<a href="orderpage.bo">
            		주문내역
            	</a>
            </div>
          </div>
      
          <!-- '혜택' 섹션 -->
          <div class="menu-section">
            <div class="menu-title"  style="border-bottom: 1px solid #000;">혜택</div>
            <div class="menu-item">
            	<a href="mygradepage.bo">
              		등급 정보 및 혜택
              	</a>
            </div>
            <div classs="menu-item">
            	<a href="mycouponpage.bo">
            		쿠폰함
            	</a>
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






	<%@ include file="/views/jsp/footer.jsp" %>


      
    </div>
  </body>
</html>