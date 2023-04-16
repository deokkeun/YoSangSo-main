<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
     <!-- 전제품 리스트 css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/product/allProduct.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <title>전제품</title>
    
    <!-- 요생소 파비콘 (Chrome, Safari, IE 용) -->
	<link rel="icon" href="${contextPath}/resources/image/logo/favicon.ico" type="image/x-icon">
    
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
        
              
       
        <!--  <div>allProduct</div> -->

		 <!-- 내용 작성 공간입니다.(template2) -->
         <!-- content 전체 감싸는 영역 -->
        <section class="content-container">

            <!-- 1. 왼쪽사이드 -->
            <section class="leftSide">
            </section>


            <!-- 2. 가운데페이지 -->
            <section class="center">


               	 <!-- 2-1 퀵메뉴 부분 -->
                <div class="quickMenu">
                	<ul class="list">
	
	                    <!-- 2-1 글씨칸 -->
	                 	<a href="${contextPath}/product/allProduct">
                    		<li class="mainFont select">전제품</li>
                    	</a>	
                    	                    
                   		<a href="${contextPath}/product/newProduct">
                    		<li class="mainFont">신상품</li>
                    	</a>	
                    	
                   		<a href="${contextPath}/product/bestProduct"> 
                    		<li class="mainFont">베스트</li>
              			</a>		
                    
                    </ul>
                </div>


         

                <!-- 2-2 제품 목록 -->
                <div class="itemList">
                 
                  	<c:forEach begin="0" end="41" var="i" items="${apdList}">
                        <div class="BNitem"> 
                            <a href="${contextPath}/product/productDetail?ProductNo=${i.productNo}">    
                                <div class="BNitemPic">
                        			<figcaption>${i.productName}<hr>${i.ingredient}</figcaption>   
                                    <img src="${contextPath}/resources/image/all/${i.productName}.jpg">
                                </div>
                            </a>
                            
                            <div class="BNitemName">
                            	<a href="${contextPath}/product/productDetail?ProductNo=${i.productNo}">${i.productName}</a>  
                            </div> 
                            
                            <div class="BNitemPrice">
                               	<fmt:formatNumber value="${i.price}" pattern="#,###"/>원
                            </div>  
                        </div>  
					</c:forEach>                      
                    
                </div>                


                <!-- 2-3  공백버튼 -->
                <div class="blank"></div>     
 

            <!-- 가운데페이지 끝 -->
            </section>




            <!-- 3. 오른쪽사이드바 -->
            <section class="rightSide">


                <!-- 인체사진 플로팅바-->
                <div class="floating">
                    <a href="${contextPath}/product/person"/>
                  
                        <img id="people" src="${contextPath}/resources/image/index/인체일러스트누끼.png">

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
   
  
    <!-- allProduct.js 연결 -->
    <script src="${contextPath}/resources/js/product/allProduct.js"></script>
     <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>