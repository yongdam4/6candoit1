<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    	String contextPath = request.getContextPath();
    	application.setAttribute("contextPath", contextPath);     
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/views/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/views/css/styleguide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/views/css/globals.css">

<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">

</head>
<body>

	<c:choose>
		<c:when test="${not empty loginUser}">
			<div class="user-info">
				<div class="user-welcome">${loginUser.userName}님환영합니다.</div>
				<button>
					<a href="<%=contextPath %>/logout.me">로그아웃</a>
				</button>
			</div>
		</c:when>

		<c:otherwise>
			<div class="login-signup">
				<button class="login-button">
					<a href="${pageContext.request.contextPath}/MemberLogin.do">
						<!-- views/jsp/LoginPage1.jsp --> 로그인
					</a>
				</button>

				<button class="signup-button">
					<a href="<%=contextPath %>/signup.me">회원가입</a>
				</button>
			</div>
		</c:otherwise>
	</c:choose>




	<div class="header-mid">
		<button class="home-button">
			<a href="${pageContext.request.contextPath}/index.jsp">푸드피아</a>
		</button>

		<div class="search-bar">
			<button type="submit" class="search-icon-blank">
				<img class="search-icon"
					src="<%=contextPath%>/views/img/img-search-icon.svg" />
			</button>
			<input type="text" class="search-input-blank"
				placeholder="검색어를 입력하세요.">
		</div>

		<div class="cart-mypage">
			<button class="shopping-cart-button">
				<a href="shoppingcartpage.bo"> <img class="shopping-cart-icon"
					src="<%=contextPath%>/views/img/cart.svg" />
				</a>
			</button>

			<button>
				<a href="mypage.bo"> <img
					src="<%=contextPath%>/views/img/mypage-icon.svg">
				</a>
			</button>
		</div>
	</div>


	<div class="menu">
		<div class="category-button">
			<img class="img" src="<%=contextPath%>/views/img/img-menu.svg">
			<div class="category">카테고리</div>
		</div>

		<div class="menu-list">
			<button class="event-btn">
				<a href="">이벤트</a>
			</button>
			<button class="popular-btn">
				<a href="popularitems.bo">인기상품</a>
			</button>
			<button class="luckybox-btn">
				<a href="luckyboxshow.bo">럭키박스</a>
			</button>
			<button class="inquiry-btn">
				<a href="contactpage.bo">문의</a>
			</button>
			<button class="admin-btn">
				<a href="<%=contextPath%>/views/jsp/AdminLoginPage.jsp">관리자 </a>
			</button>
		</div>
	</div>

</body>
</html>