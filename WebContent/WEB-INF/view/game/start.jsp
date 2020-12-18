<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
  <link rel="stylesheet" href="${root }css/start.css">
</head>
<body>
 <div id="wrap">
        <section id="welcome" class="container">
            <div id="title-box">
                <h1 class="title">
                    5 Things<br>
                    I Know About Your color
                </h1>
                <h3 class="sec-tit">
                    5가지 질문으로<br>
                    알아보는 나만의 색깔
                </h3>
                <span class="time-logo"></span>
                <div>소요 시간 : 1분 내외</div>
            </div>
            <hr class="w-line">
            <p class="w-line">
                <span id="p-tit">테스트로 알아보는 나만의 색깔.</span><br>
                나한테 가장 필요한 색깔을 섭취하세요.<br>
                현대인에게 자신의 식단을 제대로 알고 이미지를 관리하는 것은
                성공적인 사회 생활과 좋은 평판을 얻기 위해 필수적입니다.
                테스트 결과로 당신이 먹어야할 색깔이 무엇인지 알아보세요.
            </p>
            <hr class="w-line">
          
            <div class="start-wrap">
                <button onclick="location.href='${root}game/gm'" class="start">시 작</button>
            </div>
        </section>
        
    </div>
</body>
</html>