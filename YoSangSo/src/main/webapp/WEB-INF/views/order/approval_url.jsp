<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/order/approval_url.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="pay-result">
            <section>
                <div class="title-main">장바구니 > 주문 / 결제<span class="title"> > 완료</span></div>
            </section>
            <section class="processing">
                <div>주문을 처리중입니다.</div>
                <div>제품을 발송하게 되면 이메일을 보내드립니다.</div>
                <div>주문 번호: <span><%= request.getAttribute("approval") %></span></div>
                <div>주문 날짜: <span><%= request.getAttribute("approval_date") %></span></div>
            </section>
            <section class="processing-result">
                <section>
                    <div>
                        <img src="${contextPath}/resources/image/order/rocket.gif" alt="">
                        <div class="rocket">로켓 배송</div>
                    </div>
                </section>
                <section class="product-box">
                    <section>
                        <div>제품이 준비되면 문자를 보내드립니다.</div>
                    </section>
                    <section>
                        <div>상품정보</div>
                    </section>
                </section>
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

    <!-- approval_url.js 연결 -->
    <script src="${contextPath}/resources/js/order/approval_url.js"></script>
</body>
</html>