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
<link rel="stylesheet" href="${root }css/red.css" />

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
			<p>내게 맞는 과일 & 채소 색깔을 확인하여
			왁2레인저의 도움도 받고, 3만원 이상 구매시 무료 배송 혜택 등도 누리세요.
			<a href="${root }game/start">
				<button class="pBlue">게임하기</button>
			</a>
			</p>
		</div>
		<div class="item1">
			<div class="item1Content">
				<p>tomato</p>
				<h1>과일과 야채의 틈에있죠.</h1>
				<p>야채중에 유일한 간식거리</p>
				<p>오늘 바로 주문하세요.</p>

				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexred">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="1" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="1" />
						</form>
					</div>
				</div>

			</div>
		</div>
		<div class="item2">
			<div class="item2Content">
				<p>내 생각에</p>
				<h1>미녀는 딸기를 좋아해.</h1>
				<p>여태까지 그래왔고 앞으로도 계속</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexred">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="2" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="2" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item3">
			<div class="item3Content">
				<h1>파란색이 섞인 빨간색</h1>
				<p>맛에서 두가지 색깔이 느껴지지 않나요?</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexred">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="3" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="3" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item4">
			<div class="item4Content">
				<h1>
					그냥도 먹고 <br>벗겨서도 먹는
				</h1>
				<p>취향에 따라 섭취하는 영양분이 달라집니다.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexred">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="4" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="4" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item5">
			<div class="item5Content">
				<div class="content-title">
					<h1 class="title1">과일 같은 색깔</h1>
					<h1 class="title2">보석 같은 맛</h1>
				</div>
				<p>에스트로겐이 풍부한 과일입니다.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexred">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="5" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="5" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item6">
			<div class="item6Content">
				<h1>우리는 한국인, 매운것도 맛이다.</h1>
				<p>우리가 매운걸 통증이라고 느끼나요?</p>
				<p>지금 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexred">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="6" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="6" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="itemBox">
			<div id="card1" class="card1">
				<div class="card1Content">
					<h1 class="title">tom made tomato</h1>
					<h2>토마토는 그 무엇도 될 수 있어요.</h2>
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
			<div class="card5">
				<div class="card5Content">
					<h1>strawberry very merries you</h1>
					<h2>딸기는 달고 향기로워.</h2>
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
					<h1>cherry carries nutrient</h1>
					<h2>진하게 달콤한 체리의 과육.</h2>
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
					<h1>apple is lucxury</h1>
					<h2>한입 베어무는 건강한 미래, 이미 내 손 안에.</h2>
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
			<div class="card2">
				<div class="card2Content">
					<h1>
						Pomegranate <br> is watching poem
					</h1>
					<h2>보석 같은 과육.</h2>
					<br>
					<br>
					<br>
					<br>
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
					<h1>
						Red pepper <br>is the taste mapper
					</h1>
					<h2>
						매운맛에는.<br>달콤함과 감칠맛이 들어있다.
					</h2>
					<br>
					<br>
					<br>
					<br>
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
<script src="${root }js/indexRed.js"></script>
<script>
	$('#tothetop').click(function() {
		var htmloffset = $('html').offset();
		$('html, body').animate({
			scrollTop : htmloffset.top
		}, 400);
	});
</script>
<script></script>

</html>