<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대 경로 설정 -->
<%-- <c:url var="root" value="${pageContext.request.contextPath }/" /> --%>
<c:url var="root" value="/" />
       
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
</head>
<body>
  <script>
    alert('로그아웃 되었습니다');
    location.href='${root}main';
  </script>
</body>
</html>



