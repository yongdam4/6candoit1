<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
    
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    
    <!-- css -->
    <link rel="stylesheet" href="../views/css/signup.css" />    
</head>
<body>
	<%@ include file="/views/jsp/header.jsp" %>
	<div class="signup">회원가입</div>
      
      <table>
        <tr>
          <td class="signup-text">아이디</td>
          <td><input type="text" class="input-box" placeholder="아이디 입력칸"></td>
          <td><button class="id-check-btn">중복확인</button></td>
        </tr>
        <tr>
          <td colspan="3" class="id-check-text">사용할 수 있는 아이디입니다.</td>
        </tr>
        <tr>
          <td class="signup-text">비밀번호</td>
          <td colspan="2"><input type="text" class="input-box" placeholder="비밀번호 입력칸"></td>            
        </tr>

        <tr>
          <td class="signup-text">비밀번호 확인</td>
          <td colspan="2"><input type="text" class="input-box" placeholder="비밀번호 재입력칸"></td>            
        </tr>
        <tr>
          <td colspan="3" class="pwd-check-text">비밀번호가 일치합니다.</td>
        </tr>
        <tr>
          <td class="signup-text">이름</td>
          <td colspan="2"><input type="text" class="input-box" placeholder="이름 입력칸"></td>
        </tr>
        
        <tr>
          <td class="signup-text">이메일</td>
          <td colspan="2"><input type="text" class="input-box" placeholder="이메일 입력칸"></td>
        </tr>

        <tr>
          <td class="signup-text">휴대폰</td>
          <td><input type="text" class="input-box" placeholder="전화번호 입력칸"></td>
          <td><button class="checknumber-button">인증번호 받기</button></td>            
        </tr>

        <tr>
          <td class="signup-text">이메일</td>
          <td colspan="2"><input type="text" class="input-box" placeholder="이메일 입력칸"></td>
        </tr>

        <tr>
          <td class="signup-text">주소</td>
          <td colspan="2"><input type="text" class="input-box" placeholder="주소 입력칸"></td>
        </tr>

        <tr>
          <td class="signup-text">성별</td>
          <td colspan="2" class="gender-box">
            <label><input type="radio" name="gender" id="man" value="man">남자</label>
            <label><input type="radio" name="gender" id="woman" value="woman">여자</label>
          </td>
        </tr>

        <td class="signup-text">생년월일</td>
          <td colspan="2"><input type="text" class="input-box" placeholder="YYYY / MM / DD"></td>
      </table>
        
      
      <button class="signup-button">가입하기</button>      
    </div>   
    <br><br>
    <%@ include file="/views/jsp/footer.jsp" %>
</body>
</html>