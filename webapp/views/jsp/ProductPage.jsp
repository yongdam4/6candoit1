<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>     
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/globals3.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/styleguide3.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/style3.css" />
  </head>
  <body>
    <div class="product-page">

	
	<%@ include file="/views/jsp/header.jsp" %>

       <div class="body">
        <div class="product-infom">
          <img class="melon" src="img/melon-1.png" />
          <div class="product-inform">
            <div class="frame"><div class="text-wrapper-7">멜론(한국산)</div></div>
            <div class="frame-2"><div class="text-wrapper-8">메론(한국산)/농심 , 850g</div></div>
            <div class="frame-3"><div class="text-wrapper-9">수량 : 3</div></div>
            <div class="frame-4"><div class="text-wrapper-10">가격: 16,800</div></div>
            <div class="frame-5"><div class="text-wrapper-11">총가격: 16,800</div></div>
            <div class="add-button">

              <button class="typography-row" onclick="location.href='<%=path %>/MainPage.jsp'"><div class="header-2" >장바구니 담기</div></button>


            </div>
          </div>
        </div>
        <div class="product-explaination">
          <div class="text-wrapper-12">달고 맛있는 메론!</div>
          <p class="p">고창에서 나고 자란 국산 메론입니다.</p>
        </div>
        <div class="inquiry-list">
          <div class="table">
            <div class="top-2">
              <div class="frame-6"><div class="text-wrapper-13">번호</div></div>
              <div class="frame-7"><div class="text-wrapper-14">문의종류</div></div>
              <div class="frame-8"><div class="text-wrapper-14">제목</div></div>
              <div class="frame-9"><div class="text-wrapper-15">작성자</div></div>
              <div class="frame-10"><div class="text-wrapper-16">작성일</div></div>
            </div>
            <div class="mid">
              <div class="inquiry-number"><div class="text-wrapper-17">1</div></div>
              <div class="inquiry-type"><div class="text-wrapper-18">배송</div></div>
              <div class="inquiry-title"><div class="text-wrapper-19">아 배송 개느리네 진짜</div></div>
              <div class="inquiry-author"><div class="text-wrapper-20">jjm****</div></div>
              <div class="inquiry-creation"><div class="text-wrapper-21">2024-09-05</div></div>
            </div>
            <div class="bottom"></div>
          </div>
        </div>

       <div class="inquiry-button"><button class="real-button" onclick="location.href='<%=path %>/views/jsp/ContactPage.jsp'"><div class="text-wrapper-22">문의하기</div></button></div>
 	</div>
 	</div>
 
		 <%@ include file="/views/jsp/footer.jsp" %>
 
 
    </div>
  </body>
</html>