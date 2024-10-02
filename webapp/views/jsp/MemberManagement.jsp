<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="/views/css/globals.css" />
    <link rel="stylesheet" href="/views/css/ProductManagement2.css" />
    
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
  
    <div class="customer-management">
    <form action="admin.do">
      <header class="header">
        <div class="admin-page">
          <div class="text-wrapper">관리자 페이지</div>
        </div>
        <nav class="menu">
          <button class="head-button">회원관리</button>
          <button class="head-button">주문관리</button>
          <button class="head-button">상품관리</button>
          <button class="head-button">고객지원</button>
        </nav>
      </header>

      <div class="body">
        <div class="top-2">
          <div class="text-wrapper-2">고객문의</div>
        </div>

        <div class="bottom">
          <table class="table table-striped table-bordered product-table">
            <tbody>
              <tr>
                <td class="text-center">제목</td>
                <td class="input-cell"><input type="text" value="대충 욕하는 글의 제목"></td>
              </tr>
              <tr>
                <td class="text-center">문의 내용</td>
                <td class="input-cell"><input type="text" value="대충 욕하는 글"></td>
              </tr>
              <tr>
                <td class="text-center" style="vertical-align: middle;">답변 내용</td>
                <td class="input-cell"><textarea style="width: 100%; height: 200px;"></textarea></td>
              </tr>
              <tr>
                <td colspan="2" class="text-end">
                  <button class="btn btn-success">답변작성</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
