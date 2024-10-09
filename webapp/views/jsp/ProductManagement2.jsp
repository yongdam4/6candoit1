<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/globals.css"> 
    <link rel="stylesheet" href="<%=path %>/views/css/ProductManagement2.css">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom JavaScript -->
    <script>
      function changeDropdownText(selectedText) {
        document.getElementById("dropdownMenuButton1").innerText = selectedText;
      }
    </script>
  </head>
  <body>
    <div class="product-management">
    <form action="">
      <header class="header">
        <div class="admin-page">
          <div class="text-wrapper">관리자 페이지</div>
        </div>
        <nav class="menu">
          <button type="button" class="head-button" onClick="location.href='MemberManagement.jsp'">회원관리</button>
          <button type="button" class="head-button" onClick="location.href='OrderManagement.jsp'">주문관리</button>
          <button type="button" class="head-button" onClick="location.href='ProductManagement1.jsp'">상품관리</button>
          <button type="button" class="head-button" onClick="location.href='CustomerInquiry1.jsp'">고객지원</button>
          <button type="button" class="head-button"
						onClick="location.href='../../MainPage.jsp'">메인페이지</button>
        </nav>
      </header>

      <div class="body">
        <div class="top-2">
          <div class="text-wrapper-2">상품추가</div>
        </div>

        <!-- 상품추가 문구 아래에 테이블 배치 -->
        <div class="bottom">
          <table class="table table-striped table-bordered product-table">
            <tbody>
              <tr>
                <td>상품이미지</td>
                <td class="input-cell"><input type="text" placeholder="이미지 삽입"></td>
                <td class="button-cell text-center"><button class="btn btn-primary">삽입</button></td>
              </tr>
              <tr>
                <td>상품코드</td>
                <td colspan="2" class="input-cell"><input type="text" placeholder="ex) 2409051537(년월일시분)"></td>
              </tr>
              <tr>
                <td>상품명</td>
                <td colspan="2" class="input-cell"><input type="text" placeholder="상품명 입력"></td>
              </tr>
              <tr>
                <td>카테고리</td>
                <td colspan="2">
                  <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="border: 1px solid;">
                      종류
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                      <li><a class="dropdown-item" href="#" onclick="changeDropdownText('채소')">채소</a></li>
                      <li><a class="dropdown-item" href="#" onclick="changeDropdownText('고기')">고기</a></li>
                      <li><a class="dropdown-item" href="#" onclick="changeDropdownText('유제품')">유제품</a></li>
                      <li><a class="dropdown-item" href="#" onclick="changeDropdownText('간식')">간식</a></li>
                      <li><a class="dropdown-item" href="#" onclick="changeDropdownText('냉동')">냉동</a></li>
                      <li><a class="dropdown-item" href="#" onclick="changeDropdownText('물')">물</a></li>  
                    </ul>
                  </div>
                </td>
              </tr>
              <tr>
                <td>설명</td>
                <td colspan="2" class="input-cell"><input type="text" placeholder="상품에 대한 설명"></td>
              </tr>
              <tr>
                <td>판매가격</td>
                <td colspan="2" class="input-cell"><input type="text" placeholder="가격"></td>
              </tr>
              <tr>
                <td>수량</td>
                <td colspan="2" class="input-cell"><input type="text" placeholder="수량 입력"></td>
              </tr>
              <tr>
                <td colspan="3" class="text-end">
                  <button class="btn btn-success">상품추가</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
