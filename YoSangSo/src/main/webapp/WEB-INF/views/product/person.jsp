<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/product/person.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
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

                <section class="content-box-left">
                    <div>
                        <a href="history.back()" class="fa-solid fa-arrow-left" target="#"></a>
                    </div>
                    <section class="content-box-left-title">
                        <div class="person-img">
                            <img src="${contextPath}/resources/image/index/인체이미지누끼.png" alt="인체이미지" width="80px">
                            <img src="#" alt="두뇌" class="person-img-heart">
                        </div>
                        <div>
                            <div class="title-sub">
                                #두뇌 #눈 #심장 #간 #소화 #뼈,관절 #호흡기
                            </div>
                            <div class="title">부위별 추천 비타민을 알고싶어요!</div>
                        </div>
                    </section>
                    <section class="content-box-left-content">
                    
                    <!-- class="people-bg" -->
                        <ul>
                            <li>
                                <button class="list" value="brains" onclick="goTop()">
                                    <h2>두뇌</h2>
                                    <p></p>
                                    <p>#공부 #뇌졸증</p>
                                </button>
                            </li>
                            <li>
                                <button class="list" value="eyes" onclick="goTop()">
                                    <h2>눈</h2>
                                    <p></p>
                                    <p>#시력감소 #난시 #근시 #원시</p>
                                </button>
                            </li>
                            <li>
                                <button class="list" value="heart" onclick="goTop()">
                                    <h2>심장</h2>
                                    <p></p>
                                    <p>#어지러움 #혈압</p>
                                </button>
                            </li>
                            <li>
                                <button class="list" value="liver" onclick="goTop()">
                                    <h2>간</h2>
                                    <p></p>
                                    <p>#피로 #술</p>
                                </button>
                            </li>
                            <li>
                                <button class="list" value="digestion" onclick="goTop()">
                                    <h2>소화</h2>
                                    <p></p>
                                    <p>#소화장애</p>
                                </button>
                            </li>
                            <li>
                                <button class="list" value="bone" onclick="goTop()">
                                    <h2>뼈, 관절</h2>
                                    <p></p>
                                    <p>#골다공증</p>
                                </button>
                            </li>
                            <li>
                                <button class="list" value="respiratory" onclick="goTop()">
                                    <h2>호흡기</h2>
                                    <p></p>
                                    <p>#활성산소</p>
                                </button>
                            </li>
                        </ul>

                    </section>
                </section>
	
			
			
                <section class="content-box-right-content people-bg">
                    <section>
                        <h2 id="right-title" class="title"></h2>
                        <div id="right-sub-title"></div>
                    </section>
                    <section>
                        <ul id="list-box">
              				<div>요생소에 방문해주셔서 감사합니다!!</div>
              				
              				<div>신체 부위별 권장 비타민</div>
                            
                        </ul>

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

    <!-- people.js 연결 -->
    <script src="${contextPath}/resources/js/product/person.js"></script>
</body>
</html>