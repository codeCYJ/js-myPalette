<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대 경로 설정 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<!-- <link rel="stylesheet" href="https://use.typekit.net/uno7uop.css"> -->
<link rel="stylesheet" href="${root }css/login.css"> 
<script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
<script src="js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap'); 
</style>

</head>
<body>
<%-- 
<%@ include file="/WEB-INF/view/include/top_menu.jsp"%> --%>
<!-- 상단 메뉴 부분 -->	
 <c:import url="/WEB-INF/view/include/top_menu.jsp" />

<main>	
  <div id="form_wrapper">
        <div id="form_left">
            <img src="../image/color-circle.svg" alt="computer icon">
        </div>
        <div id="form_right">
            <h1>My Palette Sign in</h1>
            <form:form action="${root }user/login_proc" method="post" 
                               modelAttribute="initloginUserBean" >
            <div class="input_container">
                <i class="fas fa-envelope"></i>
                <form:input path="user_id" placeholder="ID" type="text" name="Email" id="field_email" class='input_field'/>
                <!-- <input placeholder="Email" type="email" name="Email" id="field_email" class='input_field'> -->
            	<form:errors path="user_id" style="color:red;" />
            </div>
            <div class="input_container">
                <i class="fas fa-lock"></i>
                <form:input path="user_pw" placeholder="Password" type="password" name="Password" id="field_password" class='input_field'/>
                <!-- <input  placeholder="Password" type="password" name="Password" id="field_password" class='input_field'> -->
            	<form:errors path="user_pw" style="color:red;" />
            </div>
            <div class="submit">
            	<input type="submit" value="Sign in" id='input_submit' class='input_field'>
            </div>
              <div id="account">
	            <span class="account">Forgot <a href="#"> Username / Password ?</a></span>
	            <span class="account" id='create_account'>
	                <a href="${root }user/join">Create your account &#x27A1; </a>
	            </span>
	          </div>
            </form:form>
        </div>
    </div>
</main>

<!-- 하단 정보 -->  
<c:import url="/WEB-INF/view/include/bottom_info.jsp" />


</body>
</html>








