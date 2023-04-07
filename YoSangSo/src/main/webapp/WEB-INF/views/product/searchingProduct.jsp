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
    <link rel="stylesheet" href="${contextPath}/resources/css/product/allProduct.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <title>allProduct</title>
    
 
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

            <!-- 1. 왼쪽사이드 -->
            <section class="leftSide">
            </section>


            <!-- 2. 가운데페이지 -->
            <section class="center">
                <!-- 2-2 제품 목록 -->
                <div class="bestItem">
                    <!-- 1행 -->
                    <div class="line row1">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>${rs.rows[0]['PRODUCT_NM']}<br><hr>비타민D 함유</figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[0]['PRODUCT_NM']}.jpg"
                                     alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[0]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[0]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        
                    </div>
                
                    <!-- 2행 -->
                    <div class="line row2">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[4]['PRODUCT_NM']}.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[4]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[4]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2">  
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption> 
                                    <img src="${contextPath}/resources/image/product/${rs.rows[5]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[5]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[5]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                    


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[6]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[6]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[6]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[7]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[7]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[7]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 3행 -->
                    <div class="line row3">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[8]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[8]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[8]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2"> 
                            <a href="#"> 
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption> 
                                    <img src="${contextPath}/resources/image/product/${rs.rows[9]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[9]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[9]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                  


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[10]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[10]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[10]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[11]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[11]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[11]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 4행 -->
                    <div class="line row4">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[12]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[12]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[12]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                    
                        <!-- 제품2 --> 
                        <div class="BNitem Bitem2"> 
                            <a href="#">  <!-- a 태그 -->
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption> 
                                    <img src="${contextPath}/resources/image/product/${rs.rows[13]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[13]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[13]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                     


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[14]['PRODUCT_NM']}.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[14]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[14]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[15]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[15]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[15]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 5행 -->
                    <div class="line row5">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[16]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[16]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[16]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                   
                        <!-- 제품2 -->
                        <div class="BNitem Bitem2"> 
                            <a href="#">  <!-- a 태그 -->
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[17]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[17]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[17]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                       


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[18]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[18]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[18]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[19]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[19]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[19]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 6행 -->
                    <div class="line row6">
                        <!--제품1 -->
                        <div class="BNitem Bitem1">    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[20]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[20]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[20]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                        

                                                  
                        <!-- 제품2 -->  
                        <div class="BNitem Bitem2">
                            <a href="#">
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[21]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[21]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[21]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                       


                        <!-- 제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <<img src="${contextPath}/resources/image/product/${rs.rows[22]['PRODUCT_NM']}.jpg"
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
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/product/${rs.rows[23]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[23]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[23]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>
                
                
                </div>




                <!-- 2-3 숫자 페이지네이션 -->
                <div class="numListBox">

                    <!-- 왼쪽 화살표버튼 -->
                    <div id="numListBtnBox">
                        <button type="button" id="movePrev" class="fa-solid fa-less-than"
                        	style="color:black" onclick="alert('')">
                        </button>
                    </div>
                    
                    <!-- </div> -->
                    <div id="listBox">
                        <a href="#">1</a>
                        <a href="#">2</a>
                    </div>

                    <!-- 오른쪽 화살표 -->
                    <div id="numListBtnBox2">
                        <button type="button" id="moveNext" class="fa-solid fa-greater-than" 
                        	style="color:black" onclick="alert('test')">
                        </button>
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