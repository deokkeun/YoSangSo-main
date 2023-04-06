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
    <link rel="stylesheet" href="${contextPath}/resources/css/review/ReviewUpdate.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>reviewWriting</title>
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
                    
                            <!-- 컨텐트 오른쪽 영역 -->
                            <section class="right">
                                <div></div>
                                <div class="review-content">
                                    <div class="review-content1">
        
                                        <div><h2>리뷰작성</h2></div>
        
                                        <div>
                                            <div id="con-box">
                                                <div id="review-imgBox">
                                                    <img src="/이미지/요생소로고최종.png" alt="상품인데용" id="review-img"> 
                                                </div>
                                                <div id="review-imgExpalin">
                                                    <span>상품 설명</span><br><br> <span id="option-text">옵션</span>
                                                </div>
                                            </div>
                                        </div> 
                                        <!-- 밑에 보더 바텀 줄 -->
                                        <div></div>
        
                                    </div>
        
                                    <div class="review-content2">
        
                                        <div class="review-content2-1">
                                            <div><h1>이현경님, 상품은 어떠셨어요?</h1></div>
                                            <div><span>평점</span></div>
                                            <div></div>
                                        </div>
        
                                        <div class="review-content2-2">
                                            <div><h1>리뷰 작성</h1></div>
                                            <div>
                                                <form action="">
                                                    <textarea name="" id="" cols="100" rows="10" style="resize:none" placeholder="
                                                    다른 고객님에게 도움이 되도록 상품에 대한 솔직한 평가를 남겨주세요.
                                                    자세한 리뷰 내용은 다른 구매자분에게 큰 도움이 됩니다.">
                                                    </textarea>
                                                </form>
                                            </div>
                                        </div> 
        
                                        <div class="review-content2-3">
                                            
                                            <div class="review-file">
                                                <h1>사진 첨부</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <form action="">
                                                    <input type="file">
                                                 </form>
                                            </div>
                                            
                                            <div class="review-img">
                                                <img src="/이미지/요생소로고최종.png" alt="이미지" width="100px">
                                            </div>
                                        </div>
        
        
                                    </div>
        
                                    <div class="review-content3">
                                        <form action="#">
                                            <button type="button" id="reviewCancel">취소하기</button>
                                            <button type="button" id="reviewUpdate">수정하기</button>
                                        </form>
                                    </div>
        
                                </div>
                                <div></div>
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
</body>
</html>