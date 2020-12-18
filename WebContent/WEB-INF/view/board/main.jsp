<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 절대 경로 설정 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<%-- <c:url var="root" value="/" />  --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- Bootstrap CDN -->
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/board.css">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR&display=swap')
	;
</style>
<script src="${root }js/jquery.min.js"></script>
<script>
	$(function() {
		$(document).ready(function() {
			$('.listbtn').click(function() {
				$('.plusbtn').slideToggle('slow');
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
		$(".faq2").faq();
	});
</script>
</head>
<body>

	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />

	<section class="naviforms">
		<div class="faq">
			<h2>FAQ</h2>
		</div>
		<div class="topnav">
			<c:forEach var="dto" items="${board_list }">
				<ul>
					<li class="nav-item"><a
						href="${root }board/main2?board_info_idx=${dto.board_info_idx}">${dto.board_info_name }</a>
					</li>

				</ul>
			</c:forEach>
		</div>
	</section>

	<!-- 게시글 리스트 -->
	<section class="topform">
		<div class="container">
			<div class="row">
				<c:forEach var='sub_list' items="${list }" varStatus="idx">
					<div class="paylist">
						<div class="card shadow">
							<div class="payforms">
								<h2 class="card-title">${board_list[idx.index].board_info_name }</h2>
								<table class="type08">
									<thead>
										<tr>
											<th>글번호</th>
											<th>제목</th>
											<th>작성날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var='obj' items='${sub_list }'>
											<tr>
												<td>${obj.content_idx }</td>
												<th><a
													href='${root }board/read?board_info_idx=${board_list[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1'>${obj.content_subject }</a></th>
												<td>${obj.content_date }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

								<a class="btn-more"
									href="${root }board/main2?board_info_idx=${board_list[idx.index].board_info_idx}"><button
										class="morebtn">더보기</button></a>
							</div>
						</div>
					</div>


				</c:forEach>
			</div>
		</div>
	</section>
	<section class="question" style="margin-bottom: 20px">
		<div class="title3">
			<h2>자주묻는질문</h2>
			<button class="listbtn">+</button>
		</div>
		<div class="plusbtn">
			<hr>
			<div class="faq2">
				<ul>
					<li class="m_li">
						<p>
							<button class="qnabtn">
								<h3>Q. 과일어카운트계정에 대한 문의는 어디로 하나요?</h3>
							</button>
						</p>
						<div class="cont">A. 삼성 서비스 이용을 위한 회원가입/로그인 등 삼성계정 관련 문의는 ☎
							1588-3366으로 문의하시기 바랍니다.</div>
					</li>
				</ul>
			</div>
			<div class="faq2">
				<ul>
					<li class="m_li">
						<p>
							<button class="qnabtn">
								<h3>Q. 지금 무슨생각 하시나요</h3>
							</button>
						</p>
						<div class="cont">A. 삼성 서비스 이용을 위한 회원가입/로그인 등 삼성계정 관련 문의는 ☎
							1588-3366으로 문의하시기 바랍니다.</div>
					</li>
				</ul>
			</div>
			<div class="faq2">
				<ul>
					<li class="m_li">
						<p>
							<button class="qnabtn">
								<h3>Q. 결제 옵션에는 어떤 것이 있나요?</h3>
							</button>
						</p>
						<div class="cont">A. 삼성 서비스 이용을 위한 회원가입/로그인 등 삼성계정 관련 문의는 ☎
							1588-3366으로 문의하시기 바랍니다.</div>
					</li>
				</ul>
			</div>
			<div class="faq2">
				<ul>
					<li class="m_li">
						<p>
							<button class="qnabtn">
								<h3>Q. Apple은 지역 할인을 적용해주나요?</h3>
							</button>
						</p>
						<div class="cont">A. 삼성 서비스 이용을 위한 회원가입/로그인 등 삼성계정 관련 문의는 ☎
							1588-3366으로 문의하시기 바랍니다.</div>
					</li>
				</ul>
			</div>
			<div class="faq2">
				<ul>
					<li class="m_li">
						<p>
							<button class="qnabtn">
								<h3>Q. 할부 옵션에는 어떤 것이 있나요?</h3>
							</button>
						</p>
						<div class="cont">A. 삼성 서비스 이용을 위한 회원가입/로그인 등 삼성계정 관련 문의는 ☎
							1588-3366으로 문의하시기 바랍니다.</div>
					</li>
				</ul>
			</div>
			<div class="faq2">
				<ul>
					<li class="m_li">
						<p>
							<button class="qnabtn">
								<h3>Q. 자택이 아닌 곳으로 제품을 배송받을 수 있나요?</h3>
							</button>
						</p>
						<div class="cont">A. 삼성 서비스 이용을 위한 회원가입/로그인 등 삼성계정 관련 문의는 ☎
							1588-3366으로 문의하시기 바랍니다.</div>
					</li>
				</ul>
			</div>
			<div class="faq2">
				<ul>
					<li class="m_li">
						<p>
							<button class="qnabtn">
								<h3>Q. 과일맛있다블라블라블라</h3>
							</button>
						</p>
						<div class="cont">A. 삼성 서비스 이용을 위한 회원가입/로그인 등 삼성계정 관련 문의는 ☎
							1588-3366으로 문의하시기 바랍니다.</div>
					</li>
				</ul>
			</div>
		</div>
	</section>


	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />


</body>
</html>






