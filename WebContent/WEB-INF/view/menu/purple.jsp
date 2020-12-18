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
<link rel="stylesheet" href="${root }css/purple.css" />
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
			<p>
				내게 맞는 과일 & 채소 색깔을&nbsp
				<form action="${root }game/start">
				<button class="pBlue">확인하여</button>
				</form>
				&nbsp왁2레인저의 도움도 받고, 3만원 이상 구매시 무료 배송 혜택 등도 누리세요.
			</p>
		</div>
		<div class="item1">
			<div class="item1Content">
				<p>올 겨울</p>
				<h1>포동포도하게 포도.</h1>
				<p>건강하게 포동포도 해지자</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexpurple">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="25" />
						
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="25" />
						</form>
					</div>
				</div>

			</div>
		</div>
		<div class="item2">
			<div class="item2Content">
				<p>눈에 좋은</p>
				<h1>블루베리.</h1>
				<p>시력보호에 좋은 블루베리를</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexpurple">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="26" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="26" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item3">
			<div class="item3Content">
				<h1>위장을 따뜻하게 보호해주는 양배추</h1>
				<p>현대인의 속을 달래줄 따뜻한 양배추</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div class="itemBtn1">
						<div>
						<form action="${root }menu/indexpurple">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
							<input type="hidden"
									name="product_id" value="27" />
									</form>
						</div>
						<div>
							<form action="${root }menu/detail">
								<button class="itemBuy1">구매하기</button>
								<i class="fas fa-chevron-right"></i> <input type="hidden"
									name="product_id" value="27" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item4">
			<div class="item4Content">
				<h1>
					한 가지 앞선 <br>따라올 수 없는 영양가?
				</h1>
				<p>지금껏 보지못한 프리미엄 가지.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexpurple">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="28" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="28" />
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
				<p>면역력을 강화해줄 맛과 향 오디</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexpurple">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="29" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="29" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item6">
			<div class="item6Content">
				<h1>작은 크기, 거대한 풍미.</h1>
				<p>한입으로 채우는 거대한 맛과 향.</p>
				<p>지금 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
						<form action="${root }menu/indexpurple">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="30" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="30" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="itemBox">
			<div id="card1" class="card1">
				<div class="card1Content">
					<h1 class="title">The greatest grape</h1>
					<h2>항산화 세월을 바꾸다.</h2>
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
					<h1>Blueberry</h1>
					<h2>우울한 기분 먹어서 혼내주자.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2-black">
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
					<h1>Cabbage</h1>
					<h2>아픈 위장에 건강한 양배추.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2-black">
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
					<h1>EggPlant</h1>
					<h2>새로운 식감, 어른스런 풍미.</h2>
					<p>지금 바로 구매하세요.</p>
					<!-- <div class="itemBtn2-black">
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
					<h1>Mulberry</h1>
					<h2>이보다 고급스러운 달콤함이 있을까요.</h2>
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
					<h1>Coffee</h1>
					<h2>단맛 쓴맛 신맛 셋을 합치면 커피.</h2>
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
	<div class="tothetop"id="tothetop">    
      <span >TOP</span>
    </div>
  <!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />
</body>

<script>
$( '#tothetop' ).click( function() {
    var htmloffset = $( 'html' ).offset();
    $( 'html, body' ).animate( { scrollTop : htmloffset.top }, 400 );
});
</script>

</html>