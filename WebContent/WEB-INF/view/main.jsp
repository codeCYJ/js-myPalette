<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 절대 경로 설정 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vegetables & Fruit</title>
<!-- Bootstrap CDN -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="${root } css/main.css">
<link rel="stylesheet" href="${root } css/default.css">
<link rel="stylesheet" href="https://use.typekit.net/uno7uop.css">
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<script src="$js/main.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<!-- <script type="text/javascript">
      $(document).ready(function(){
         $("#headers").load("topNav.html #nav")
         $("#footers").load("footer.html .footer")
      });
</script>  -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap')
	;

.item1 {
	background-image: url(image/1.jpg);
}

.item3 {
	background-image: url(image/3.png);
}

.item4 {
	background-image: url(image/4.png);
}

.item5 {
	background-image: url(image/5.png);
}

.item6 {
	background-image: url(image/6.png);
}

.item7 {
	background-image: url(image/7.png);
}

.item8 {
	background-image: url(image/8.png);
}

.item9 {
	background-image: url(image/9.png);
}
</style>
</head>
<body class="before-load">
	<!-- 상단 메뉴 -->


	<!-- 게시판 미리보기 부분 -->

	<div class="loading">
		<h1 style="margin-right:50px">안녕하세요 왁2 입니다</h1>
		<svg class="loading-circle">
      <circle cx="50%" cy="50%" r="25"></circle>
    </svg>
	</div>
	<div class="main-container">
		<nav class="global-nav local-nav">
			<div class="global-nav-links">
				<c:import url="/WEB-INF/view/include/top_menu.jsp" />
				<!--  <a href="#" class="global-nav-item">Rooms</a>
        <a href="#" class="global-nav-item">Ideas</a>
        <a href="#" class="global-nav-item">Stores</a>
        <a href="#" class="global-nav-item">Contact</a> -->
			</div>
		</nav>
		<section class="scroll-section" id="scroll-section-0">
			<h1 class="type"></h1>
			<div class="sticky-elem sticky-elem-canvas">
				<canvas id="video-canvas-0" width="3840" height="2160"></canvas>
			</div>
			<div class="sticky-elem main-message a">
				<p>
					온전히 빠져들게 하는<br>퍼플 홀릭
				</p>
			</div>
			<div class="sticky-elem main-message b">
				<p>
					몸의 독소를 해독하기 위해<br>하늘이 그린 색깔
				</p>
			</div>
			<div class="sticky-elem main-message c">
				<p>
					부드러운 색깔처럼 <br> 부드러운 맛과 효능
				</p>
			</div>
			<div class="sticky-elem main-message d">
				<p>
					내 심장과 같은 색으로<br>정열적으로 산뜻하게
				</p>
			</div>
		</section>
		<section class="scroll-section" id="scroll-section-1">
			<p class="description">

				<strong>우리는 색깔을 먹는다</strong> <br>
				<br> <br> <br>
			<div class="eatting-color">

				<h2>Red</h2>
				<p style="font-size: 50px; color: gray;">정열적이고 상큼한</p>
				<h2>Yellow</h2>
				<p style="font-size: 50px; color: gray;">너랑 나랑 노랑 시고 달고 부드러움</p>
				<h2>Green</h2>
				<p style="font-size: 50px; color: gray;">내가 그린 맛과 당신이 그린 맛이 같을까</p>
				<h2>Purple</h2>
				<p style="font-size: 50px; color: gray;">정열적이거나 상큼한것 보다 더 짙고
					농후한</p>
				<h2>White</h2>
				<p style="font-size: 50px; color: gray;">하얀만큼 배경이 되기 좋은것 같아요 모든
					것의 기본</p>
			</div>
			</p>
		</section>
		<section class="scroll-section" id="scroll-section-2">
			<div class="sticky-elem sticky-elem-canvas">
				<canvas id="video-canvas-1" width="1920" height="1080"></canvas>
			</div>
			<div class="sticky-elem main-message a">
				<p>
					<small>색깔별로 나누어</small> 입과 하나 되다
				</p>
			</div>
			<div class="sticky-elem desc-message b">
				<p>
				<h2>다른 맛이 나더라도 같은 색깔에는 같거나 비슷한 맛과 향 효능이 담겨있습니다.</h2>
				</p>
				<div class="pin"></div>
			</div>
			<div class="sticky-elem desc-message c">
				<p>
				<h2>
					Design and quality of identity,<br>Made in Wac2
				</h2>
				</p>
				<div class="pin"></div>
			</div>
		</section>
		<section class="scroll-section" id="scroll-section-3">
			<p class="mid-message">
				<strong>왁2레인저</strong><br> 당신의 건강을 책임질<br> 6명의 왁2레인저의 공간.
			</p>
			<canvas class="image-blend-canvas" width="1920" height="1080"></canvas>
			<p class="canvas-caption">Lorem ipsum dolor, sit amet consectetur
				adipisicing elit. Eveniet at fuga quae perspiciatis veniam impedit
				et, ratione est optio porro. Incidunt aperiam nemo voluptas odit
				quisquam harum in mollitia. Incidunt minima iusto in corporis,
				dolores velit. Autem, sit dolorum inventore a rerum distinctio vero
				illo magni possimus temporibus dolores neque adipisci, repudiandae
				repellat. Ducimus accusamus similique quas earum laborum. Autem
				tempora</p>
		</section>
	</div>
	<div class="tothetop" id="tothetop">
		<span>TOP</span>
	</div>

	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />


</body>
<script src="${root }js/main2.js"></script>
<script>
$( '#tothetop' ).click( function() {
    var htmloffset = $( 'html' ).offset();
    $( 'html, body' ).animate( { scrollTop : htmloffset.top }, 400 );
});
</script>
  <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
  <!-- script -->
  <script>
    var typed = new Typed(".type", {
      strings: ["Project", "My Palette."],
      typeSpeed:100,
      backSpeed:70,
      loop:true,
    });
  </script>
</html>



