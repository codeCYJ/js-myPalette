<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }css/userorder.css">

</head>

<body>
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />

	<main class="payinfo">
		<div class="container">
			<div class="list">
				<a class="name" href="#">${sessionScope.user_id } 님</a>
				<ul>
					<li>쇼핑 정보</li>
					<li><a href="${root }userInfo/userorder.do">장바구니</a></li>
					<li><a href="information.html"></a></li>
					<li>계정설정</li>
					<li><a href="${root }userInfo/userinfo">회원정보</a></li>
					<li>고객센터</li>
					<li><a href="${root }userInfo/question">1:1 문의사항</a></li>
				</ul>
			</div>
			<div class="paylist">
				<div class="paytitle">
					<h1>장바구니</h1>

				</div>
				<div class="paynav">
					<ul>
						<li>상품명</li>
						<li>&nbsp;갯수</li>
						<li>결제금액</li>
					</ul>
				</div>
				<c:forEach var="li" items="${list }">
					<div class="paylist-out">
						<div class="paylist-inlist">
							<div class="inlist-first">
								<p>${li.product_name }</p>
								<img src="${root }image/${li.product_purchase_img}">
							</div>
							<p>${li.amount }</p>
							<c:set var="am" value="${li.amount }" />
							<p>${li.product_price * am }</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<div>
				<a></a>
			</div>
			<div>
				<a class="user-delete" href="${root }cart/list.do">
					<h6>상세보기</h6>
				</a>
			</div>
		</div>

	</main>
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

</body>
</html>
