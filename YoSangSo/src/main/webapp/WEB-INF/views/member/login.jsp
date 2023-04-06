<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/login.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>login</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
                <section id="content">
            <section class="title">
                <div>요생소</div>
            </section>
            <section>
                <form action="">
                    <div>
                        <input type="text" class="input-box" placeholder="아이디">
                    </div>
                    <div>
                        <input type="text" class="input-box" placeholder="비밀번호">
                    </div>
                    <div class="status">
                        <div>
                            <label>
                                <input type="checkbox" id="login-maintain-chk">로그인 상태 유지
                            </label>
                        </div>
                        <div>
                            <a href="">아이디 / 비밀번호 찾기 ></a>
                        </div>
                    </div>
                    <div class="login-btn">
                        <button class="btn">로그인</button>
                    </div>

                </form>
            </section>
            <hr>
            <section>
                <div>
                    <button class="btn kakao"><img src="${contextPath}/resources/image/login/kakao_login.png" ></button>
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
    <script src="${contextPath}/resources/js/login.js"></script>
</body>
</html>