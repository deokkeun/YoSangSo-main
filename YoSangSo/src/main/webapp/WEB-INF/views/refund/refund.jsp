<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/refund.css">
	<script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>환불페이지</title>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/common/header.jsp"/>
		
		<div class="container">
		<c:if test="${empty orderList}">
			<div class="not-exist-refund">
				환불할 상품이 존재하지 않습니다.
				<button id="back-button" type="button" onclick="location.href='${contextPath}'">메인 화면으로</button>
			</div>
			
		</c:if>
		<c:if test="${!empty orderList }">
            <div class="info-bar">
                <div>
                    <span>환불신청</span>
                </div>
                <div>
                    <strong>주문내역번호</strong> : ${ orderList[0].orderNo }
                </div>
            </div>
            <form action="refundDone"  name="refund-form" id="main-form" method="post" onsubmit="return false">
                <div class="outer-line">
				<c:forEach var="list" items="${orderList}">
                    <div class="refund-in-product-border">
                        <!-- 이미지 -->
                        <div>
                            <div class="img-div">
                                <img src="${contextPath}/resources/image/all/${list.productName}.jpg" id="image2">
                            </div>
                        </div>
                        <!-- 이름과 가격 -->
                        <div class="product-detail-price">
                            <!-- 상품내용 -->
                            <div id="detail">
                                ${list.productName }
                            </div>
                            <!-- 개별가격 -->
                            <div>
                                <span class="prc-color">${list.price } </span>원
                            </div>
                        </div>
                        <!-- 개수 -->
                        <div>
                            ${list.buyingRate}개
                        </div>
                        <!-- 총 가격 -->
                        <div>
                            <div>상품 금액</div>
                            ${list.price * list.buyingRate} 원
                        </div>
                    </div>
                    <input type="hidden" name="orderNo" value="${list.orderNo}">
                   	<c:set var="sum" value="${sum + list.price * list.buyingRate }"/>
               	</c:forEach>
                    <div class="price-tag">
                        <div>  
                           총 환불 예정 금액 ${sum}원 
                        </div>
                        <div>
                        	<input type="hidden" name="memberNo" value="${ list.memberNo }">
                            <button id="refund-button" type="button" onclick="refund()">환불하기</button>
                        </div>
                    </div>
                </div>         
            </form>
            </c:if>
        </div>
        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
        <script type="text/javascript" src="${contextPath}/resources/js/refund.js"></script>
	</body>
</html>