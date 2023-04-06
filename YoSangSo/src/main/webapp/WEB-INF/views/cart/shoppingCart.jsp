<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/slick.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/cart.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>cart</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        <div class="container">
        <c:if test="${empty cartList }">
	        <div class="emptyList">
	        	<p>장바구니가 비었습니다.</p>
	        </div>

       		<div class="post-slider">
                 <p>추천 상품</p>
                 <div class="post-wrap">
                     <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                     <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                     <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                     <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                     <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                 </div>
             </div>
        </c:if>
        <c:if test="${!empty cartList }">
            <div class="info-bar">
                <div>
                    <span>장바구니</span><span>> 주문/결제</span><span>> 완료</span>
                </div>
                <div>
                	<form action="deleteCart" method="post">
                    	<button id="remove-button">전체 상품 삭제</button>
                    	<input type="hidden" value="${cartList[0].memberNo }" name="memberNo" id="memberNo">
                    </form>
                </div>
            </div>
            <div class="cart-in-product">
                <form action="addPayment" name="cart-form" method="post">
               		<c:forEach var="list" items="${cartList}" varStatus="vs">
	                    <div class="cart-in-product-border">
	                        <!-- 이미지 -->
	                        <div>
	                            <div class="img-div">
	                                <img src="${contextPath}/resources/image/all/${list.productName}.jpg" id="image">
	                            </div>
	                        </div>
	                        <!-- 이름과 가격 -->
	                        <div class="product-detail-price">
	                            <!-- 상품내용 -->
	                            <div>
	                             ${ list.productName }
	                            </div>
	                            <!-- 개별가격 -->
	                            <div>
	                                <span class="prc-color">  <c:set var= "eachTotal" value = "${ list.price  * list.buyingRate}"/>  ${ list.price } </span>원
	                            </div>
	                        </div>
	                        <!-- 수량 -->
	                        <div class="counting">
	                            <div>
	                                <input type="text" class="counting-input" value=${ list.buyingRate } disabled >
	                                <input type="hidden" class="productNo" name="productNo" value=${ list.productNo }>
	                                <input type="hidden" class="hiddencount" name="count" value=${ list.buyingRate }>
		                            <button type="button" onclick="plusCount(${vs.index})" id="plus">+</button>
	                                <button type="button" onclick="minusCount(${vs.index})" id="minus">-</button>
	                            </div>
	                        </div>
	                        <!-- 총 가격 -->
	                        <div>
	                            <div>상품 금액</div>
	                            ${ eachTotal } 원
	                        </div>
	                        <!-- 배송비 -->
	                        <div>
	                            <div>배송비</div>
	                            3000 원
	                            
	                        </div>
	                    </div>
                        <input type="hidden" value="${list.cartNo}" name="cartList">
	                   <c:set var="total" value ="${total + eachTotal}"/>
	                </c:forEach>     
                    <div class="price-tag">
                        <div> 
                        	<c:if test="${total>=10000}" ><c:set var="deliveryTip" value="0"/></c:if>
                            <c:if test="${total<10000}" ><c:set var="deliveryTip" value="3000"/></c:if> 
                            상품 금액 ${total} 원 +  (배송비) 
                            ${ deliveryTip }원 = 최종 결제 금액 ${total + deliveryTip }원 
                        </div>
                        <div>
                            <button id="pay-button">결제하기</button>
                        </div>
                    </div>
                </form>
                <div class="post-slider">
                    <p>추천 상품</p>
                    <div class="post-wrap">
                        <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                        <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                        <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                        <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                        <div class="post"><img src="${contextPath}/resources/image/cart/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></div>
                    </div>
                </div>
            </div>
          </c:if>
        </div>


        

    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
    <script src="${contextPath}/resources/js/slick.js"></script>
    <script src="${contextPath}/resources/js/cart.js"></script>
</body>
</html>