<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <!-- 헤더/풋터 css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    
    <!-- 제품리스트 css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/product/searchingProduct.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <title>${query} 검색 결과</title>
    
 
    <!--탑 버튼-->
    <a id="topBtn" href="#"> 
        <i class="fa-solid fa-angles-up fa-2x"></i>
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


            <!-- 2. 가운데페이지 -->
            <section class="center">
            <div class ="searching-result">
            [${query}] 검색 결과
            </div>
                <!-- 2-2 제품 목록 -->
                <div class="bestItem">
                    <!-- 1행 -->
                    <div class="line row1">
                   		<c:forEach var="rs" items="${productList}" begin="0" end="40">
                        <!--제품1 -->
                        <div class="BNitem Bitem1"> 
                            <a href="${contextPath}/product/productDetail?ProductNo=${rs.productNo}">    
                                <div class="BNitemPic bestItem2Pic">
                        			<figcaption>${rs.productName}<br></figcaption>   
                                    <img src="${contextPath}/resources/image/all/${rs.productName}.jpg"
                                     alt="제품사진" class="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.productName}</a>  
                                </div> 
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.price}" pattern="#,###"/>원
                                </div>  
                        </div>  
                        </c:forEach>                      
                    </div>
                            
                  </div>
   
            <!-- 가운데페이지 끝 -->
            </section>




            <!-- 3. 오른쪽사이드바 -->
            <section class="rightSide">

                
                <!-- 인체사진 플로팅바-->
                <div class="floating">
                    <a href="#"> 
                        <img id="people" src="${contextPath}/resources/image/index/인체이미지누끼.png">
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