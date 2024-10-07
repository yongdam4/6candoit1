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
  <link rel="stylesheet" href="<%=path %>/views/css/style2.css" />
  <link rel="stylesheet" href="<%=path %>/views/css/styleguide2.css" />
</head>
<body>
  <div class="contact-page">
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
      <table class="contact-table">
        <tr>
          <td colspan="2" class="text-blank-wrapper">
            <div class="text-blank"><div class="text-wrapper-7">문의</div></div>
          </td>
        </tr>
        <tr>
          <td class="label">제&nbsp;&nbsp;목</td>
          <td class="input">
            <input type="text" class="input-field" placeholder="제목을 입력하세요">
          </td>
        </tr>
        <tr>
          <td class="label">작성자</td>
          <td class="input">
            <input type="text" class="input-field" placeholder="작성자 이름">
          </td>
        </tr>
        <tr>
          <td class="label">문의종류</td>
          <td class="input">
            <label><input type="radio" name="inquiry-type" value="배송"> 배송</label>
            <label><input type="radio" name="inquiry-type" value="취소/반품/교환"> 취소/반품/교환</label>
            <label><input type="radio" name="inquiry-type" value="주문/결제"> 주문/결제</label>
          </td>
        </tr>
        <tr>
          <td class="label">내&nbsp;&nbsp;용</td>
          <td class="input">
            <textarea class="textarea-field" placeholder="문의 내용을 입력하세요"></textarea>
          </td>
        </tr>
        <tr>
          <td class="label">비밀글</td>
          <td class="input">
            <label><input type="checkbox" name="secret"> *관리자만 열람할 수 있습니다.</label>
          </td>
        </tr>
        <tr>
          <td colspan="2" class="input">
            <button class="inquiry-button">등록하기</button>
          </td>
        </tr>
      </table>
    </div>

    <footer class="footer">
      <div class="top-2">
        <div class="company"><div class="foodpia">푸드피아</div></div>
        <div class="ceo"><div class="text-wrapper-15">대표자</div></div>
        <div class="worker">
          <div class="text-wrapper-15">전제민</div>
          <div class="text-wrapper-15">김용담</div>
          <div class="text-wrapper-15">이현선</div>
          <div class="text-wrapper-15">정주희</div>
          <div class="text-wrapper-15">조석현</div>
        </div>
      </div>
      <div class="url-wrapper"><p class="url">CompanyName @ 202X All rights reserved.</p></div>
    </footer>
  </div>
</body>
</html>