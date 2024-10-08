<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/global.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/popularitemspageguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/popularitemspagestyle.css" />
    <title>인기 상품</title>
</head>
    <body>
        <div class="contact-page">
        
            <%@include file="/views/jsp/header.jsp" %>
    
            <div class="body">
                <div class="body-case">

                    <div class="body-head">인기 상품</div>

                    <div class="table-base">
                         <!--요게 상품 진열하는곳-->
                        <div class="product">
                            <img class="image" src="img/image.png" alt="완숙 토마토" />
                            <div class="element">10,990원</div>
                        </div>
                        <div class="product">
                            <img class="image" src="img/image2.png" alt="신선한 사과" />
                            <div class="element">8,990원</div>
                        </div>
                        <div class="product">
                            <img class="image" src="img/image3.png" alt="바나나" />
                            <div class="element">5,990원</div>
                        </div>
                        <div class="product">
                            <img class="image" src="img/image4.png" alt="제철 딸기" />
                            <div class="element">12,990원</div>
                        </div>
                        
                        <div class="product">
                            <img class="image" src="img/image5.png" alt="파프리카" />
                            <div class="element">4,990원</div>
                        </div>
                        
                        <div class="product">
                            <img class="image" src="img/image6.png" alt="아보카도" />
                            <div class="element">7,990원</div>
                        </div>
        
                        <div class="product">
                            <img class="image" src="img/image7.png" alt="브로콜리" />
                            <div class="element">3,990원</div>
                        </div> 
                        <div class="product">
                            <img class="image" src="img/image8.png" alt="삼겹살600g" />
                            <div class="element">13,990원</div>
                        </div>
                    </div>




                </div>
            </div>
            <%@ include file="/views/jsp/footer.jsp" %>       
        </div>
  </body>
</html>