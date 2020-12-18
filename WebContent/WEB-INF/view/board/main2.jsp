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
<link rel="stylesheet" href="${root }css/boardselect.css">
<!-- Bootstrap CDN -->
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

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

</head>
<body>

	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />

	<section class="naviforms">
		<div class="faq">
			<h2><a href="${root }board/main.do">FAQ</a></h2>
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
	<section class="allform">
		<div class="container" style="margin-top: 100px">
			<div class="card">
				<div class="body">
					<h2 class="title">${boardInfoName }</h2>
					<table class="type08" id='board_list'>
						<thead>
							<tr>
								<th class="text">글번호</th>
								<th class="text1">제목</th>
								<th class="text2">작성자</th>
								<th class="text3">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var='obj' items="${contentList }">
								<tr>
									<td class="text">${obj.content_idx }</td>
									<td><a
										href='${root }board/read?board_info_idx=${board_info_idx}&content_idx=${obj.content_idx}&page=${page}'>${obj.content_subject }</a>
									</td>
									<td class="text2">${obj.content_writer_name }</td>
									<td class="text3">${obj.content_date }</td>

								</tr>
							</c:forEach>


						</tbody>
					</table>

					<div class="bottombtn">

						<c:choose>
							<c:when test="${pageBean.prevPage <= 0 }">
								<div class="page">
									<a href="#" class="pagelink"><button class="before">이전</button></a>
								</div>
							</c:when>
							<c:otherwise>
								<a
									href="${root }board/main2?board_info_idx=${board_info_idx}&page=${pageBean.prevPage}"
									class="pagelink"><button class="before">이전</button></a>

							</c:otherwise>
						</c:choose>
						<div class="page">
							<c:forEach var='idx' begin="${pageBean.min }"
								end='${pageBean.max }'>
								<c:choose>
									<c:when test="${idx == pageBean.currentPage }">
										<a
											href="${root }board/main2?board_info_idx=${board_info_idx}&page=${idx}"
											class="pagelink"><button class="one">${idx }</button></a>
									</c:when>
									<c:otherwise>
										<a
											href="${root }board/main2?board_info_idx=${board_info_idx}&page=${idx}"
											class="pagelink"><button class="one">${idx }</button></a>
									</c:otherwise>
								</c:choose>

							</c:forEach>
						</div>
						<div class="page">
							<c:choose>
								<c:when test="${pageBean.max >= pageBean.pageCnt }">
									<a href="#" class="pagelink"><button class="next">다음</button></a>

								</c:when>
								<c:otherwise>
									<a href="${root }board/main2?board_info_idx=${board_info_idx}&page=${pageBean.nextPage}"
										class="pagelink"><button class="next">다음</button></a>
								</c:otherwise>
							</c:choose>
						</div>


					</div>

					<div class="text-right">
					<a href="${root }board/write?board_info_idx=${board_info_idx}"
			class="btnprimary"><button class="writebtn">글쓰기</button></a>
					</div>

				</div>
			</div>
		</div>
	</section>
	<%-- 
	<h4 class="card-title">${boardInfoName }</h4>
	<table class="table table-hover" id='board_list'>
		<thead>
			<tr>
				<th class="text-center d-none d-md-table-cell">글번호</th>
				<th class="w-50">제목</th>
				<th class="text-center d-none d-md-table-cell">작성자</th>
				<th class="text-center d-none d-md-table-cell">작성날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var='obj' items="${contentList }">
				<tr>
					<td class="text-center d-none d-md-table-cell">${obj.content_idx }</td>
					<td><a
						href='${root }board/read?board_info_idx=${board_info_idx}&content_idx=${obj.content_idx}&page=${page}'>${obj.content_subject }</a></td>
					<td class="text-center d-none d-md-table-cell">${obj.content_writer_name }</td>
					<td class="text-center d-none d-md-table-cell">${obj.content_date }</td>

				</tr>
			</c:forEach>
		</tbody>
	</table> --%>


	<%-- <ul>
		<c:choose>
			<c:when test="${pageBean.prevPage <= 0 }">
				<li class="page-item disabled"><a href="#" class="page-link">이전</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a
					href="${root }board/main2?board_info_idx=${board_info_idx}&page=${pageBean.prevPage}"
					class="page-link">이전</a></li>
			</c:otherwise>
		</c:choose>
		<c:forEach var='idx' begin="${pageBean.min }" end='${pageBean.max }'>
			<c:choose>
				<c:when test="${idx == pageBean.currentPage }">
					<li class="page-item active"><a
						href="${root }board/main2?board_info_idx=${board_info_idx}&page=${idx}"
						class="page-link">${idx }</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a
						href="${root }board/main2?board_info_idx=${board_info_idx}&page=${idx}"
						class="page-link">${idx }</a></li>
				</c:otherwise>
			</c:choose>

		</c:forEach>
		<c:choose>
			<c:when test="${pageBean.max >= pageBean.pageCnt }">
				<li class="page-item disabled"><a href="#" class="page-link">다음</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a
					href="${root }board/main2?board_info_idx=${board_info_idx}&page=${pageBean.nextPage}"
					class="page-link">다음</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
	<div class="text-right">
		<a href="${root }board/write?board_info_idx=${board_info_idx}"
			class="btn btn-primary">글쓰기</a>
	</div> --%>

	<!-- 하단 정보 -->
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />

	<%-- 	
		<div class="menu-list">	
		
			<c:forEach var='obj' items='${dto }'>
			<div>
				<a href="${root }board/customer?customer_info_idx=${obj.customer_info_idx}">${obj.customer_info_name }</a>
			</div>
			</c:forEach>
		
		</div> --%>
</body>
</html>






