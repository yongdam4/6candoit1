<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.semi.product.model.vo.Product"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="<%=path%>/views/css/globals.css">
<link rel="stylesheet" href="<%=path%>/views/css/ProductManagement1.css">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Custom JavaScript -->
<script>
	function changeDropdownText(selectedText) {
		document.getElementById("dropdownMenuButton1").innerText = selectedText;
	}
</script>
</head>
<body>
	<form action="">
		<div class="product-management">
			<header class="header">
				<div class="admin-page">
					<div class="text-wrapper">관리자 페이지</div>
				</div>
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
						onClick="location.href='index.jsp'">메인페이지</button>
				</nav>
			</header>
	</form>

	<div class="body">
		<div class="top-2">
			<div class="text-wrapper-2">상품관리</div>
		</div>
		<form action="productsearch.do" method="get">
			<div class="search-bar">
				<div class="dropdown">
					<input type="hidden" name="searchType" id="searchType" value="상품명">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">종류</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#"
							onclick="setSearchType('상품명')">상품명</a></li>
						<li><a class="dropdown-item" href="#"
							onclick="setSearchType('카테고리')">카테고리</a></li>
					</ul>
				</div>
				<!-- 검색어 전달할 수 있게 수정된 부분 -->
				<input class="form-control" type="text" name="searchText"
					placeholder="검색어를 입력하세요" />
				<button type="submit" class="btn btn-secondary">검색</button>
			</div>
		</form>
		<script>
			function setSearchType(type) {
				document.getElementById("searchType").value = type;
				document.getElementById("dropdownMenuButton1").innerText = type;
			}
		</script>

		<div class="bottom">
			<div class="button-container">
				<button type="button" class="btn btn-primary"
					onClick="location.href='productadd.do'">+상품추가</button>
			</div>
			<table class="table table-striped table-bordered member-table">
				<thead>
					<tr>
						<!-- <th style="text-align: center;">이미지</th> -->
						<th>상품코드</th>
						<th>상품명</th>
						<th>카테고리</th>
						<th>설명</th>
						<th>판매가격</th>
						<th>수량</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Product> productList = (List<Product>) request.getAttribute("productList");
					if (productList != null && !productList.isEmpty()) {
						for (Product product : productList) {
					%>
					<tr>
						<td><%=product.getProductCode()%></td>
						<td><%=product.getProductName()%></td>
						<td><%=product.getCategoryCode()%></td>
						<td><%=product.getProductdescription()%></td>
						<td><%=product.getProductPrice()%></td>
						<td><%=product.getProductQuantity()%></td>
						<td style="text-align: center;"><input style='zoom: 1.3;'
							type="checkbox"></td>
					</tr>
					<%
					}
					} else {
					%>
					<tr>
						<td colspan="8">상품 정보가 없습니다.</td>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
		</div>
	</div>
	</div>
</body>
</html>
