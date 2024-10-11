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
    <link rel="stylesheet" href="<%=path %>/views/css/CustomerInquiry1.css">
    
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
    <div class="member-management">
    <form action="">
      <header class="header">
        <div class="text-wrapper">관리자 페이지</div>
        <nav class="menu">
          <button type="button" class="head-button"
						onClick="location.href='memberdel.do'">회원관리</button>
					<button type="button" class="head-button"
						onClick="location.href='ordermem.do'">주문관리</button>
					<button type="button" class="head-button"
						onClick="location.href='productmem.do'">상품관리</button>
					<button type="button" class="head-button"
						onClick="location.href='customer.do'">고객지원</button>
					<button type="button" class="head-button"
						onClick="location.href='MainPage.jsp'">메인페이지</button>
        </nav>
      </header>

      <div class="body">
        <div class="text-wrapper-2">고객지원</div>

        <div class="search-bar">
          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
              종류
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="#" onclick="changeDropdownText('아이디')">아이디</a></li>
              <li><a class="dropdown-item" href="#" onclick="changeDropdownText('제목')">제목</a></li>
            </ul>
          </div>
          <input class="form-control" type="text" placeholder="검색어를 입력하세요" />
          <button type="button" class="btn btn-secondary search-button">검색</button>
        </div>

        <div class="bottom">
          <table class="table table-striped table-bordered member-table">
            <thead>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>아이디</th>
                <th>작성일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>아 배송 개느리네</td>
                <td>jjhim1234</td>
                <td>2024-09-14 18:32:43</td>
              </tr>
            </tbody>
          </table>
          <div class="button-container">
            <button type="button" class="btn btn-primary">답변작성</button>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
