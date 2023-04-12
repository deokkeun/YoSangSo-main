<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/member/login.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js" integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>
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
                <form action="signIn" method="POST">
                    <div>
                        <input type="text" class="input-box" placeholder="아이디(이메일)" name="inputEmail" value="${cookie.saveId.value}" autocomplete="off">
                    </div>
                    <div>
                        <input type="password" class="input-box" placeholder="비밀번호" name="inputPw" autocomplete="off">
                    </div>
	
					<div id="loginResult">
                        <c:if test="${!empty sessionScope.message}">
                            <%= session.getAttribute("message") %>
                        </c:if>
					</div>


                    <div class="status">
                        <div>
                        <c:if test="${!empty cookie.saveId.value}">
                        	<c:set var="chk" value="checked"/>
                        </c:if>
                        
                            <label>
                                <input type="checkbox" name="saveId" ${chk}>로그인 상태 유지
                            </label>
                            
                            
                        </div>
                        <div>
                            <a href="find">아이디 / 비밀번호 찾기 ></a>
                        </div>
                    </div>
                    <div class="login-btn">
                        <button class="btn">로그인</button>
                    </div>

                </form>
                <form action="signUp" method="GET">
                    <button class="signUp-btn">회원가입</button>
                </form>
            </section>
            <hr>
            <section>
                <div>
                    <button class="btn kakao" onclick="kakaoLogin()">카카오 로그인</button>
                </div>
                <div>
                    <button class="btn google">구글 로그인</button>
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
    
    <!-- login.js 연결 -->
    <script src="${contextPath}/resources/js/member/login.js"></script>
</body>
</html>