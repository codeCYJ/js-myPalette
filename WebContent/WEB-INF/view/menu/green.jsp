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
<link rel="stylesheet" href="${root }css/green.css" />
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
				<p>내 안에 키운</p>
				<h1>비타민 너에게 줄게</h1>
				<p>단백질 분해효소가 가득한 키위</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
				<form action="${root }menu/indexgreen">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="13" />
						</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="13" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item2">
			<div class="item2Content">
				<p>콩은 씨앗이죠</p>
				<h1>하나의 생명이 가득담긴.</h1>
				<p>생명에 필요한 모든 영양소</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexgreen">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						 <input type="hidden"
								name="product_id" value="14" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="14" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item3">
			<div class="item3Content">
				<h1>녹차는 영어로 그린티.</h1>
				<p>우리 오늘 뭔가 통하는것 같아요.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div class="itemBtn1">
						<div>
					<form action="${root }menu/indexgreen">
							<button class="itemMore1">더 알아보기</button>
							<i class="fas fa-chevron-right"></i>
							 <input type="hidden"
									name="product_id" value="15" />
									</form>
						</div>
						<div>
							<form action="${root }menu/detail">
								<button class="itemBuy1">구매하기</button>
								<i class="fas fa-chevron-right"></i> <input type="hidden"
									name="product_id" value="15" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="item4">
			<div class="item4Content">
				<h1>
					내안의 수분<br>오이가 채워줄거에요.
				</h1>
				<p>식이섬유가 담고있는 방대한 수분.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexgreen">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="16" />
								</form>
						
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="16" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item5">
			<div class="item5Content">
				<div class="content-title">
					<h1 class="title1">맛있는 영양</h1>
					<h1 class="title2">산뜻한 식감</h1>
				</div>
				<p>이렇게 몸에 좋은 채소는 없을거에요.</p>
				<p>오늘 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexgreen">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="17" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="17" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="item6">
			<div class="item6Content">
				<h1>보이는 그대로, 거대한 영양가.</h1>
				<p>한입으로 채우는 거대한 건강.</p>
				<p>지금 바로 주문하세요.</p>
				<div class="itemBtn1">
					<div>
					<form action="${root }menu/indexgreen">
						<button class="itemMore1">더 알아보기</button>
						<i class="fas fa-chevron-right"></i>
						<input type="hidden"
								name="product_id" value="18" />
								</form>
					</div>
					<div>
						<form action="${root }menu/detail">
							<button class="itemBuy1">구매하기</button>
							<i class="fas fa-chevron-right"></i> <input type="hidden"
								name="product_id" value="18" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="itemBox">
			<div id="card1" class="card1">
				<div class="card1Content">
					<h1 class="title">kiwi will be king</h1>
					<h2>섭취한 단백질을 피와 살로.</h2>
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
					<h1>green bean Are you agree?</h1>
					<h2>이 한알로 잉태되는 하나의 생명.</h2>
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
					<h1>green color green taste</h1>
					<h2>보이는 색과 맛과 향이 같아.</h2>
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
					<h1>cucumber sounds cute</h1>
					<h2>오이, 가장 촉촉한 채소.</h2>
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
					<h1>spinach</h1>
					<h2>고급스럽게, 요리하기 좋은.</h2>
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
					<h1>broccoli</h1>
					<h2>초장과 함께라면 가장 맛있는 색깔.</h2>
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
	</main><div class="tothetop"id="tothetop">    
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