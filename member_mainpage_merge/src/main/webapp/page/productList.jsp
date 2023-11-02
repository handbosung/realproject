<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap">
<link href="/member_mainpage_merge/css/header.css" rel="stylesheet" />
<link href="/member_mainpage_merge/css/productList.css" rel="stylesheet" />
<title>상품 목록</title>
</head>
<body>

	<jsp:include page="header.jsp" />

	<div class="title">상품 목록</div>

	<!-- 여기에 상품 목록 들어갈 부분 -->
	<div class="container">
		<c:forEach var="dto" items="${ProductList }">

			<!-- 상품들 -->
			<div class="product">

				<div class="product.image">
					<img src="<%=request.getContextPath() %>/upload/${dto.file_name}"
						alt="${dto.title}">
				</div>

				<div class="product-info">
					<h3>[${dto.deal_way }]${dto.title }</h3>
				</div>

				<div class="product-price">
					<p>
						<fmt:formatNumber value="${dto.price }" />
						원
					</p>
				</div>

			</div>
		</c:forEach>
	</div>

	<div id="page_control">
		<c:if test="${startPage > pageBlock }">
			<a
				href="./ProductList.com?pageNum=${startPage-pageBlock }&search=${param.search}"
				class="prev-page">이전 페이지</a>
		</c:if>

		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<c:choose>
				<c:when test="${i != 0}">
					<a href="./ProductList.com?pageNum=${i }&search=${param.search}"
						class="page-number">${i }</a>
				</c:when>
			</c:choose>
		</c:forEach>

		<c:if test="${endPage < pageCount }">
			<a
				href="./ProductList.com?pageNum=${startPage+pageBlock }&search=${param.search}"
				class="next-page">다음 페이지</a>
		</c:if>
	</div>





	<footer>
		<p>&copy; 1조 전자기기 중고거래</p>
	</footer>

</body>
</html>