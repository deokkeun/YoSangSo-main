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
    <link rel="stylesheet" href="${contextPath}/resources/css/inquiry/inquiryWriting.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>inquiry</title>
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

                    <section class="right">

                            
                        <div id="left-space"></div>

                    <form action="">
                        <div id="middle-area">
                            <div class="topQuestion">
                                <div>
                                    <h1>1:1 문의</h1>
                                </div>
                                <div>
                                구매하려는 상품에 대해 궁금한 점이 있으신 경우 문의해주세요.
                                </div>
                            </div>
                            
                            <div class="textAreaBox">
                                <div>
                                    <h1>1:1 문의 작성하기</h1>
                                </div>

                                <div>
                                    <textarea name="" id="inquiryContent" cols="100" rows="20" placeholder="문의를 남겨주세요." value="inquiryContent"></textarea>
                                </div>
                            </div>

                            <div class="questionBtnBox">
                                <div class="cancelWritingBox">
                                   
                                        <button id="cancelWritingQ">취소하기</button>
                                   
                                </div>

                                <div class="confirmWritingBox">
                                    
                                        <button id="confirmWritingQ">작성하기</button>
                                    
                                </div>
                            </div>

                        </div>
                    </form>




                        <div id="right-space"></div>

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

    <!-- inquiryAdd.js 연결 -->
    <script src="${contextPath}/resources/js/board/inquiryAdd.js"></script>
</body>
</html>