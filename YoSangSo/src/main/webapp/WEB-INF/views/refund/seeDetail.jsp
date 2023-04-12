<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${contextPath}/resources/css/seeDetail.css">
	<script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>환불 상세 페이지</title>
	</head>
	
	<body>
		<div class="container">
		<c:set var="sum" value="0"/>
			<c:forEach var="list" items="${detailList}">
				<div class="outer-box">
					<!-- 사진 -->
					<div>
						<img src="${contextPath}/resources/image/all/${list.productName}.jpg" id="goods">
					</div>
					<!-- 이름 -->
					<div>
					${list.productName}
					</div>
					<!-- 구매 개수 -->
					<div>
					${list.buyingRate } 개
					</div>
					<!-- 가격 -->
					<div>
					${list.price } 원
					</div>
				</div>
				
				<c:set var ="sum" value= "${ sum + list.price}"/>
			</c:forEach>
			<div class="low">
				<!-- 총 가격 -->
				<div class="all-price">
					총 가격  ${sum} 원
				</div>
				<div class="close">
					<button type="button" onclick="window.close()" id="close-btn">창 닫기</button>
				</div>
			</div>
		</div>
	</body>
</html>