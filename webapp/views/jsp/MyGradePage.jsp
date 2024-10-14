<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="<%=path %>/views/css/globals1.css" />
<link rel="stylesheet" href="<%=path %>/views/css/style1.css" />
<link rel="stylesheet" href="<%=path %>/views/css/css/styleguide1.css" />
</head>
<body>
	<div class="my-grade-page">

		<%@ include file="/views/jsp/header.jsp"%>

		<div class="body">
			<div class="mypage-navbar">
				<div class="navbar">
					<div class="view">
						<button class="real-button">
							<div class="text-wrapper-7">
								<a href="mygradepage.bo"> 등급 정보 및 혜택 </a>
							</div>
						</button>
					</div>
					<div class="view-2">
						<div class="text-wrapper-8">
							<button class="real-button">
								<a href="mycouponpage.bo"> 쿠폰함 </a>
							</button>
						</div>
					</div>
					<div class="overlap-group">
						<div class="view-3">
							<div class="text-wrapper-9">혜택</div>
						</div>
						<div class="my-account-list-wrapper">
							<div class="my-account-list">
								<div class="view-4">
									<button class="real-button">
										<div class="text-wrapper-7">
											<a href="mypage.bo"> 개인정보 수정 및 정보 </a>
										</div>
									</button>
								</div>
								<div class="view-5">
									<button class="real-button">
										<div class="text-wrapper-10">
											<a href="orderpage.bo"> 주문내역 </a>
										</div>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="view-6">
						<div class="text-wrapper-11">나의 계정</div>
					</div>
				</div>
				<div class="view-7">
					<div class="text-wrapper-12">
						<button class="real-button">회원탈퇴</button>
					</div>
				</div>
			</div>
			<div class="mid">
				<div class="top-2">
					<div class="text-wrapper-13">
						<a href="mygradepage.bo"> 등급 정보 및 혜택 </a>
					</div>
				</div>
				<div class="block">
					<div class="overlap-group-2">
						<div class="mygrade-blank">
							<p class="p">
								<span class="span">현재 회원님의 등급은 </span> <span
									class="text-wrapper-14">다이아</span> <span class="span">
									입니다.</span>
							</p>
						</div>
						<div class="view-8">
							<div class="view-9">
								<div class="text-wrapper-15">골드 회원</div>
							</div>
							<div class="view-10">
								<div class="text-wrapper-16">다이아 회원</div>
							</div>
							<div class="view-11">
								<div class="text-wrapper-16">브론즈 회원</div>
							</div>
							<div class="frame-wrapper">
								<div class="frame">
									<div class="text-wrapper-17">브론즈 등급 혜택 내용</div>
									<br>
									<ul>
										<li>1. 모든 제품 10% 할인</li>
										<li>2. 첫 구매 시 무료 배송</li>
										<li>3. 럭키박스 코인 1개 증정</li>
									</ul>
								</div>
							</div>
							<div class="view-12">
								<div class="frame-2">
									<div class="text-wrapper-18">골드 등급 혜택 내용</div>
									<br>
									<ul>
										<li>1. 모든 제품 15% 할인</li>
										<li>2. 무료 배송 서비스</li>
										<li>3. 럭키박스 코인 3개 증정</li>
									</ul>
								</div>
							</div>
							<div class="view-13">
								<div class="frame-2">
									<div class="text-wrapper-19">다이아 등급 혜택 내용</div>
									<br>
									<ul>
										<li>1. 모든 제품 20% 할인</li>
										<li>2. 무료 배송 서비스</li>
										<li>3. 럭키박스 코인 5개 증정</li>
									</ul>
								</div>
							</div>
						</div>
						<img class="picture"
							src="<%=contextPath%>/views/img/pepicons-print-seedling.svg" " />
					</div>
				</div>
			</div>
		</div>

		<%@ include file="/views/jsp/footer.jsp"%>

	</div>
</body>
</html>