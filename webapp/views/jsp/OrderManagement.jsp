<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.semi.order.model.vo.Order"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="<%=path%>/views/css/globals.css">
<link rel="stylesheet" href="<%=path%>/views/css/OrderManagement.css">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

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
	<div class="order-management">
		<form action="<%=path%>/ordermem.do" method="post">
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
				<div class="text-wrapper-2">주문관리</div>
			</div>
			<form action="<%=path%>/ordersearch.do" method="get">
				<div class="search-bar">
					<div class="dropdown">
						<input type="hidden" name="searchType" id="searchType"
							value="배송상태">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">종류</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="#"
								onclick="setSearchType('배송상태')">배송상태</a></li>
							<li><a class="dropdown-item" href="#"
								onclick="setSearchType('주문자')">주문자</a></li>
						</ul>
					</div>
					<input class="search-input-text form-control" type="text"
						name="searchText" placeholder="검색어를 입력하세요" required />
					<button type="submit" class="btn btn-secondary search-button">검색</button>
				</div>
			</form>

			<script>
				function setSearchType(type) {
					document.getElementById("searchType").value = type;
					document.getElementById("dropdownMenuButton1").innerText = type;
				}
			</script>
			<div class="bottom">
				<div class="order-state">
					<div class="order-info">
						<div class="check-state">
							<div class="text-wrapper-5">전체 : 1건 조회</div>
						</div>
						<div class="total-order-amount">
							<div class="text-wrapper-6">총 주문액 : 0,000,000원</div>
						</div>
					</div>
					<div class="cancel-button">
						<button type="button" class="btn btn-danger">취소하기</button>
					</div>
				</div>

				<table class="table table-striped table-bordered member-table">
					<thead>
						<tr>
							<th>주문일</th>
							<th>주문번호</th>
							<th>주문상품</th>
							<th>수량</th>
							<th>결제금액</th>
							<th>주문자</th>
							<th>배송상태</th>
							<th>결제방법</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%
						List<Order> orderList = (List<Order>) request.getAttribute("orderList");
						if (orderList != null && !orderList.isEmpty()) {
							for (Order order : orderList) {
						%>
						<tr>
							<td><%=order.getOrderDate()%></td>
							<td><%=order.getOrderNo()%></td>
							<td><%=order.getProductName()%></td>
							<td><%=order.getOrderQuantity()%></td>
							<td><%=order.getOrderPrice()%></td>
							<td><%=order.getUserId()%></td>
							<td><%=order.getDelistatus()%></td>
							<td><%=order.getPayment()%></td>
							<td style="text-align: center;"><input style='zoom: 1.3;'
								type="checkbox"></td>
						</tr>
						<%
						}
						} else {
						%>
						<tr>
							<td colspan="8">주문 정보가 없습니다.</td>
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