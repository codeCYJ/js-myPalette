<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<link rel="stylesheet" href="${root }css/cart.css">

<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<script src="js/jquery.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<style>
.qnabtn {
	font-size: 15px;
	font-weight: bold;
	border: 1px solid white;
	background-color: white;
	color: rgb(0, 113, 227);
	padding: 5px;
}
</style>

<script>
	$(function() {

		/*     $("#btnList").click(function(){
		 location.href="${path}/shop/product/list.do";
		 });
		 */

		$(".btnDelete").click(function() {
			if (confirm("장바구니를 비우시겠습니까?")) {
				location.href = "${root}cart/deleteAll.do";
			}
		});
	});
</script>
</head>

<body>
	<!-- 상단 메뉴 -->
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />
	
	<main class="cart-main">
		<c:choose>
			<c:when test="${empty sessionScope.user_id }">
				<section class="visuallogout">
					<div class="titlelogout">
						<h2>장바구니가 비어있습니다.</h2>
						<p>
							지정된 제품이 있는지 확인하려면 로그인하십시오.<br>또는 쇼핑을 계속하십시오
						</p>
					</div>
					<ul class="menu">
						<li><a href="${root }user/login">
								<button class="login">로그인</button>
						</a></li>
						<li><a href="${root }main">
								<button class="welcomeM">쇼핑 계속하기</button>
						</a></li>
					</ul>
				</section>
			</c:when>
			<c:otherwise>



				<section class="visual">
					<div class="title">
						<h2>장바구니에 들어 있는 제품입니다</h2>
						<h2>
							<fmt:formatNumber value="${map.sum}" pattern="#,###,###" />
							원
						</h2>
						<p>3만원 이상 주문시 무료배송 서비스가 제공됩니다.</p>
					</div>
				</section>

				<section class="paybox">
					<div class="result-0">
						<ul class="result-0-list">
							<li>상품명</li>
							<li>수량</li>
							<li>합계금액</li>
							<li>삭제</li>
						</ul>
					</div>

					<c:forEach var="row" items="${map.list}">
						<div class="result">
							<div class="result-1">
								<div class="result-1-title">
									<a href="#" class="Mac1"><img class="reSize"
										src="${root }image/${row.product_purchase_img}"></a>
									<div class="title">
										<h2>${row.product_name}</h2>
									</div>
								</div>
								<div class="result-1-option">
									<div class="numberlist">
										<%--    <input type="number" name="amount" style="width:30px;"
										value="<fmt:formatNumber value="${row.amount}" pattern="#,###,###" />"> --%>
										<fmt:formatNumber value="${row.amount}" pattern="#,###,###" /> 개
									</div>
								</div>
								<div class="result-1-moneys">
									<c:set var="am" value="${row.amount }" />
									<h2>
										<fmt:formatNumber value="${row.product_price * am}"
											pattern="#,###,###" /> 원
									</h2>
								</div>
								<div class="result-1-delete">
									<a class="result-delete"
									href="${root}cart/delete.do?cart_id=${row.cart_id}">삭제</a>
								</div>
							</div>
						</div>
					</c:forEach>

				</section>
				<div class="paymentbtn">
					<a href="${root }cart/payment.do">
					<button class="pay">결제</button>
				</div>
				<div class="deletebtn">
					<button class="btnDelete">장바구니 비우기</button>
				</div>



			</c:otherwise>
		</c:choose>


<section class="middle">
			<div class="title2">
				<h2 class="h2first">도움이 더 필요하신가요?</h2>
				<h2 class="h2second">
					<button class="chatbtn">지금 채팅하기</button>
					또는 010-1234-5678 번호로 문의하세요.
				</h2>
			</div>
		</section>
		<section class="about">
			<div class="inner">
				<div class="innerContent">
					<h3>다른 과일들을 만나보세요.</h3>
					<a class="shopbtn" href="${root}menu/red_do">쇼핑하기 ></a>
				</div>
			</div>
		</section>


		<section class="question">

			<div class="title3">
				<h2>구입관련 질문</h2>
				<button id="listbtn" class="listbtn">+</button>
			</div>
			<div class="plusbtn" id="plusbtn">

				<hr>



				<div class="faq">
					<ul>
						<li class="m_li">
							<p>
								<button class="qnabtn">
									<h3>제품을 언제 받아볼 수 있나요?</h3>
								</button>
							</p>
							<div>
								<div class="cont">
									우편 번호를 입력하면 예상 배송 또는 제품 픽업 날짜를 볼 수 있습니다. 주문한 후에 최종 날짜를 알려드립니다.
									모든 예상 날짜는 제품 재고 및 선택한 배송 옵션을 바탕으로 계산됩니다.
									<button class="pickbtn">MyPalette 배송 및 픽업에 대해 더 알아보기 ></button>
								</div>
							</div>
						</li>

					</ul>
					<hr>
				</div>

				<div class="faq">
					<ul>
						<li class="m_li">
							<p>
								<button class="qnabtn">
									<h3>MyPalette Store에 방문하여 물건을 받을 수 있나요?</h3>
								</button>
							</p>
							<div>
								<div class="cont">
									네, 그렇습니다. 픽업을 선택하시면 구매 제품에 대한 결제 단계에서 매장과 픽업 날짜를 선택하게 됩니다. 모든
									제품이 픽업 가능한 것은 아닙니다. 제품 픽업 준비가 되면 문자 메시지를 보내드리겠습니다.
									<button class="pickbtn">MyPalette 배송 및 픽업에 대해 더 알아보기 ></button>
								</div>
							</div>
						</li>
					</ul>
					<hr>
				</div>
				<div class="faq">
					<ul>
						<li class="m_li">
							<p>
								<button class="qnabtn">
									<h3>결제 옵션에는 어떤 것이 있나요?</h3>
								</button>
							</p>
							<div>
								<div class="cont">
									대부분의 신용 카드 및 직불 카드로 결제할 수 있습니다. 결제 가능한 다른 수단으로는 계좌 이체 및 신용 카드
									할부 등이 있습니다. 일부 결제 수단을 사용할 수 없는 제품이 있을 수 있습니다. 자세한 정보는
									080-330-8877 번호로 문의해 주시기 바랍니다.
									<button class="pickbtn">MyPalette 결제 방법 및 가격 정보에 대해 더 알아보기
										></button>
								</div>
							</div>
						</li>
					</ul>
					<hr>
				</div>

				<div class="faq">
					<ul>
						<li class="m_li">
							<p>
								<button class="qnabtn">
									<h3>MyPalette은 교육 할인을 제공하나요?</h3>
								</button>
							</p>
							<div>
								<div class="cont">
									네, 그렇습니다. MyPalette은 학생, 선생님, 학교 관리자 및 직원에 대해 특별 가격을 제공합니다. 이에
									해당한다고 생각하시면
									<button class="pickbtn">MyPalette 교육 할인 스토어</button>
									를 방문하여 제품을 주문하시기 바랍니다.
								</div>
							</div>
						</li>
					</ul>
					<hr>
				</div>


				<div class="faq">
					<ul>
						<li class="m_li">
							<p>
								<button class="qnabtn">
									<h3>할부 옵션에는 어떤 것이 있나요?</h3>
								</button>
							</p>
							<div>
								<div class="cont">
									결제 단계에서 지정된 카드를 사용해 할부로 결제할 수 있습니다. 최소 구입 금액이 적용됩니다 . 약관을 참조하시기
									바랍니다.
									<button class="pickbtn">MyPalette 결제 방법 및 가격 정보에 대해 더 알아보기
										></button>
								</div>
							</div>
						</li>
					</ul>
					<hr>
				</div>


				<div class="faq">
					<ul>
						<li class="m_li">
							<p>
								<button class="qnabtn">
									<h3>자택이 아닌 곳으로 제품을 배송받을 수 있나요?</h3>
								</button>
							</p>
							<div>
								<div class="cont">
									네, 그렇습니다. 결제 단계에서 주소 입력 메시지가 나타나면 원하는 주소를 입력할 수 있습니다.
									<button class="pickbtn">MyPalette 배송 및 픽업에 대해 더 알아보기 ></button>
								</div>
							</div>
						</li>
					</ul>
					<hr>
				</div>


				<div class="faq">
					<ul>
						<li class="m_li">
							<p>
								<button class="qnabtn">
									<h3>방문하려는 MyPalette Store가 고객에게 더 안전한 쇼핑 및 서비스 경험을 제공하기 위해 무슨
										조치를 취하는지 어떻게 알 수 있나요?</h3>
								</button>
							</p>
							<div>
								<div class="cont">
									저희는 고객 여러분이 더 깨끗하고 안전한 매장에서 쇼핑을 즐기실 수 있도록 안전을 최우선으로 하는 조치들을 취하고
									있습니다. 입장 전 건강 체크, 마스크 착용, 입장 인원 제한 등의 조치가 그것입니다. 또한, 고객 여러분을 위한
									새로운 픽업 옵션들도 제공해 드립니다. 가까운 MyPalette Store에 대한 최신 정보는
									<button class="pickbtn">매장 찾기</button>
									에서 확인하실 수 있습니다.
								</div>
							</div>
						</li>
					</ul>

				</div>

			</div>
		</section>

	</main>


	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

</body>
<script>
	$(function() {
		$(document).ready(function() {
			$('#listbtn').click(function() {
				$('#plusbtn').slideToggle('slow');
			});
		});
	});

	$(function() {
		$.fn.extend({
			faq : function() {
				var ts = $(this);
				$.each(ts, function(i, o) {
					$("button", o).on("click", tabmenu);
					function tabmenu() {
						if ($(this).parent().next().is(":hidden")) {
							$("li>div:visible", o).slideDown();
							$(this).parent().next().slideToggle(250);
						} else {
							$("li>div:visible", o).slideUp();
						}
					}
				});
			}
		});

		$(".faq").faq();

	});
</script>


</html>