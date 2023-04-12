<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-sub-style.css">

    <link rel="stylesheet" href="${contextPath}/resources/css/review/ReviewListPage.css">

    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>리뷰리스트</title>
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
                                <!-- 컨텐트 공백 -->
                                <div></div>
                                
                                <div>
                                    
                                    <div class="myReview">
                                       	나의 리뷰
                                    </div>
        
                                    <div class="rightReview">
        
                                        <div class="rigthReviewTop">
                                            <div><a href="reviewList?pageNum=1&amount=3" class="inner-review-tab">작성 가능한 리뷰 (${total })</a></div>
                                            <div><a href="reviewDoneList?pageNum=1&amount=3" class="inner-review-tab">작성한 리뷰 (${doneTotal })</a></div>
                                           
                                        </div>

                                        <div class="rightReivewContent">
                                            
                                            <form action="reviewWriting">
                                                <c:forEach var="list" items="${list}">
                                                    <div class="rightProductImg"> 

                                                        <div>
                                                            <img src="${contextPath}/resources/image/all/${list.productName}.jpg" alt="#" id="reviewImages">
                                                        </div>
                
                                                        <div class="product-info">
                                                            <div>
                                                                <p>${list.orderDate}일 주문</p>
                                                            </div>
                                                            <div>
                                                                <p>${list.productName}</p>
                                                            </div>
                                                        </div>
                                                            <input type="hidden" name="orderNo" value="${list.orderNo}">
                                                        <div id="reviewAddBox">
                                                            <button type="submit" id="reviewAdd">리뷰작성</button><br><br>
                                                        </div>

                                                    </div>
                                                </c:forEach>
                                            </form> 

                                        </div>
                                    </div>
                                    <div class="reviewListBox">
                                    <c:if test="${pageVo.prev}">
                                        <a href="reviewList?pageNum=${pageVo.startPage - 1 }&amount=${pageVo.amount}">&lt;</a> 
                                    </c:if>
                        			<c:forEach var="num" begin="${pageVo.startPage }" end="${pageVo.endPage }">
	                        			<li  class="${pageVo.pageNum eq num ? 'active' : '' }">
	                        				<a href="reviewList?pageNum=${num}&amount=${pageVo.amount}">${num}</a>
	                        			</li>
                        			</c:forEach>
                         			<c:if test="${pageVo.next }">
                        				<a href="reviewList?pageNum=${pageVo.endPage + 1 }&amount=${pageVo.amount}">&gt;</a>
                        			</c:if>
                                    </div>
        
                                </div>
        
                                <!-- 컨텐트 공백 -->
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

     <!-- reviewList.js 연결 -->
     <script src="${contextPath}/resources/js/review/reviewList.js"></script>
</body>
</html>