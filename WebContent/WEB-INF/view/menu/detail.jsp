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
<link rel="stylesheet" href="${root}css/purchase.css">
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
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
	
	<form name="form1" method="get" action="${root }cart/insert.do">
		<div class="grid">
			<div class="grid-img">
				<img class="img-main" src="${root }image/${dto.product_purchase_img}"></img>

				<div class="img-sub">
					<c:forEach var="img" items="${img }">
						<img class="img-sub1 sub-small"
							src="${root }image/${dto.product_color }/${img.main_img}"></img>
					</c:forEach>
				</div>
			</div>
			<div class="grid-content">
				<div class="content-title">${dto.product_name }</div>
				<div class="content-price">${dto.product_price }원</div>
				<div class="content-madein">원산지 - ${dto.product_origin }</div>
				<div class="content-delivery">
					택 &nbsp;&nbsp;배 - 3000원 (주문시 결제)</span>
				</div>
				<div class="content-counter">
					<div class="counter-title">
						<div class="counter-counts">
							<dl>
								<dd>
									<div class="qty">
										<div class="minus">
											<a href="javascript:change_qty2('m')">-</a>
										</div>
										<input type="text" name="amount" id="ct_qty" value="1"
											readonly="readonly">
										<div class="plus">
											<a href="javascript:change_qty2('p')">+</a>
										</div>
									</div>
								</dd>
							</dl>
							<dl class="counts-price">
								<dd id="#total_amount" class="counts-count">${dto.product_price }</dd>
								<dd>&nbsp;원&nbsp;</dd>
							</dl>
						</div>
					</div>
				</div>
				<div id="#total_amount2" class="content-priceall">
					<span>총 상품금액</span>
					<dl class="counts-price">
						<dd id="#total_amount2" class="counts-count2">${dto.product_price+3000 }</dd>
					</dl>
					<span>&nbsp;원</span>
				</div>
				<div class="content-btn">
					<input type="hidden" name="product_id" value="${dto.product_id }">
					<input type="submit" value="장바구니" class="btn-bag">
					<!-- <a class="btn-bag" href="#">장바구니</a> -->
					<a class="btn-purchase" href="#">구매하기</a>
				</div>
			</div>
		</div>
	</form>
	<%--   <form name="form1" method="get" action="${root }cart/insert.do">
								<input type="hidden" name="product_id" value="${dto.product_id }">
								
								<select name="amount">
									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>&nbsp;개 
							<input type="submit" value="장바구니에 담기">
							</form> <a href="${root}main">상품목록</a> --%>
	<div class="gridlast">
		<div class="last-title">같은 색상 과일들을 더 알아보세요!</div>
		<div class="last-img">
			<span class="img-1"><img src="${root }image/yellow/pum1.png"></span>
			<span class="img-2"><img
				src="${root }image/yellow/orange1.png"></span> <span class="img-3"><img
				src="${root }image/yellow/carrot1.png"></span> <span class="img-4"><img
				src="${root }image/yellow/paprika1.png"></span> <span class="img-5"><img
				src="${root }image/yellow/banana1.png"></span> <span class="img-6"><img
				src="${root }image/yellow/pineapple1.png"></span>
			<!-- <img src="https://source.unsplash.com/random6"
        onmouseenter="zoomIn(event)" 
        onmouseleave="zoomOut(event)" -->
		</div>
	</div>
	<%-- <h2>상품정보</h2>
	<table>
		<tr>
			<td><img src="${root }image/orange/${dto.product_url }"></td>
			<td align="center">
				<table>
					<tr>
						<td>상품명</td>
						<td>${dto.product_name }</td>
					</tr>

					<tr>
						<td>가격</td>
						<td>${dto.product_price }</td>
					</tr>


					<tr>
						<td colspan="2">
							<form name="form1" method="get" action="${root }cart/insert.do">
								<input type="hidden" name="product_id" value="${dto.product_id }">
								
								<select name="amount">
									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>&nbsp;개 
							<input type="submit" value="장바구니에 담기">
							</form> <a href="${root}main">상품목록</a>
						</td>
					</tr>
				</table>
	</table> --%>
	<%-- 
	<form name="form1" method="get" action="${root }cart/main_proc">
		<p>
			
			<select>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>

			</select> 
			<input type="submit" value="장바구니"/>
		</p>
	</form>
 --%>
	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

	<script src="${root }js/purchase.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script>
		function change(num) {
			var x = document.form;
			var y = Number(count.value) + num;
			if (y < 1)
				y = 1;
			x.count.value = y;
		}

		Number.prototype.format = function() {
			if (this == 0)
				return 0;

			var reg = /(^[+-]?\d+)(\d{3})/;
			var n = (this + '');

			while (reg.test(n))
				n = n.replace(reg, '$1' + ',' + '$2');

			return n;
		};

		String.prototype.format = function() {
			var num = parseFloat(this);
			if (isNaN(num))
				return "0";

			return num.format();
		};

		var basic_amount = parseInt('${dto.product_price}');

		function change_qty2(t) {
			//var min_qty = '수량버튼'*1; 
			var min_qty = 1;
			var this_qty = $("#ct_qty").val() * 1;
			var max_qty = '200'; // 현재 재고 
			if (t == "m") {
				this_qty -= 1;
				if (this_qty < min_qty) {
					//alert("최소구매수량 이상만 구매할 수 있습니다."); 
					alert("수량은 1개 이상 입력해 주십시오.");
					return;
				}
			}

			else if (t == "p") {
				this_qty += 1;
				if (this_qty > max_qty) {
					alert("죄송합니다. 재고가 부족합니다.");
					return;
				}
			}

			// 택배비 제외 금액
			var show_total_amount = basic_amount * this_qty;
			//$("#ct_qty_txt").text(this_qty); 
			$("#ct_qty").val(this_qty);
			$("#it_pay").val(show_total_amount);
			$(".counts-count").html(show_total_amount.format());

			// 택배비 포함 금액
			var show_total_amount2 = basic_amount * this_qty + 3000;
			//$("#ct_qty_txt").text(this_qty); 
			$("#ct_qty").val(this_qty);
			$("#it_pay").val(show_total_amount);
			if(show_total_amount >= 30000){
				$(".counts-count2").html(show_total_amount.format());
			}else{
				
			$(".counts-count2").html(show_total_amount2.format());
			}
		}
		
		
	</script>
</body>
</html>