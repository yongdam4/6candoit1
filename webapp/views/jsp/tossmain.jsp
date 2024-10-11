<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
%> 
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<%=path %>/views/css/tosscss.css" />
    <title>결제위젯 샘플</title>
  </head>
  <body>
    <div class="wrapper w-100">
      <div class="max-w-540 w-100">
        <div id="payment-method" class="w-100"></div>
        <div id="agreement" class="w-100"></div>
        <div class="btn-wrapper w-100">
          <button id="payment-request-button" class="btn primary w-100">결제하기</button>
        </div>
      </div>
    </div>
    <script type="module" src="../js/index.js"></script>
    
  </body>
</html>