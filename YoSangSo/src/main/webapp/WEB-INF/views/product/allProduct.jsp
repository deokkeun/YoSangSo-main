<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="${contextPath}/resources/css/product/allProduct.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <title>allProduct</title>
    
 
    <!--탑 버튼-->
    <a id="topBtn" href="#"> 
        <i class="fa-solid fa-angles-up fa-2x"></i>
    </a> 
    
</head>
<body>

<!-- db자료불러오는 sql구문 -->
<sql:setDataSource var= "all" 
	driver = "oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@//112.220.137.37:1521/xe"
	user="yosangso"
	password="yosangso"
/>

<sql:query var ="rs" dataSource="${all}">
select * from product
</sql:query>



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

                    <!-- 2-1 글씨칸 --> 
                    <a href="${contextPath}/product/allProduct">
                    	<div class="mainFont allItemFont">전제품</div>
                    </a>
                    <a href="${contextPath}/product/newProduct">
                    	<div class="mainFont newItemFont">신상품</div>
                    </a>
                    <a href="${contextPath}/product/bestProduct">
                    	<div class="mainFont bestItemFont">베스트</div>
                    </a>

                </div>


                

                <!-- 2-2 제품 목록 -->
                <div class="bestItem">
                
                <c:forEach items="${list}" var="item">
  				<p>${PRODUCT_NM}</p>
  				
				</c:forEach>
                    
                    
                    <!-- 1행 -->
                    <div class="line row1">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[40]['PRODUCT_NM']}<hr> ${rs.rows[40]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[40]['PRODUCT_NM']}.jpg"
                                     alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[40]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[40]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                  
                        <!-- 제품2 --> 
                        <div class="BNitem Bitem2"> 
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>${rs.rows[41]['PRODUCT_NM']}<hr> ${rs.rows[41]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[41]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[41]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[41]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                     


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[0]['PRODUCT_NM']}<hr> ${rs.rows[0]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[0]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[0]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[0]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[1]['PRODUCT_NM']}<hr> ${rs.rows[1]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[1]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[1]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[1]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                        
                    </div>
                
                    <!-- 2행 -->
                    <div class="line row2">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[2]['PRODUCT_NM']}<hr> ${rs.rows[2]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[2]['PRODUCT_NM']}.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[2]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[2]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2">  
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>${rs.rows[3]['PRODUCT_NM']}<hr> ${rs.rows[3]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[3]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[3]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[3]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                    


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[4]['PRODUCT_NM']}<hr> ${rs.rows[4]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[4]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[4]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[4]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


						

                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[5]['PRODUCT_NM']}<hr> ${rs.rows[5]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[5]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[5]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[5]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 3행 -->
                    <div class="line row3">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[6]['PRODUCT_NM']}<hr> ${rs.rows[6]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[6]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[6]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[6]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2"> 
                            <a href="#"> 
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>${rs.rows[7]['PRODUCT_NM']}<hr> ${rs.rows[7]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[7]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[7]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[7]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                  


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[8]['PRODUCT_NM']}<hr> ${rs.rows[8]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[8]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[8]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[8]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[9]['PRODUCT_NM']}<hr> ${rs.rows[9]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[9]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[9]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[9]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 4행 -->
                    <div class="line row4">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[10]['PRODUCT_NM']}<hr> ${rs.rows[10]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[10]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[10]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[10]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 --> 
                        <div class="BNitem Bitem2"> 
                            <a href="#">  <!-- a 태그 -->
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>${rs.rows[11]['PRODUCT_NM']}<hr> ${rs.rows[11]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[11]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[11]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[11]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                     


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[12]['PRODUCT_NM']}<hr> ${rs.rows[12]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[12]['PRODUCT_NM']}.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[12]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[12]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[13]['PRODUCT_NM']}<hr> ${rs.rows[13]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[13]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[13]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[13]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 5행 -->
                    <div class="line row5">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[14]['PRODUCT_NM']}<hr> ${rs.rows[14]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[14]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[14]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[14]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                   
                        <!-- 제품2 -->
                        <div class="BNitem Bitem2"> 
                            <a href="#">  <!-- a 태그 -->
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>${rs.rows[15]['PRODUCT_NM']}<hr> ${rs.rows[15]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[15]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[15]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[15]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                       


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[16]['PRODUCT_NM']}<hr> ${rs.rows[16]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[16]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[16]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[16]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[17]['PRODUCT_NM']}<hr> ${rs.rows[17]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[17]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[17]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[17]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 6행 -->
                    <div class="line row6">
                    
                    
               
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[18]['PRODUCT_NM']}<hr> ${rs.rows[18]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[18]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[18]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[18]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        
		
						
                                                  
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2">
                            <a href="#">
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>${rs.rows[19]['PRODUCT_NM']}<hr> ${rs.rows[19]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[19]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[19]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[19]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                       


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[20]['PRODUCT_NM']}<hr> ${rs.rows[20]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[20]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[20]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[20]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[21]['PRODUCT_NM']}<hr> ${rs.rows[21]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[21]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[21]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[21]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>
                
                
                </div>




                <!-- 2-3 더보기버튼 -->
                <div class="blank"></div>                   
                
              	<!-- <div class=more>
              		 <button class="scrollMore" id="btnMore">더보기</button>
               		</div> -->

            <!-- 가운데페이지 끝 -->
            </section>




            <!-- 3. 오른쪽사이드바 -->
            <section class="rightSide">

                
                 <!-- 인체사진 플로팅바-->
                 <div class="floating" id="floating">
                    <a href="product/person">
                        <img id="people" src="resources/image/index/인체이미지누끼.png" >
                        <img id="people2" src="resources/image/index/인체이미지누끼2.png" >
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