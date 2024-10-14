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
                        <a href="productpage.bo">
                            <img class="image" src="views/img/img-image-3.png" alt="완숙 토마토" />
                        </a>
                            <div class="element">완숙 토마토 950g<br>-10,990원-</div>
                        </div>
                        <div class="product">
                            <img class="image" src="views/img/img-image-2.png" alt="브로콜리" />
                            <div class="element">브로콜리 2개(약 500g)<br>-6,500원-</div>
                        </div>
                        <div class="product">
                            <img class="image" src="views/img/img-cabage-1.png" alt="강원 양배추" />
                            <div class="element">강원 양배추(국산) <br>-3,990원-</div>
                        </div>
                        <div class="product">
                            <img class="image" src="views/img/img-image-4.png" alt="밀푀유나베" />
                            <div class="element">밀푀유나베<br>-22,900원-</div>
                        </div>
                        
                        <div class="product">
                            <img class="image" src="views/img/img-melon-1.png" alt="고당도 점보허니듀멜론" />
                            <div class="element">고당도 점보허니듀멜론<br>-12,990원-</div>
                        </div>
                        
                        <div class="product">
                            <img class="image" src="views/img/img-bananabread-1.png" alt="도쿄바나나노 코이비토" />
                            <div class="element">도쿄바나나노 코이비토<br>(10입) -7000원-</div>
                        </div>
        
                        <div class="product">
                            <img class="image" src="views/img/img-1.png" alt="국산 냉동 새우살" />
                            <div class="element">국산 냉동 새우살 400G<br>(팩) -17,940원-</div>
                        </div> 
                        <div class="product">
                            <img class="image" src="views/img/img-koreacow-1.png" alt="한우대창나베" />
                            <div class="element">한우대창나베<br> -15,480원-</div>
                        </div>
                    </div>




                </div>
            </div>
            <%@ include file="/views/jsp/footer.jsp" %>       
        </div>
  </body>
</html>