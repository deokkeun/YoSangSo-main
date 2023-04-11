<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-sub-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/member/myPageInfo.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>myPageInfo</title>
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

                    <!-- 기본정보 -->
                    <section class="rightBox">
                        <div class="font-large line">${loginMember.memberName}</div>
                        <div class="line">+(82) ${loginMember.memberTel}</div>
                        <div>${loginMember.memberEmail}</div>
                        <div class="row">
                            <div></div>
                            <button class="update-btn" onclick="location.href='memberInfo'">수정 ></button>
                        </div>
                    </section>

                    <!-- 배송지 -->
                    <section class="rightBox">
                        <div class="row">
                            <div class="font-large">배송지 관리</div>
                            <div class="font-left">구매에서 사용하신 배송지를 관리할 수 있어요.</div>
                            <div></div>
                            <button class="update-btn" onclick="location.href='shippinAddress'">수정 </button>
                        </div>
                    </section>

                    <!-- 프로모션 -->
                    <section class="rightBox">
                        <div class="font-large">프로모션 수신 동의</div>
                        <section class="row line">
                            <div>문자 메시지</div>
                            <div class="toggleBG">
                                <button class="toggleFG"> </button>
                                <div class="toggleFG-off">off</div>
                            </div>
                        </section>
                        <section class="row">
                            <div>이메일</div>
                            <div class="toggleBG">
                                <button class="toggleFG"> </button>
                                <div class="toggleFG-off">off</div>
                            </div>
                        </section>
                    </section>
                    

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

    <!-- myPageInfo.js 연결 -->
    <script src="${contextPath}/resources/js/member/myPageInfo.js"></script>
</body>
</html>