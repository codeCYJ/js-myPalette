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
<link rel="stylesheet" href="${root }css/white.css" />
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
				<p></p>
				<h1>양파의 매운맛 익혀서 달콤하게.</h1>
				<p>물론 그 중간도 있습니다.</p>
				<p>오늘 바로 주문하세요.</p>

				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexwhite">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="19" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="19" />
						</form>
					</div>
				</div>

			</div>
		</div>
		<div class="item2">
			<div class="item2Content">
				<p>모든 요리는</p>
				<h1>무에서 창조되는 거에요.</h1>
				<p>항상 우리 곁에 있는 무</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexwhite">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="20" />
					</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="20" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item3">
			<div class="item3Content">
				<h1>마늘, 어딨소 내 마누라!</h1>
				<p>당연히 집에 있죠.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div class="itemBtn1">
						<div>
						<form action="${root }menu/indexwhite">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
							<input type="hidden"
									name="product_id" value="21" />
						</form>
							
						</div>
						<div>
							<form action="${root }menu/detail">
								<button class="itemBuy1">구매하기</button>
								<i class="fas fa-chevron-right"></i> <input type="hidden"
									name="product_id" value="21" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item4">
			<div class="item4Content">
				<h1>
					배 안에는 <br>단백질 분해효소가 풍부하대요.
				</h1>
				<p>행복이 두배가 되는!!</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexwhite">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="22" />
								
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="22" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item5">
			<div class="item5Content">
				<div class="content-title">
					<h1 class="title1">생각에 도움이 되는</h1>&nbsp
					<h1 class="title2">생강의 효능</h1>
				</div>
				<p>맛보다 필요한 향과 효능</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexwhite">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="23" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="23" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item6">
			<div class="item6Content">
				<h1>거대한 뿌리 그 결과물.</h1>
				<p>한입으로 느끼는 육질과 향 그리고 건강.</p>
				<p>지금 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexwhite">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="24" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="24" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="itemBox">
			<div id="card1" class="card1">
				<div class="card1Content">
					<h1 class="title">onion is only one</h1>
					<h2>고기 다음으로 주용한 맛.</h2>
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
					<h1>radish on my dish</h1>
					<h2>무와 함께하지 않은적이 없어요.</h2>
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
					<h1>garlic on flavor.</h1>
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
					<h1>pear is pair game</h1>
					<h2>맛 있고 몸에 좋기 힘든데 해냈다.</h2>
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
					<h1>ginger moves like zinza</h1>
					<h2>생강은 원래 이렇게 생겼어요.</h2>
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
					<h1>mushroom wish your dish</h1>
					<h2>향이나고. 풍미가 짙고. 경이롭다.</h2>
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