<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="<%=path %>/views/css/global.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/luckyboxguide.css" />
    <link rel="stylesheet" href="<%=path %>/views/css/luckyboxstyle.css" />
  </head>
  <body>
    <div class="lucky-box">

	<%@ include file="/views/jsp/header.jsp" %>


      <div class="body">
      	<img class="luckybox-function" src="<%=path %>/views/img/img_luckybox-function.svg" onclick="randombox()">
        <div class="luckybox-blank">
          <div class="luckybox-guide">
            <p class="p">
              <span class="span">다음과 같은 상품이 나올 수 있습니다.<br /></span>
              <span class="text-wrapper-7">이달의 특별상품, 할인쿠폰, 포춘쿠키</span>
            </p>
          </div>
        </div>
      </div>



 	<%@ include file="/views/jsp/footer.jsp" %>
    </div>
  </body>
  <script type="text/javascript">
  //스크립트 안과 function 밖에 for 문을 걸어야함
      function randombox() {
        // JavaScript에서 매번 호출될 때마다 새로운 요청을 서버에 보내지 않기 위해, 확률 로직을 JS로 처리
        var chance = Math.random() * 100;
        var prizeMessage = "";

        if (chance < 21) {
          prizeMessage = "\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0🥠포춘쿠키에 당첨되었습니다!🥠\n\n빈값은 NUll로 채워진다..그래서 내 옆자리도 너로 채워지나보다...★";
        }else if (chance < 42) {  // 85% 이상 95% 미만
          prizeMessage = "\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0🥠포춘쿠키에 당첨되었습니다!🥠\n\n피할 수 없으면 즐겨라!";
        }else if (chance < 63) {  // 85% 이상 95% 미만
          prizeMessage = "\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0🥠포춘쿠키에 당첨되었습니다!🥠\n\n행복한 삶을 살기위해 필요한 것은 거의없다";
        } else if (chance < 84) {  // 85% 이상 95% 미만
          prizeMessage = "\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0🥠포춘쿠키에 당첨되었습니다!🥠\n\n오늘은 새로운 기회가 찾아올 것입니다.";
        }else if (chance < 95) {  // 85% 이상 95% 미만
          prizeMessage = "🍩간식에 당첨되었습니다!🍩";
        }else if (chance < 98) {  // 95% 이상 98% 미만
          prizeMessage = "💳쿠폰에 당첨되었습니다!💳";
        } else if (chance < 98.0001) {  // 98% 이상 98.0001% 미만
          prizeMessage = "🎮축하합니다! 게임기에 당첨되었습니다!🎮";
        }else{
        	prizeMessage = "😭꽝ㅜㅜ😭";
        }

        // 결과를 알림으로 출력
        alert(prizeMessage);
      }
      
    </script>
</html>