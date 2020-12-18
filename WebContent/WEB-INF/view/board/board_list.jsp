<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
  <style>
  .menu-list {

            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 100px;
            height: 300px;
            justify-content: space-around;
        }
  
  </style>
</head>
<body>
 <div class="menu-list">
	 <c:forEach var="dto" items="${dto }">
              <li>
                <a href="${root }board/main?board_info_idx=${dto.board_info_idx}" >${dto.board_info_name }</a>
              </li>
      </c:forEach>
	</div>

</body>
</html>