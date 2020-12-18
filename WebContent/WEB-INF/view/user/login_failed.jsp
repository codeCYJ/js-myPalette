<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<c:set var="root" value="${pageContext.request.contextPath }/" />

<script>
  alert('로그인에 실패했습니다\n아이디와 비밀번호를 확인해 주세요');
  location.href='${root}user/login?failed=true'  
</script>
