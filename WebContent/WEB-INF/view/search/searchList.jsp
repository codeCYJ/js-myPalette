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
<link rel="stylesheet" href="${root }css/search.css">
</head>
<body>
	<c:import url="/WEB-INF/view/include/top_menu.jsp" />

	<section class="scform">
		<%--    <form action="${root }search/searchList">
      <div class="search">
        <div class="button">
            <i class="fas fa-search"></i>
			<input type="search" name="product_color" placeholder="&#xF002;  과일이름 검색" style="font-family:Arial, FontAwesome" >
        </div>
     </div> 
	            </form>--%>
		<h1>검색어 : ${sh}</h1>
		
	</section>
	<hr>
	<section class="rstform">
		<c:forEach var="list" items="${dto }">
			<div class="result">
				<a href="#" class="fruit"><img class="reSize" src="${root } image/${list.product_color}/${list.product_purchase_img}"></a>
				<div class="title">
					<h2>
						<a href="${root }menu/index${list.product_color }?product_id=${list.product_id}">${list.product_name }</a>
					</h2>
					<p>${list.product_info }</p>
					<p>원산지: ${list.product_origin}</p>
					<p>
						<a class="model" href="${root }menu/index${list.product_color }?product_id=${list.product_id}" >더 알아보기 ></a>
						<!-- <a class="model">구매하기 ></a> -->
					</p>
				</div>
			</div>
		</c:forEach>
	</section>
	<c:import url="/WEB-INF/view/include/bottom_info.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#headers").load("topNav.html #nav")
		$("#footers").load("footer.html .footer")
	});
</script>
</body>
</html>