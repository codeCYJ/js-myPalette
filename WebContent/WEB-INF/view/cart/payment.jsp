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
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap');
</style>

<link rel="stylesheet" href="${root }css/payment.css">
 
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<script src="js/jquery.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script>
$(function(){
	
	$(".complete").click(function(){
		if(confirm("주문/결제가 완료되었습니다!")){
			location.href="${root}cart/paymentDone.do";
		}
	});
	
});
  
</script>
	
<style>
	.qnabtn{
  
  font-size: 15px;
  font-weight: bold;
  border: 1px solid white;
  background-color: white;
  color: rgb(0,113,227);
  padding: 5px;

}
	</style>

</head>

<body>
	<!-- 상단 메뉴 -->
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />
  <div class="shopping">
    <div class="shoppinginfo"><span></span><p>결제하기</p><span></span></div>
    <div class="paymentmethod">
      <button class="creditcard" id="creditcard" onclick="cssChange1()">
        <i class="far fa-credit-card"></i>
        <p>credit card</p>
      </button>
      <button class="giftcard" id="giftcard" onclick="cssChange2()">
        <i class="far fa-money-bill-alt"></i>
        <p>gift card</p>
      </button>
      <button class="paypal" id="paypal" onclick="cssChange3()">
        <i class="fab fa-cc-paypal"></i>
        <p>paypal</p>
      </button>
    </div>
    <div class="main" id="container">
      <div class="main-address" id="card">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <div class="content">
          <div class="address-title">
            <h1>Shopping Address</h1>
          </div>
          <div class="address-main">
            <div class="address-name">
              <p>Full Name</p>
              <input class="name-input" type="text" value="${info.user_name }">
            </div>
            <div class="address-1">
              <p>address1</p>
              <input class="address1-input" type="text" value="${info.user_addr }">
            </div>
            <div class="address-2">
              <p>address-2</p>
              <input class="address2-input" type="text" placeholder="상세주소 입력">
            </div>
            <div class="address-phone">
              <p>PhoneNumber</p>
              <input class="phone-input" type="text" placeholder="전화번호 입력">
            </div>
          </div>
        </div>
      </div>
      <div class="main-info" id="card">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <div class="content">
          <div class="info-title">
            <h1>Credit Card Info</h1>
          </div>
          <div class="info-main">
          <div class="info-amount">
              <p>Total Amount</p><!-- 
              <input class="card-input" type="text"> -->
                <h2><fmt:formatNumber value="${map.sum}" />원</h2>
            </div>
            <div class="info-card">
              <p>Name on Card</p>
              <input class="card-input" type="text">
            </div>
            <div class="info-number">
              <p>Card Number</p>
              <input class="number-input" type="text" placeholder="0000-0000-0000-0000">
            </div>
            <div class="info-exp">
              <div class="exp-cvc">
                <p>CVC Number</p>
                <input class="cvc-input" type="text" placeholder="CVC">
              </div>
              <div class="exp-month">
                <p>Exp Month</p>
                <input class="cvc-input" type="number" id="month" min="1" max="12">
              </div>
              <div class="exp-date">
                <p>Exp Date</p>
                <input class="cvc-input" type="number" id="date" min="1" max="31">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <div >
        <span></span><button class="complete">complete</button><span></span>
      </div>
  </div>
  
	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

</body>
 <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="${root }js/payment.js"></script>

</html>