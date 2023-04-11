<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/main-sub-style.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/refund.css">
	<script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>환불페이지</title>
	</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        
            <!-- 컨텐츠 -->
        <section id="content">

            <!-- 컨텐츠 내용 -->
            <section class="content-box">

                <jsp:include page="/WEB-INF/views/common/contentBoxLeft.jsp"/>
                
                <!-- 컨텐츠 내용 오른쪽 -->
                <section  class="content-box-right">
					
					<c:if test="${empty orderList}">
						<div class="not-exist-refund">
							환불할 상품이 존재하지 않습니다.
							<button id="back-button" type="button" onclick="location.href='${contextPath}'">메인 화면으로</button>
						</div>
						
					</c:if>
					<c:if test="${!empty orderList }">
					<div class="container">
			            <div class="info-bar">
			                <div>
			                    <span>환불신청</span>
			                </div>
			            </div>
			                <div class="outer-line">
							<c:forEach var="list" items="${orderList}">
				            	<form action="${contextPath}/refund/refundDone"  name="refund-form" id="main-form" method="post" onsubmit="return false">
				                    <div class="refund-in-product-border">
				                        <div>
				                        <!-- 상품번호 -->
				                            <div class="img-div">
				                                주문번호 : ${list.orderNo} 
				                                <br><br><br><br>
				                                ${list.orderDate } 일 주문
				                            </div>
				                        </div>
				                        <!-- 이름과 가격 -->
				                        <div class="product-detail-price">
				                            <!-- 상품 -->
				                            <div id="detail">
				                                ${list.productName} 포함 ${list.count} 건
				                            </div>

				                        </div>
				                        	<div class="seeDetail" onclick="seeDetail('${list.orderNo}')">상세 보기</div>
				                        <!-- 환불하기 -->
				                        <div>
				                            <input type="hidden" name="memberNo" value="${ list.memberNo }">
				                            <button id="refund-button" type="button" onclick="refund()">환불하기</button>
				                        </div>
				                    </div>
				                    <input type="hidden" name="orderNo" value="${list.orderNo}">
				            	</form>
			               	</c:forEach>
			                </div>         
				        </div>
			            </c:if>
                </section>

            <!-- 컨텐츠 내용 끝 -->
            </section>

        </section>



    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
    <script type="text/javascript" src="${contextPath}/resources/js/refund.js"></script>
</body>
</html>