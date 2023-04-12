
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> --%>
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
    <link rel="stylesheet" href="${contextPath}/resources/css/product/bestProduct.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <title>bestProduct</title>
    
     <!--탑 버튼-->
    <a id="topBtn" href="#"> 
        <i class="fa-solid fa-angles-up fa-2x"></i>
    </a> 
    
</head>
<body>

<%-- 
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


 --%>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
     
       
        <!--  <div>bestProduct</div> -->


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
                    		<li class="mainFont">신상품</li>
                    	</a>	
                    	
                   		<a href="${contextPath}/product/bestProduct">
                    		<li class="mainFont select">베스트</li>
              			</a>		
                    
                    </ul>
                </div>
          	
          	
          	
          	
          	<!-- items : 반복접근객체(배열,컬렉션) / 
						 var   : 반복 변수명  ${mpdList[i-1].price}/
						 begin : 반복시 시작값 
						 end   : 반복시 종료값 
						 step  : 반복시 증가값
						 varStatus : 반복상태와 관련된 정보 제공 변수선언 -->    

     

          <!-- 2-2 제품 목록 -->
                <div class="bestItem">
                    <c:forEach begin="1" end="20" var="i">
                        <div class="BNitem">
                        <c:forEach var="rank" begin="1" step="1" end="20" var="rank">
  								<p class="rank"><c:out value="${rank}"/>위</p>
						</c:forEach>
                        	
                        	<a href="product/productDetail?ProductNo=${npdList[i].productNo}">  
   								<div class="BNitemPic">
                                    <figcaption>${npdList[i].productName}<hr>${npdList[i].ingredient}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${npdList[i].productName}.jpg">
                                </div>
                            </a>
                                 <div class="BNitemName">
                            	<a href="${contextPath}/product/productDetail?ProductNo=${npdList[i].productNo}">${npdList[i].productName}</a>  
                            </div> 
                            
                            <div class="BNitemPrice">
                               	<fmt:formatNumber value="${npdList[i].price}" pattern="#,###"/>원
                            </div>  
						</div>  
					</c:forEach>    
				</div>                         

          <%--                                           
                        <!--제품1-2 -->
                        <div class="BNitem Bitem2">
                        	<p class=rank>2위</p>    
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

                        <!-- 제품1-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>3위</p>    
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



                        <!-- 제품1-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>4위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[23]['PRODUCT_NM']}<hr> ${rs.rows[23]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[23]['PRODUCT_NM']}.jpg"
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
                
                    <!-- 2행 -->
                    <div class="line row2">
                        <!--제품2-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>5위</p>    
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

                                                    
                        <!-- 제품2-2 --> 
                        <div class="BNitem Bitem2">
                        	<p class=rank>6위</p>  
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
                        </div>                        <!-- /li 1-->


                        <!-- 제품2-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>7위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[32]['PRODUCT_NM']}<hr> ${rs.rows[32]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[32]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[32]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[32]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품2-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>8위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[20]['PRODUCT_NM']}<hr> ${rs.rows[20]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[20]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[20]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[20]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 3행 -->
                    <div class="line row3">
                        <!--제품3-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>9위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[13]['PRODUCT_NM']}<hr> ${rs.rows[13]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[13]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[13]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[13]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>   
                                                   
                        <!-- 제품3-2 -->  
                        <div class="BNitem Bitem2">
                        	<p class=rank>10위</p>      
                            <a href="#"> 
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
                        </div>                        <!-- /li 1-->


                        <!-- 제품3-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>11위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[33]['PRODUCT_NM']}<hr> ${rs.rows[33]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[33]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[33]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[33]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>



                        <!-- 제품3-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>12위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[8]['PRODUCT_NM']}<hr> ${rs.rows[8]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[8]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[8]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[8]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 4행 -->
                    <div class="line row4">
                        <!--제품4-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>13위</p>    
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

                                                   
                        <!-- 제품4-2 -->  
                        <div class="BNitem Bitem2">
                        	<p class=rank>14위</p>  
                            <a href="#">  <!-- a 태그 -->
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>${rs.rows[35]['PRODUCT_NM']}<hr> ${rs.rows[35]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[35]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[35]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[35]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                        


                        <!-- 제품4-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>15위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[19]['PRODUCT_NM']}<hr> ${rs.rows[19]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[19]['PRODUCT_NM']}.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[19]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[19]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품4-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>16위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[10]['PRODUCT_NM']}<hr> ${rs.rows[10]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[10]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[10]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[10]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    <!-- 5행 -->
                    <div class="line row5">
                        <!--제품5-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>17위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>${rs.rows[5]['PRODUCT_NM']}<hr> ${rs.rows[5]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[5]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[5]['PRODUCT_NM']}</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">
                                	<fmt:formatNumber value="${rs.rows[5]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>                      

                                                    
                        <!-- 제품5-2 -->  
                        <div class="BNitem Bitem2">
                        	<p class=rank>18위</p>
                            <a href="#">  <!-- a 태그 -->
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>${rs.rows[2]['PRODUCT_NM']}<hr> ${rs.rows[2]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[2]['PRODUCT_NM']}.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">${rs.rows[2]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">
                                	<fmt:formatNumber value="${rs.rows[2]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>                        


                        <!-- 제품5-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>19위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>${rs.rows[37]['PRODUCT_NM']}<hr> ${rs.rows[37]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[37]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">${rs.rows[37]['PRODUCT_NM']}</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">
                                	<fmt:formatNumber value="${rs.rows[37]['PRICE']}" pattern="#,###"/>원
                                </div>  
                        </div>


                        <!-- 제품5-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>20위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>${rs.rows[39]['PRODUCT_NM']}<hr> ${rs.rows[39]['INGREDIENT']}</figcaption>
                                    <img src="${contextPath}/resources/image/all/${rs.rows[39]['PRODUCT_NM']}.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[39]['PRODUCT_NM']}</a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">
                                	<fmt:formatNumber value="${rs.rows[39]['PRICE']}" pattern="#,###"/>원
                                </div>
                        </div>
                    </div>

                    --%>

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
     
     <!-- bestProduct.js 연결 -->
    <script src="${contextPath}/resources/js/product/bestProduct.js"></script> 
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>