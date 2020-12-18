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
<link rel="stylesheet" href="${root }css/userinfo.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script src="js/jquery.js"></script>

</head>
<body>
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />
	<main class="payinfo">
		<div class="container">
			<div class="list">
				<a class="name" href="#">${sessionScope.user_id } 님</a>
				<ul>
					<li>쇼핑 정보</li>
					<li><a href="${root }userInfo/userorder.do">장바구니</a></li>
					<li><a href="information.html"></a></li>
					<li>계정설정</li>
					<li><a href="${root }userInfo/userinfo">회원정보</a></li>
					<li>고객센터</li>
					<li><a href="${root }userInfo/question">1:1 문의사항</a></li>
				</ul>
			</div>
			<div class="all">
				<div>
					<ul>
						<h3 class="user-fix">회원정보 수정</h3>
					</ul>
				</div>
				<ul>
					<li class="user-info">
						<h4>로그인 정보</h4>
					</li>
					<div class="user-infoMent3">
						<div class="user-infoMent1">SNS 연결</div>
						<p class="user-infoMent2">연결된 SNS 계정으로 로그인 할 수 있습니다.</p>
						<!-- <div>
          <div class="img-icon">
            <a href="#"><img src="naver.png" width="30" height="30"></a>
            <a href="#"><img src="kakao.png" width="30" height="30"></a>
            <a href="#"><img src="facebook.png" width="30" height="30"></a>
            <a href="#"><img src="apple.png" width="30" height="30"></a>
          </div>
        </div> -->
					</div>
					<div>
						<li class="user-info4">
							<h4>회원 정보</h4>
						</li>
						<div class="user-info5">
							<span>성명</span> <span class="none-info">${info.user_name }</span>
						</div>
						<div class="user-info5">
							<span>아이디</span> <span class="none-info">${info.user_id }</span>
						</div>
						<div class="user-info5">
							<span>생일</span> <span class="none-info">${info.user_birth }</span>
						</div>
						<div class="user-info5">
							<span>주소</span> <span class="none-info">${info.user_addr }</span>
						</div>
						<div class="fix-info">
							<input class="fix-btn" type="submit" value="본인인증으로 정보 수정하기">

						</div>
						   <div class="email-btn">
          <h5> 이메일</h5>
        </div>
     <div class="apear-tag">
							<div class="change-btn3">
								<h5>wak2@naver.com</h5>

								<input class="change-btn" type="submit" value="변경">
							</div>
							<div class="email-on">
								<input type="text" class="e-address" placeholder="이메일 입력"><br>
								<div class="input-email">
									<h6>이메일 주소를 입력하세요.</h6>
								</div>
								<br> <input class="change-cancel" type="submit"
									value="변경 취소">&nbsp<input class="sending" type="submit"
									value="인증메일 발송">

							</div>

							<div>
								<div class="user-address">
									<span class="user-info4">
										<h4>주소정보</h4>
									</span>
								</div>
								<div>
									<input class="address-info" type="text"> <input class="change-btn2"
										type="submit" value="우편번호 검색">
									<div>
										<input type="text" class="address" placeholder="주소">
									</div>
									<div>
										<input type="text" class="address" placeholder="상세주소">
									</div>
									<div>
										<input class="fix-btn" type="submit" value="저장하기">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="user-out">
						<li class="user-out-li">
							<h4>마케팅 수신 및 활용 동의</h4>
						</li>
					</div>

					<div class="text-agree-all">
						<div class="text-agree">
							<input type="checkbox" value="문자메시지">
							<h6>문자메시지</h6>
							<input type="checkbox" value="문자메시지">
							<h6>이메일</h6>
						</div>
						<br>
						<div class="comment">
							<span>
								<h6>서비스의 중요 안내사항 및 주문/배송에 대한 정보는 위 수신 여부와 관계없이 발송됩니다.</h6>
							</span>
						</div>
					</div>
					<div>
						<a class="user-delete" href="">
							<h6>회원탈퇴</h6>
						</a>
					</div>
			</div>
		</div>
	</main>
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />
</body>
<script src="${root }js/userInfo.js" ></script>
</html>