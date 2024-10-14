<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.semi.member.model.vo.Member"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="<%=path%>/views/css/globals.css">
<link rel="stylesheet" href="<%=path%>/views/css/MemberManagement.css">

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

	<!-- 여기서 클래스명을 customer-management에서 member-management로 변경 -->
	<div class="member-management">
		<form action="<%=path%>/memberdel.do" method="post">
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
				<div class="text-wrapper-2">회원관리</div>
			</div>
			<form action="searchbar.do" method="post">
				<div class="search-bar-container">
					<div class="search-bar">
						<div class="dropdown">
							<input type="hidden" name="searchType" id="searchType"
								value="회원검색">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton1" data-bs-toggle="dropdown"
								aria-expanded="false">종류</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li><a class="dropdown-item" href="#"
									onclick="setSearchType('회원명')">회원명</a></li>
								<li><a class="dropdown-item" href="#"
									onclick="setSearchType('아이디')">아이디</a></li>
								<li><a class="dropdown-item" href="#"
									onclick="setSearchType('회원등급')">회원등급</a></li>
							</ul>
						</div>
						<input class="search-input-text form-control" name="searchText"
							type="text" placeholder="검색어를 입력하세요" />
						<button type="submit" class="btn btn-secondary search-button">검색</button>
					</div>
				</div>
			</form>

			<script>
   				 function setSearchType(type) {
        			document.getElementById("searchType").value = type;
        			document.getElementById("dropdownMenuButton1").innerText = type;
    				}
			</script>


			<!-- 검색창 바깥에 삭제하기 버튼 배치 -->
			<form action="change.do" method="post">
				<div class="cancel-button">
					<button type="submit" class="btn btn-danger">삭제하기</button>
				</div>
			</form>




			<table class="table table-striped table-bordered member-table">
				<thead>
					<tr>
						<th>회원명</th>
						<th>아이디</th>
						<th>회원등급</th>
						<th>전화번호</th>
						<th>email</th>
						<th>가입일</th>
						<th>탈퇴여부</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Member> memberList = (List<Member>) request.getAttribute("memberList");
					if (memberList != null && !memberList.isEmpty()) {
						for (Member member : memberList) {
					%>
					<tr>
						<td><%=member.getUserName()%></td>
						<td><%=member.getUserId()%></td>
						<td><%=member.getGrade()%></td>
						<td><%=member.getPhone()%></td>
						<td><%=member.getEmail()%></td>
						<td><%=member.getUserEnrollDate()%></td>
						<td><%=member.getDelFlag()%></td>
						<td style="text-align: center;"><input style='zoom: 1.3;'
							type="checkbox" name="memberId" value="<%=member.getUserId()%>"></td>
					</tr>
					<%
					}
					} else {
					%>
					<tr>
						<td colspan="8">회원 정보가 없습니다.</td>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
			</form>
		</div>
	</div>
</body>
</html>