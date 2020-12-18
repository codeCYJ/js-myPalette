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
<link rel="stylesheet" href="${root }css/question.css">
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
					<li><a href="information.html"> </a></li>
					<li>계정설정</li>
					<li><a href="${root }userInfo/userinfo">회원정보</a></li>
					<li>고객센터</li>
					<li><a href="${root }userInfo/question">1:1 문의사항</a></li>
				</ul>
			</div>
			<div class="man-to-man">
				<div>
					<h3>
						1:1 문의내역
						</h4>
				</div>
				<br>
				<div>
					<h4 class="time-bold">상담시간</h4>
					<br> <br>
					<h4>
						평일(월~금)10:00~17:00<br>(off-time 12:00~14:00,토/일/공휴일 휴무)
					</h4>
				</div>
				<br>
				<div class="time-gray-div">
					<h5 class="time-gray">
						한번 등록한 상담내용은 수정이 불가능합니다.<br>향후 멤버쉽 단계별 혜택 및 선정기준은 사전공지 후 변경될
						수 있습니다.
					</h5>
				</div>
				<div class="m-to-m-btn-div">
					<input type="submit" value="1:1문의 쓰기" class="m-to-m-btn">
				</div>
				<div class="top-column">
					<span class="top-column-1"><h4>상담구분</h4></span><span
						class="top-column-2"><h4>상담제목</h4></span><span
						class="top-column-3"><h4>작성일</h4></span><span class="top-column-4"><h4>답변유무</h4></span>
				</div>
				<div class="second-column">
					<h4>내역이 없습니다.</h4>
				</div>

			</div>

		</div>
	</main>
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />
</body>
</html>