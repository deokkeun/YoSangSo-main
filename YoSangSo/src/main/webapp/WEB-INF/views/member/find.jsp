<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/member/find.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        

        <section id="find-content">
            <section>
                <div class="find-title">요생소</div>
                <div class="find-sub-title">찾으려는 <div id="memId"> 아이디 </div> / <div id="memPw"> 비밀번호 </div> 를 선택해주세요</div>
            </section>
            <section class="find-box">
                <button class="main-btn">
                    <i class="fa-solid fa-user find-btn"></i>
                    <div>요생소 아이디</div>
                </button>
                <button class="main-btn">
                    <i class="fa-solid fa-user-lock find-btn"></i>
                    <div>요생소 비밀번호</div>
                </button>
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

    <!-- find.js 연결 -->
    <script src="${contextPath}/resources/js/member/find.js"></script>
</body>
</html>