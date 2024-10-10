<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="<%=path %>/views/css/globals.css" />
  <link rel="stylesheet" href="<%=path %>/views/css/style2.css" />
  <link rel="stylesheet" href="<%=path %>/views/css/styleguide2.css" />
</head>
<body>
  <div class="contact-page">
    
	<%@ include file="/views/jsp/header.jsp" %>
 
    <div class="body">
       <form id="inquiryForm" action="<%=path %>/MainPage.jsp" method="POST">
    <table class="contact-table">
      <tr>
        <td colspan="2" class="text-blank-wrapper">
          <div class="text-blank"><div class="text-wrapper-7">문의</div></div>
        </td>
      </tr>
      <tr>
        <td class="label">제&nbsp;&nbsp;목</td>
        <td class="input">
          <input type="text" class="input-field" name="title" placeholder="제목을 입력하세요" required>
        </td>
      </tr>
      <tr>
        <td class="label">작성자</td>
        <td class="input">
          <input type="text" class="input-field" name="author" placeholder="작성자 이름" required>
        </td>
      </tr>
      <tr>
        <td class="label">문의종류</td>
        <td class="input">
          <label><input type="radio" name="inquiry-type" value="배송" required> 배송</label>
          <label><input type="radio" name="inquiry-type" value="취소/반품/교환"> 취소/반품/교환</label>
          <label><input type="radio" name="inquiry-type" value="주문/결제"> 주문/결제</label>
        </td>
      </tr>
      <tr>
        <td class="label">내&nbsp;&nbsp;용</td>
        <td class="input">
          <textarea class="textarea-field" name="content" placeholder="문의 내용을 입력하세요" required></textarea>
        </td>
      </tr>
      <tr>
        <td class="label">비밀글</td>
        <td class="input">
          <label><input type="checkbox" name="secret"> *관리자만 열람할 수 있습니다.</label>
        </td>
      </tr>
      <tr>
        <td colspan="2" class="input">
          <button type="submit" class="inquiry-button">등록하기</button>
        </td>
      </tr>
    </table>
  </form>
    </div>
    
    <script>
  document.getElementById("inquiryForm").addEventListener("submit", function(event) {
    event.preventDefault(); // 기본 폼 제출 방지

    // 입력된 데이터 가져오기
    const title = document.querySelector('input[name="title"]').value;
    const author = document.querySelector('input[name="author"]').value;
    const inquiryType = document.querySelector('input[name="inquiry-type"]:checked').value;
    const content = document.querySelector('textarea[name="content"]').value;
    const secret = document.querySelector('input[name="secret"]').checked;

    // 서버로 전송할 데이터를 객체 형태로 준비
    const formData = {
      title: title,
      author: author,
      inquiryType: inquiryType,
      content: content,
      secret: secret
    };
    </script>

   	<%@ include file="/views/jsp/footer.jsp" %>
   
  </div>
</body>
</html>