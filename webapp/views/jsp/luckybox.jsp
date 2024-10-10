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
    <link rel="stylesheet" href="<%=path %>/views/css/luckyboxguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/luckyboxstyle.css" />
  </head>
  <body>
    <div class="lucky-box">

	<%@ include file="/views/jsp/header.jsp" %>


      <div class="body">
      	<img class="luckybox-function" src="<%=path %>/views/img/img_luckybox-function.svg" onclick="">
        <div class="luckybox-blank">
          <div class="luckybox-guide">
            <p class="p">
              <span class="span">다음과 같은 상품이 나올 수 있습니다.<br /></span>
              <span class="text-wrapper-7">이달의 특별상품, 할인쿠폰, 포춘쿠키</span>
            </p>
          </div>
        </div>
      </div>



 	<%@ include file="/views/jsp/footer.jsp" %>
    </div>
  </body>
</html>