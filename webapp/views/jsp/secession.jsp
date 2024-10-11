<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- css -->
	<link rel="stylesheet" href="../css/globals.css" /> 
    <link rel="stylesheet" href="../css/styleguide.css" />
    <link rel="stylesheet" href="../css/secession.css" />

    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@463&display=swap" rel="stylesheet">
</head>
<body>
	<%@ include file="./header.jsp" %>
	
    <div class="secession"> 회원탈퇴 </div>
    
    <div class="secession-content">
        <div class="secession-user-info">
            <div class="input-group">
                <label for="user-id">탈퇴할 회원의 아이디</label> <br>
                <input id="user-id" type="text" placeholder="탈퇴할 아이디 입력" />
            </div>
        
            <div class="input-group">
                <label for="user-password">탈퇴할 회원의 비밀번호</label><br>
                <input id="user-password" type="password" placeholder="탈퇴할 비밀번호 입력" />
            </div>
        
            <div class="input-group">
            <label for="user-name">이름</label><br>
            <input id="user-name" type="text" placeholder="이름 입력" />
            </div>
        
            <div class="input-group">
            <label for="user-birthday">생년월일</label> <br>
            <input id="user-birthday" type="text" placeholder="YY/MM/DD" />
            </div>
        </div>        
    
        <div class="secession-reason">
            <label class="reason-text">탈퇴 사유</label>
            <div class="reason-option">
                <input type="radio" name="reason" id="reason-1" />
                <label for="reason-1">해당 사이트보다 더 좋은 곳을 발견해서</label>
            </div>
            
            <div class="reason-option">
                <input type="radio" name="reason" id="reason-2" />
                <label for="reason-2">해당 사이트 이용을 다 해서</label>
            </div>
    
            <div class="reason-option">
                <input type="radio" name="reason" id="reason-3" />
                <label for="reason-3">기타</label>
                <input type="text" placeholder="탈퇴사유를 알려주세요 ㅠㅠ" />
            </div>
        </div>
    </div>    
    
    <div class="caution-text">
        해당 사이트를 탈퇴합니다. 회원님이 보유중이신 쿠폰, 포인트 및 모든 정보들이 삭제되며 다시 같은 이름,
        생년월일, 전화번호로 회원가입하여도 회원님이 가지고 계시던 쿠폰, 포인트 및 모든 정보들은 적용되지 않으며
        신규회원 유저로 적용됩니다.
    </div>
    
    <div class="submit-button">
        <button>탈퇴 하기</button>
    </div>
      
</body>
</html>