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
<link rel="stylesheet" href="${root }css/yellow.css" />
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
		<div class="topNotice">
			<p>내게 맞는 과일 & 채소 색깔을&nbsp
			<form action="${root }game/start">
				<button class="pBlue">확인하여</button>
			</form>
			&nbsp왁2레인저의 도움도 받고, 3만원 이상 구매시 무료 배송 혜택 등도 누리세요.
			</p>
		</div>
		<div class="item1">
			<div class="item1Content">
				<p>내 기분</p>
				<h1>Pumpkin으로 Funky하게.</h1>
				<p>우울증개선에 좋은 호박을</p>
				<p>오늘 바로 주문하세요.</p>

				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexyellow">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="7" />
					</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="7" />
						</form>
					</div>
				</div>

			</div>
		</div>
		<div class="item2">
			<div class="item2Content">
				<p>내 피부</p>
				<h1>아프니깐 파프리카.</h1>
				<p>피부개선에 좋은 파프리카를</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexyellow">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="8" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="8" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item3">
			<div class="item3Content">
				<h1>면역력, 그 이상의 면역력</h1>
				<p>면역력을 강화해줄 파인애플을</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div class="itemBtn1">
						<div>
						<form action="${root }menu/indexyellow">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
							<input type="hidden"
									name="product_id" value="11" />
							</form>
						</div>
						<div>
							<form action="${root }menu/detail">
								<button class="itemBuy1">구매하기</button>
								<i class="fas fa-chevron-right"></i> <input type="hidden"
									name="product_id" value="11" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item4">
			<div class="item4Content">
				<h1>
					이보다 앞선 <br>오렌지가 있을까요?
				</h1>
				<p>지금껏 보지못한 프리미엄 오렌지.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexyellow">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="9" />
					</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="9" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item5">
			<div class="item5Content">
				<div class="content-title">
					<h1 class="title1">특별한 시즌</h1>
					<h1 class="title2">빛나는 선물</h1>
				</div>
				<p>면역력을 강화해줄 파인애플을</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexyellow">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="10" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="10" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item6">
			<div class="item6Content">
				<h1>작은 사이즈, 거대한 비타민.</h1>
				<p>한입으로 채우는 거대한 건강.</p>
				<p>지금 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexyellow">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="12" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="12" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="itemBox">
			<div id="card1" class="card1">
				<div class="card1Content">
					<h1 class="title">Pumpkin old</h1>
					<h2>호박의 흐름을 바꾸다.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2">
						<div>
							<button class="itemMore2">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
						<div>
							<button class="itemBuy2">가격보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
					</div> -->
					<div class="item7image"></div>
				</div>
			</div>
			<div class="card2">
				<div class="card2Content">
					<h1>Paprika</h1>
					<h2>프로 중의 프로.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2">
						<div>
							<button class="itemMore2">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
						<div>
							<button class="itemBuy2">구입하기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
					</div> -->
				</div>
			</div>
			<div class="card3">
				<div class="card3Content">
					<h1>Pineapple</h1>
					<h2>새로운 파워. 어마무시한 가능성.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2">
						<div>
							<button class="itemMore2">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
						<div>
							<button class="itemBuy2">구입하기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
					</div> -->
				</div>
			</div>
			<div class="card4">
				<div class="card4Content">
					<h1>Orange</h1>
					<h2>건강의 미래, 이미 내 손 안에.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2">
						<div>
							<button class="itemMore2">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
						<div>
							<button class="itemBuy2">가격보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
					</div> -->
				</div>
			</div>
			<div class="card5">
				<div class="card5Content">
					<h1>Banana</h1>
					<h2>손색없다. 부담없다.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2">
						<div>
							<button class="itemMore2">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
						<div>
							<button class="itemBuy2">구입하기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
					</div> -->
				</div>
			</div>
			<div class="card6">
				<div class="card6Content">
					<h1>Lemon</h1>
					<h2>강력하다.다채롭다.경이롭다.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2">
						<div>
							<button class="itemMore2">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
						<div>
							<button class="itemBuy2">구입하기</button>
							<i class="fas fa-chevron-right"></i>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</main>
	<div class="tothetop" id="tothetop">
		<span>TOP</span>
	</div>
	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />
</body>
<script>
	$('#tothetop').click(function() {
		var htmloffset = $('html').offset();
		$('html, body').animate({
			scrollTop : htmloffset.top
		}, 400);
	});
</script>

</html>