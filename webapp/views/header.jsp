<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- css -->
    <link rel="stylesheet" href="../css/headercopy.css">    
    <link rel="stylesheet" href="../css/styleguide.css">
    <link rel="stylesheet" href="../css/globals.css">
    
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
    
</head>
<body>

 <div class="header-top">
    <button class="home-button"><a href="">푸드피아</a></button>

      <div class="search-bar">
        <button class="search-icon-blank">
          <img class="search-icon" src="../img/search-icon.svg" />
        </button>      
        <input type="text" class="search-input-blank" placeholder="검색어를 입력하세요.">      
      </div>
      
      <c:choose>
        <!--로그인 전-->
        <c:when test="#{empty loginUser}"> <!-- 로그인 정보에서  null 인 경우 -->
          <form action="" method="post">
            <div class="not-login">
              <button class="shopping-cart-button">
                <img class="shopping-cart-icon" src="../img/shopping-cart-icon.svg" />
                <div class="shopping-cart-text">장바구니</div>
              </button>

              <button class="login-button">
                <img class="login-icon" src="../img/login-icon.svg" />
                <div class="login-text">로그인</div>
              </button>
            </div>
          </form>            
        </c:when>

        <c:otherwise>
          <!--로그인 후 -->
          <div class="loging">
            <button class="shopping-cart-button">
              <a href="">
                <img class="shopping-cart-icon" src="../img/shopping-cart-icon.svg" />
                <div class="shopping-cart-text">장바구니</div>
              </a>              
            </button>

            <button>
              <a href="">
                <img src="../img/my-page-icon.svg">
                <div>내 정보</div>
              </a>              
            </button>

            <button class="login-button">
              <a href="">
                <img class="login-icon" src="../img/login-icon.svg" />
                <div class="login-text">로그아웃</div>
              </a>
            </button>            
          </div>
        </c:otherwise>
      </c:choose>
  </div>


  <div class="menu">
    <div class="category-button">
      <img class="img" src="../img/menu.svg" />
      <div class="category">카테고리</div>
    </div>
    <div class="menu-list">
      <button class="event-btn"><a href="">이벤트</a></button>
      <button class="popular-btn"><a href="">인기상품</a></button>
      <button class="luckybox-btn"><a href="">럭키박스</a></button>
      <button class="inquiry-btn"><a href="">문의</a></button>
      <button class="admin-btn"><a href="">관리자</a></button>
    </div>    
  </div>

</body>
</html>