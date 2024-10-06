<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=path %>/views/css/globals.css"> 
    <link rel="stylesheet" href="<%=path %>/views/css/AdminLoginPage.css">
  </head>
  <body>
  <form action="<%=path %>/adminLogin.do" method="post">
    <div class="admin-login-page">
      <header class="header">
        <div class="top">
          <div class="text-wrapper">관리자 페이지</div>
        </div>
      </header>
      <div class="body">
        <div class="div-wrapper"> 
          <div class="div">관리자 로그인</div>
        </div>
        <div class="mid">
          <input type="text" name="adminId" placeholder="관리자 아이디 입력" class="login-input">
          <input type="password" name="adminPwd" placeholder="관리자 비밀번호 입력" class="login-input">
        </div>
        <div class="bottom">
          <input type="submit" value="로그인" class="login-button">
        </div>
      </div>
    </div>
  </form>
  </body>
</html>
