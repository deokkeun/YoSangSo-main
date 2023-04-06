<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>환불 완료</title>
	<link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/refundDone.css">
	<script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	</head>
	<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
		<div class="content">
            <div>
                <div class="info-bar">
                    <div>
                        <span>환불</span>
                    </div>
                    <div>
                        <span>문의 사항은 1:1 문의를 이용해주세요.</span>
                    </div>
                </div>
            </div>
            <div class="out-line">
            <!-- 메뉴헤드 영역 -->
                <div class="menu-head">
                    <div>상품정보</div>
                    <div>개수</div>
                    <div>환불금액</div>
                    <div>상태</div>
                </div>
                <c:forEach var="list" items="${refundList}">
                <!-- 제품 상세 영역 -->
                <div class="goods-detail">
                    <div>
                        <img src="${contextPath}/resources/image/all/${list.productName}.jpg" id="goods-image">
                    </div>
                    <div>
                        ${list.productName}
                    </div>
                    <div>
                        ${list.buyingRate } 개
                    </div>
                    <div>
                        ${list.price }원
                    </div>
                    <div>
                        취소 완료
                    </div>
                </div>
                <!-- 마지막 라인 영역 -->
                <div class="last-line">
                    <div>
                        취소일 : ${list.refundDate } &nbsp;&nbsp; 주문일 : ${list.orderDate }
                    </div>
                </div>
            	</c:forEach>
            </div>
            <!-- 마무리 내역 선 -->
            <div class="end-line">                        
                <span>취소/환불 내역을 확인할 수 있습니다.</span>
            </div>
        </div>
        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</body>
</html>