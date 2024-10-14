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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/views/css/Signup.css" />      
</head>
<body>
	<%@ include file="/views/jsp/header.jsp" %>
	<div class="signup-page-block">회원가입</div>
    
    <form action="${pageContext.request.contextPath}/insert.me" method="post" id="singup-page" class="signup-page">
      
        <table class="signup-page-table">
          <!-- 테이블 내용 -->
          <tr>
            <td class="signup-text">아이디</td>
            <td><input type="text" id="userId" name="userId" class="input-box" placeholder="아이디 입력칸" required></td>
            <td><button class="id-check-btn" onclick="checkId(event)">중복확인</button></td>
          </tr>
          <tr>
            <td colspan="3" id="id-check-text"></td>
          </tr>
          <tr>
            <td class="signup-text">비밀번호</td>
            <td colspan="2"><input type="password" name="userPwd" class="input-box" placeholder="비밀번호 입력칸" ></td>            
          </tr>
          <tr>
            <td class="signup-text">비밀번호 확인</td>
            <td colspan="2"><input type="password" name="checkUserPwd" class="input-box" placeholder="비밀번호 재입력칸"></td>            
          </tr>
          
          <tr>
            <td colspan="3" name="pwd-check-text"></td>
          </tr>

          <tr>
            <td class="signup-text">이름</td>
            <td colspan="2"><input type="text" name="userName" class="input-box" placeholder="이름 입력칸" ></td>
          </tr>

          <tr>
            <td class="signup-text">휴대폰</td>
            <td><input type="text" name="phone" class="input-box" placeholder="전화번호 입력칸" ></td>
            <td><button class="checknumber-button">인증번호 받기</button></td>            
          </tr>

          <tr>
            <td class="signup-text">이메일</td>
            <td colspan="2"><input type="text" name="email" class="input-box" placeholder="이메일 입력칸" ></td>
          </tr>

          <tr>
            <td class="signup-text">주소</td>
            <td colspan="2"><input type="text" name="address" class="input-box" placeholder="주소 입력칸" ></td>
          </tr>

          <tr>
            <td class="signup-text">성별</td>
            <td colspan="2" class="gender-box">
              <label><input type="radio" name="gender" id="man" value="M">남자</label>
              <label><input type="radio" name="gender" id="woman" value="F">여자</label>
            </td>
          </tr>

          <tr>
            <td class="signup-text">생년월일</td>
            <td colspan="2"><input type="text" name="birthday" class="input-box" placeholder="YYYY / MM / DD"></td>
          </tr>       
          
        </table>

        <button type="submit" class="signup-page-button">가입하기</button>
      
    </form>
    
    <script>
      // 아이디 중복 체크 함수     
      function checkId(event){
        console.log(event)
        event.preventDefault(); // 기본 동작을 막아 폼이 제출되지 않게 함

        //contextPath가 올바르게 설정되었는지 확인
        var contextPath = '${pageContext.request.contextPath}';  // JSP에서 서버의 컨텍스트 경로를 가져오는 부분

        $.ajax({
          type: "GET",
          url: contextPath + '/checkId.me',  // 서버에서 아이디 중복을 확인하는 URL
          data: {
              userId:$('#userId').val()
          },
          success: function(response) {
            console.log(response)
              if (response.isDuplicated) {
                  // 아이디 중복일 때
                  $("#id-check-text").css("color", "red").text("사용 불가능한 아이디입니다.");
              } else {
                  // 중복이 아닐 때
                  $("#id-check-text").css("color", "green").text("사용 가능한 아이디입니다.");
              }
          },
          error: function() {
              $("#id-check-text").css("color", "red").text("아이디 확인 중 오류가 발생했습니다.");
          }
        });
      };      
      
  
      // 비밀번호 확인 함수
      $("#checkUserPwd").on("keyup", function() {
          const userPwd = $("#userPwd").val();
          const checkPwd = $("#checkUserPwd").val();
          
          if (userPwd === checkPwd) {
              $("#pwd-check-text").css("color", "green").text("비밀번호가 일치합니다.");
          } else {
              $("#pwd-check-text").css("color", "red").text("비밀번호가 일치하지 않습니다.");
          }
      });
      </script>    
    <%@ include file="/views/jsp/footer.jsp" %>
</body>
</html>