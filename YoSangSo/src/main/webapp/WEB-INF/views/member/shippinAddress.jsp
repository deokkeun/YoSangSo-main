<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/member/shippinAddress.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>배송지 관리</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        

        <section class="address-box">
        	<section class="address-btn">
                <div class="title-btn">
                    <button>배송지 목록</button>
                </div>
                <div class="title-btn">
                    <button>최근 배송지</button>
                </div>
            </section>
            <section class="modify-box">
                <div>
                	<div class="name-box">
                        <div class="name">${loginMember.memberName}</div>
                    </div>
                    <div class="tel">${loginMember.memberTel}</div>
                    <div class="address">${loginMember.memberAddress}</div>
                </div>

                <div class="modify-btn">
                    <button class="delete">삭제</button>
                    <button class="modify">수정</button>
                </div>
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

    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/member/shippinAddress.js"></script>
</body>
</html>