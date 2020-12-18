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
<script src="https://kit.fontawesome.com/fac1f30643.js"
	crossorigin="anonymous"></script>
</head>
<link rel="stylesheet" href="${root }css/topNav.css">
<body>
	<header>
		<!-- 상단 메뉴 부분 -->
		<div class="container">
			<nav class="nav">
				<ul class="nav-list nav-list-mobile">
					<li class="nav-item">
						<div class="mobile-menu">
							<span class="line line-top"></span> <span
								class="line line-bottom"></span>
						</div>
					</li>
					<li class="nav-item"><a href="#"
						class="meun-item nav-link nav-link-apple"><img class="noimg"
							src="${root }image/grocery(copy).svg"></a></li>
					<li class="nav-item"><a href="#"
						class="meun-item nav-link nav-link-bag nav-link-bag2"><img
							src="${root }image/bag.svg"></a></li>
				</ul>
				<ul class="nav-list nav-list-larger">
					<li class="nav-item nav-item-hiien"><a
						class="nav-link nav-link-apple" href="${root }main"><img
							src="${root }image/grocery(copy).svg"></a></li>
					<li id="hideSearch">
						<form action="${root }search/searchList.do">
							<input type="search" name="sh" placeholder="과일이름 검색" />
						</form>
						</form></li>
					<li class="nav-item"><a href="${root }menu/red_do" id="mac"
						class="meun-item nav-link">RED</a></li>
					<li class="nav-item"><a href="${root }menu/yellow_do"
						class="meun-item nav-link">YELLOW</a></li>
					<li class="nav-item"><a href="${root }menu/green_do"
						class="meun-item nav-link">GREEN</a></li>
					<li class="nav-item"><a href="${root }menu/white_do"
						class="meun-item nav-link">WHITE</a></li>
					<li class="nav-item"><a href="${root }menu/purple_do"
						class="meun-item nav-link">PURPLE</a></li>
					<!--    <li class="nav-item">
              <a href="#" class="meun-item nav-link">Music</a>
            </li> -->
					<%-- <c:forEach var="dto" items="${topMenuList }">
              <li class="nav-item">
                <a href="${root }menu/product_list?top_info_idx=${dto.top_info_idx}" class="meun-item nav-link">${dto.top_info_name }</a>
              </li>
            </c:forEach> --%>
					<li class="nav-item"><a class="nav-link nav-link-search"
						id="search" href="#"><img src="${root }image/search.svg"></a>
					</li>
					<li class="nav-item nav-item-hidden"><a
						class="nav-link nav-link-bag nav-link-bag1" href="#"><img
							src="${root }image/bag.svg"></a></li>
					<c:choose>
						<c:when test="${empty sessionScope.user_id }">
							<li><a href="${root }user/login" class="topBarBtn">로그인</a>
							</li>

						</c:when>
						<c:otherwise>
							<ul class="nav-list nav-list-larger">
								<li>
									<p class="idfont">${sessionScope.user_id }님&nbsp;&nbsp;</p>
								</li>
								<li><a href="${root }user/logout.do" class="topBarBtn">로그아웃</a>
								</li>
							</ul>
						</c:otherwise>
					</c:choose>

					<div class="search-form">
						<form action="${root }search/searchList.do">
							<input type="search" name="sh" placeholder="과일이름 검색" />
						</form>
						<a class="close"><i class="fa fa-times"></i></a>
					</div>

				</ul>
				<ul id="hide2" class="hide2">
                <li><i class="far fa-heart"></i><a href="${root }userinfo/userorder.do">MyPage</a></li>
                <li id="hide2Bag"><i class="fas fa-shopping-bag"></i><a href="${root }cart/list.do">장바구니</a></li>
                 <li><i class="fas fa-cog"></i><a href="${root }board/main.do">고객지원</a></li>
                <li><i class="fas fa-cog"></i><a href="${root }user/join">회원가입</a></li>
                <li><i class="fas fa-cog"></i><a href="${root }game/start">자가진단</a></li>
                <c:choose>
                <c:when test="${empty sessionScope.user_id }">
                <li><i class="far fa-user-circle"></i><a href="${root }user/login">로그인</a></li>
              	</c:when>
              	<c:otherwise>
              	<li>
           			<i class="far fa-user-circle"></i><p class="idfont">${sessionScope.user_id }님</p><a href="${root }user/logout.do" class="topBarBtn">로그아웃</a>
           		</li>
              	</c:otherwise>
              	</c:choose>
              </ul>
			</nav>

			<div class="nav-link-bag__list">
				<div class="bagListContents">
					<ul id="hide" class="hide">
						<li><i class="far fa-heart"></i><a
							href="${root }userInfo/userorder.do">MyPage</a></li>
						<li id="hideBag"><i class="fas fa-shopping-bag"></i><a
							href="${root }cart/list.do">장바구니</a></li>
						<li><i class="fas fa-cog"></i><a href="${root }board/main.do">고객지원</a></li>
						<li><i class="fas fa-cog"></i><a href="${root }user/join">회원가입</a></li>
						<li><i class="fas fa-cog"></i><a href="${root }game/start">자가진단</a></li>
						<c:choose>
							<c:when test="${empty sessionScope.user_id }">
								<li><i class="far fa-user-circle"></i><a
									href="${root }user/login">로그인</a></li>
							</c:when>
							<c:otherwise>
								<li><i class="far fa-user-circle"></i><a
									href="${root }user/logout.do" class="topBarBtn_hide">${sessionScope.user_id }님 로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</header>

</body>
<script src="${root }js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#search").click(function() {
			$(".meun-item").addClass("hide-item");
			$(".search-form").addClass("can-see");
			$("#search").addClass("hide-item");
			$(".close").addClass("can-see");
		});
		$(".close").click(function() {
			$(".meun-item").removeClass("hide-item");
			$(".search-form").removeClass("can-see");
			$(".close").removeClass("can-see");
			$("#search").removeClass("hide-item");
		});
	});
</script>
</html>