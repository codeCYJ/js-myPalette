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
<link rel="stylesheet" href="${root }css/mainRed.css" />
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;900&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/fac1f30643.js" crossorigin="anonymous"></script>  
	<link rel="stylesheet" href="${root }css/indexDefault.css">
	<link rel="stylesheet" href="${root }css/mainRed.css">
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
	
	<div class="container_color">
		<section class="scroll-section" id="scroll-section-0">
			<h1>${dto.product_en_name }</h1>
			<!-- 여기에 사진 들어감 js는 다 똑같아서 하나로 연결했어요 -->
			<object class="sticky-elem pencil-logo" data="${root }image/red/${dto.product_img}" type="image/jpg"></object>
			<!-- ^   ^    ^     ^        ^       ^          ^ -->
			<div class="sticky-elem main-message a">
				<p>여기에서</p>
			</div>
			<span class="sticky-elem ribbon-path">
				<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 700 450">
					<path class="st1" 
						d="M709,41.5c-194,38-387,122-455,159c-64.13,34.89-73.4,42.42,20,26c82.5-14.5,126.34-33.68,185-38 c47.5-3.5,69.22,7.98-11,39c-75,29-251,98-459,169">
					</path>
				</svg>
			</span>
			<div class="sticky-elem main-message b">
				<p>구매하세요</p>
			</div>
		</section>
		<div class="normal-content">
			<section>
				<p class="mid-message">
					${dto.product_info}
				</p>
			</section>
		</div>
		<div class="details-btn">
			<a href="${root }menu/red_do"><i class="fas fa-undo-alt"></i></a>
			<%-- <a href="${root }cart/list.do">구매하기</a> --%>

		</div>
	</div>
	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

	<script src="${root }js/indexMain.js"></script>

</body>
</html>