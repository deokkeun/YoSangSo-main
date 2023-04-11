
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
    
    <!-- 신제품 리스트 css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/product/newProduct.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <title>newProduct</title>
    
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
        
        
       
       
        <!-- <div>newProduct</div>  -->


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
                    		<li class="mainFont">전제품</li>
                    	</a>	
                    	                    
                    	<a href="${contextPath}/product/newProduct">
                    		<li class="mainFont select">신상품</li>
                    	</a>	
                    	
                   		<a href="${contextPath}/product/bestProduct">
                    		<li class="mainFont">베스트</li>
              			</a>		
                    
                    </ul>
                </div>
            	
 

                <!-- 2-2 제품 목록 -->
                <div class="bestItem">
                    
                   <!-- 1행 -->
                    <div class="line row1">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[33]['PRODUCT_NM']}<hr> ${rs.rows[33]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[33]['PRODUCT_NM']}.jpg"
                                     alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[33]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[33]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                  
                        <!-- 제품2 --> 
                        <div class="BNitem Bitem2"> 
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>${rs.rows[32]['PRODUCT_NM']}<hr> ${rs.rows[32]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[32]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[32]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[32]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                     


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[39]['PRODUCT_NM']}<hr> ${rs.rows[39]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[39]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[39]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[39]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[38]['PRODUCT_NM']}<hr> ${rs.rows[38]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[38]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[38]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[38]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                        
                    </div>
                
                    <!-- 2행 -->
                    <div class="line row2">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[37]['PRODUCT_NM']}<hr> ${rs.rows[37]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[37]['PRODUCT_NM']}.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[37]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[37]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2">  
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>${rs.rows[31]['PRODUCT_NM']}<hr> ${rs.rows[31]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[31]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[31]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[31]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                    


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[30]['PRODUCT_NM']}<hr> ${rs.rows[30]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[30]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[30]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[30]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[29]['PRODUCT_NM']}<hr> ${rs.rows[29]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[29]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[29]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[29]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 3행 -->
                    <div class="line row3">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[23]['PRODUCT_NM']}<hr> ${rs.rows[23]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[23]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[23]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[23]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2"> 
                            <a href="#"> 
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>${rs.rows[27]['PRODUCT_NM']}<hr> ${rs.rows[27]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[27]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[27]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[27]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                  


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[22]['PRODUCT_NM']}<hr> ${rs.rows[22]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[22]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[22]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[22]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[34]['PRODUCT_NM']}<hr> ${rs.rows[34]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[34]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[34]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[34]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 4행 -->
                    <div class="line row4">
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
                                    <figcaption>${rs.rows[4]['PRODUCT_NM']}<hr> ${rs.rows[4]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[4]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[4]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[4]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                     


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[40]['PRODUCT_NM']}<hr> ${rs.rows[40]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[40]['PRODUCT_NM']}.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[40]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[40]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[24]['PRODUCT_NM']}<hr> ${rs.rows[24]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[24]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[24]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[24]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>





                <!-- 2-3 하단공백 -->
                <div class="blank"></div>        
               

            <!-- 가운데페이지 끝 -->
            </section>




            <!-- 3. 오른쪽사이드바 -->
            <section class="rightSide">

                
                <!-- 인체사진 플로팅바-->
                <div class="floating">
                    <a href="${contextPath}/product/person"/>
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
    <script src="${contextPath}/resources/js/product/newProduct.js"></script>
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>