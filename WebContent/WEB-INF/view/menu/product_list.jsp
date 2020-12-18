<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
  <script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap')
	;
</style>
</head>
<body>
  <!-- 상단 메뉴 -->
<c:import url="/WEB-INF/view/include/top_menu.jsp" />

	<main>
  <h2>상품목록</h2>

<table border="1" width="500px">
    <tr>
        <th>상품ID</th>
        <th>상품사진</th>
        <th>상품명</th>
        <th>가격</th>
    </tr>
<%-- <c:forEach var="row" items="${list }">
    <tr align = "center">
    <td>${row.product_id }</td>
    <td><img src="${root}image/${row.product_url}"
    width="100" height = "100"></td>
     <td>
    <a href="${root }menu/detail/${row.product_id}">
    ${row.product_name }</a> 
    </td>

    <td>
    <fmt:formatNumber value="${row.product_price}" pattern="#,###" /> </td>
    <!-- 가격을 표시하기 위해서 사용함. 0이 3개 있을 때마다 ,를 하나씩 찍게 한다. -->
    </tr>
    
</c:forEach> --%>
</table>

</main>

	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

</body>
</html>