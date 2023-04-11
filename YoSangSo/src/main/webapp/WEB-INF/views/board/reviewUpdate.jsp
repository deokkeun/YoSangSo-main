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
    <title>reviewUpdate</title>
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
                                <form action="reviewAdd" id="reviewImageContent" enctype="multipart/form-data" method="POST">
                                <div class="review-content">
                                    <div class="review-content1">
        
                                        <div><p>${loginMember.memberName}님의 리뷰 작성란</p></div>
                                        
                                        <div>
                                            <div id="con-box">
                                                <div id="review-imgBox">
                                                    <img src="/이미지/요생소로고최종.png" alt="상품인데용" id="review-img"> 
                                                </div>
                                                <div id="review-imgExpalin">
                                                    <div>
                                                        <p>Doctors Best, Quatrefolic이 함유된 완전 활성 B 복합체, 베지 캡슐 60정</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                        <!-- 밑에 보더 바텀 줄 -->
                                        <div></div>
        
                                    </div>
        
                                    <div class="review-content2">
        
                                        <div class="review-content2-1">
                                            <div><p>${loginMember.memberName}님, 상품은 어떠셨어요?</p></div>
                                            <div>
                                                <label>평점</label>
                                                <input type="number" id="reviewAddRate" name="reviewRate" min="1" max="5" placeholder="점수 1 ~ 5">
                                            </div>
                                            
                                            <div></div>
                                        </div>
        
                                        <div class="review-content2-2">
                                            <div>리뷰 작성</div>
                                            <div>
                                                <textarea name="reivewContentName" id="reivewTextarea" style="resize:none" 
                                                placeholder="리뷰를 남겨주세요."></textarea>
                                            </div>
                                        </div> 
        
                                        <div class="review-content2-3">
                                            
                                            <div class="review-file">
                                                <input type="text" class="upload-name" id="upload-name"
                                                value="이미지를 업로드 하세요" placeholder="이미지를 업로드 하세요" disabled>
                                                <label for="upload-file">파일선택</label>
                                                <input type="file" id="upload-file">
                                            </div>
                                                
                                            
                                            <div class="review-img">
                                                <img src="${contextPath}/resources/image/review/" alt="이미지" width="100px">
                                            </div>
                                        </div>
        
        
                                    </div>
        
                                    <div class="review-content3">
                                        <button type="submit" id="reviewCancel">취소하기</button>
                                        <button type="submit" id="reviewUpdate">수정하기</button>
                                    </div>
                                </form>
        
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
    <!-- reviewWriting.js 연결 -->
    <script src="${contextPath}/resources/js/review/reviewWriting.js"></script>
</body>
</html>