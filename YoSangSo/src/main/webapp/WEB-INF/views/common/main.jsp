<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 메인페이지 css  -->
    <link rel="stylesheet" href="resources/css/main.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <!-- 슬라이더 파일다운받은거 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <title>요생소 : 요즘 생활의 소중함</title>
    
    
    <!-- 요생소 파비콘 (Chrome, Safari, IE 용) -->
	<link rel="icon" href="resources/image/logo/favicon.ico" type="image/x-icon">
	
    <!--탑 버튼-->
    <a id="topBtn" href="#">
    <i class="fa-solid fa-angle-up fa-2x"></i> 
    </a> 
    
  
</head>
<body>

    <!-- 헤더, 컨텐츠 -->
    <main>
  

    	<!-- 헤더 -->
    	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    
    
        <!-- 내용 작성 공간입니다.(template2) -->
        <!-- content 전체 감싸는 영역 -->
        <section class="content-container">
        
            <!-- 왼쪽사이드 -->
            <section class="leftSide">
            </section>
            
			

            <!-- 가운데페이지 -->
            <section class="center">


                <!-- 1. 메인페이지 슬라이더 사진 영역 -->
                <section class="mainViewPhoto">
                                 
                    <div id="visual">
                        <div class="on">
                        		<a href="${contextPath}/member/login">
                            	<img src="resources/image/index/슬라이더용1오픈이벤트.png"  width="100%">
                          		</a>
                        </div>

                        <div>
                            <img src="resources/image/index/슬라이더용2닥터스베스트.png" width="100%">
                        </div>	
 				
                    	<div>
                	        <img src="resources/image/index/슬라이더용3라이프익스텐션.png" width="100%">
                        </div>
                    </div>
                         

                </section>

			

                <!-- 2 베스트부분 시작 -->
                <section class="bestPart">

                    <!-- 2-1 베스트 글씨 -->
                    <div class="mainFont">베스트</div>
                    
         

					<!-- items : 반복접근객체(배열,컬렉션) / 
						 var   : 반복 변수명  ${mpdList[i-1].price}/
						 begin : 반복시 시작값 
						 end   : 반복시 종료값 
						 step  : 반복시 증가값
						 varStatus : 반복상태와 관련된 정보 제공 변수선언 -->
                    <!-- 2-2 베스트 제품 -->
                    <div class="bestItem">
                    
                    	<c:forEach begin="0" end="3" var="i" items="${mbpdList}">
					  		<div class="BNitem">
					    		<a href="${contextPath}/product/productDetail?ProductNo=${i.productNo}"> 
					      			<div class="BNitemPic">
					      	  			<figcaption>${i.productName}<hr>${i.ingredient}</figcaption>
					        			<img src="resources/image/all/${i.productName}.jpg">
					      			</div>
					    		</a>
					    			<div class="BNitemName">
					      				<a href="product/productDetail?ProductNo=${i.productNo}">${i.productName}</a>
					    			</div>
					    			<div class="BNitemPrice">
					    				<fmt:formatNumber value="${i.price}" pattern="#,###"/>원
					    			</div>
					  		</div>
					  	</c:forEach>
					</div>

                    
                   <!-- 2-3 베스트제품더보기 -->
                    <div>
                        <div class="more bestMore">
                            <a href="${contextPath}/product/bestProduct">더보기 
                            		<i class="fa-solid fa-angles-right" id="allow"></i>
                            </a>
                        </div>
                    </div> 

                </section>




                <!-- 3 신상품부분 시작 -->
                <section class="newPart">

                    <!-- 3-1 신상품 글씨 -->
                    <div class="mainFont">신상품</div>

                    <!-- 3-2 신상품 -->
                    <div class="newItem">
                    
                    	<c:forEach begin="0" end="3" var="i" items="${mnpdList}">
					  		<div class="BNitem">
					    		<a href="product/productDetail?ProductNo=${i.productNo}">
					      			<div class="BNitemPic">
					      	  			<figcaption>${i.productName}<hr>${i.ingredient}</figcaption>
					        			<img src="resources/image/all/${i.productName}.jpg">
					      			</div>
					    		</a>
					    			<div class="BNitemName">
					      				<a href="product/productDetail?ProductNo=${i.productNo}">${i.productName}</a>
					    			</div>
					    			<div class="BNitemPrice">
					    				<fmt:formatNumber value="${i.price}" pattern="#,###"/>원
					    			</div>
					  		</div>
					  	</c:forEach>
					</div>
				
                    
                    


                    <!-- 3-3 신제품 더보기 -->
                    <div>
                        <div class="more newMore">
                            <a href="${contextPath}/product/newProduct">더보기
                            	<i class="fa-solid fa-angles-right" id="allow"></i>
                            </a>
                        </div>
                    </div>


                <!-- 신제품부분 끝  -->
                </section>
            

                
                
                <!-- 4 제품부분 시작 -->
                <section class="itemPart">

                    <!-- 4-1 제품글씨 -->
                    <div class="mainFont">제품</div>


                    <!-- 4-2 제품모음 -->
                    <div class="itemList">

						<c:forEach begin="0" end="8" var="i" items="${mpdList}">                 
                            <div class="item">
                               <a href="product/productDetail?ProductNo=${i.productNo}">
					      			<div class="itemPic">
					      	  			<figcaption>${i.productName}<hr>${i.ingredient}</figcaption>
                                       	<img src="resources/image/all/${i.productName}.jpg">
                                    </div>
                               </a>
                                    <div class="itemName">
					      				<a href="product/productDetail?ProductNo=${i.productNo}">${i.productName}</a>
					    			</div>
									
									<div class="itemPrice">
					    				<fmt:formatNumber value="${i.price}" pattern="#,###"/>원
					    			</div>
                            </div>
						</c:forEach>
					
					</div>

                
                    <!-- 4-3 제품더보기 더보기 -->
                    <div class="itemMore"> 
                        <a href="${contextPath}/product/allProduct">더보기 <i class="fa-solid fa-angles-right" id="allow"> </i></a>
                    </div>



                <!-- 제품부분 끝 -->
                </section>
            



            <!-- 가운데페이지 끝 -->
            </section>




            <!-- 오른쪽사이드바 -->
            <section class="rightSide">

                 <!-- 인체사진 플로팅바-->
                 <div class="floating">
                    <a href="product/person"> 
                        <img id="people" src="resources/image/index/인체일러스트누끼.png" >
                    </a>
                </div>
            
            </section>

        </section>
        <!-- content 전체 감싸는 영역 끝 -->

       
    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/mainReal.js"></script>
    <script src="${contextPath}/resources/js/main.js"></script>

</body>
</html>