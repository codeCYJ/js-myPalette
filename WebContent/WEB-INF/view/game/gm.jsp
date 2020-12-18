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
<title>Which color do you want?</title>
<link rel="stylesheet" href="${root }css/game.css">
<script>
	let q_num = 1;
	let layer;
	let score = Number();
	let num = 1;
	let color;
	let imgg;
	function show_question() {
		if (q_num <= 5) {

			layer = eval("document.all.question" + q_num);
			layer.style.display = "inline";
			// hide_question();
		} else {
			if (score <= 6) {
				color = "red";
				imgg = '${root}image/image-0.jpg'

			} else if (score <= 8) {
				color = "green"
				imgg = '${root}image/image-2.jpg'
			} else if (score <= 26) {
				color = "yellow"
				imgg = '${root}image/image-1.jpg'
			} else if (score <= 40) {
				color = "purple"
				imgg = '${root}image/image-3.jpg'
			} else {
				color = "white"
				imgg = '${root}image/image-4.jpg'
			}
			document.all.quizScore.innerHTML = "당신에게 필요한 색은<br>" + color + " 입니다.";
			document.all.quizScore.style.display = "inline";

			let test = document.getElementById("test");
			test.src = imgg;

			test.style.display = "inline";

			document.getElementById("detail").href = "${root}menu/" + color
					+ "_do";
			document.getElementById("detail").style.display = "inline";
		}
	}
	function check_answer1() {

		score += Number(document.getElementById("as" + num).value);
		num++;
		console.log(score);
		layer.style.display = "none";
		q_num++;
		show_question();
	}
	function check_answer2() {

		score += Number(document.getElementById("ad" + num).value);
		num++;
		console.log(score);
		layer.style.display = "none";
		q_num++;
		show_question();
	}
	window.onload = show_question;
</script>
</head>
<body>
	<div id="question1">
		<h1 class="title">1. 거울에 내모습을 봤을때 세월의 흔적이 보입니까?</h1>
		<br>
		<!--  <a class="as" href= "javascript:void(0)" onclick="check_answer()" value=2>예</a><br>
        <a class="as" href="javascript:void(0)" onclick="check_answer()" value=1>아니요</a><br> -->
		<div id="button1">
			<button id="as1" onclick="check_answer1()" value=2>예</button>
			<button id="ad1" onclick="check_answer2()" value=0>아니요</button>
		</div>

	</div>

	<div id="question2" style="display: none">
		<h1 class="title">2. 휴대폰을 2시간 이상 보시나요?</h1>
		<br>
		<div id="button1">
			<button id="as2" onclick="check_answer1()" value=4>예</button>
			<button id="ad2" onclick="check_answer2()" value=0>아니요</button>
		</div>
	</div>

	<div id="question3" style="display: none">
		<h1 class="title">3. 숙면을 취한 다음날 피곤함을 느끼시나요?</h1>
		<br>
		<div id="button1">
			<button id="as3" onclick="check_answer1()" value=8>예</button>
			<button id="ad3" onclick="check_answer2()" value=0>아니요</button>
		</div>
	</div>

	<div id="question4" style="display: none">
		<h1 class="title">4. 회식후 다음날 내몸 같지 않으신가요?</h1>
		<br>
		<div id="button1">
			<button id="as4" onclick="check_answer1()" value=16>예</button>
			<button id="ad4" onclick="check_answer2()" value=0>아니요</button>
		</div>
	</div>
	<div id="question5" style="display: none">
		<h1 class="title">5. 고기 없이 식사를 못하시나요?</h1>
		<br>
		<div id="button1">
			<button id="as5" onclick="check_answer1()" value=32>예</button>
			<button id="ad5" onclick="check_answer2()" value=0>아니요</button>
		</div>
	</div>
	<div id="center">
		<div id="quizScore" style="display: none"></div>
		<br> <img src="" id="test" style="display: none; width: 300px;">
		</img> <br> <a href="" id="detail" style="display: none">보러가기</a>
	</div>
</body>
</html>
