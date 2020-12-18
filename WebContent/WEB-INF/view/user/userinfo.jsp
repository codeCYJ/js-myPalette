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
</head>
<link rel="stylesheet" href="${root }css/userinfo.css">

<body>
<c:import url="/WEB-INF/view/include/top_menu.jsp" />

<table>
	<tr>
		<td>${info.user_name }</td>
		<td>${info.user_id }</td>
		<td>${info.user_pw }</td>
		<td>${info.user_addr }</td>
		<td>${info.user_birth }</td>
		
	</tr>
 
</table>



<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

</body>
</html>