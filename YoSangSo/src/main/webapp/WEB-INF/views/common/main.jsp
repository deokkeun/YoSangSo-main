<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 메인페이지 css  -->
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <!-- 슬라이더 파일다운받은거 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <title>index</title>
    

    <!--탑 버튼-->
    <a id="topBtn" href="#"> 
        <i class="fa-solid fa-angles-up fa-2x"></i>
    </a> 
    
</head>
<body>

<%-- 
<!-- db자료불러오는 sql구문 -->
<sql:setDataSource var= "conn" 
	driver = "oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@//112.220.137.37:1521/xe"
	user="yosangso"
	password="yosangso"
/>

<sql:query var ="rs" dataSource="${conn}">
select * from product
</sql:query> --%>

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
                            <img src="resources/image/index/메인슬라이더1편집.jpg"  width="100%">
                        </div>

                        <div>
                            <img src="resources/image/index/메인슬라이더2편집.jpg" width="100%">
                        </div>	
 				
                    	<div>
                	        <img src="resources/image/index/메인슬라이더3편집.png" width="100%">
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
                    <div class="newItem">
                    
                    	<c:forEach begin="1" end="4" var="i">
					  		<div class="BNitem">
					    		<a href="product/productDetail?ProductNo=${mpdList[i].productNo}">
					      			<div class="BNitemPic">
					      	  			<figcaption>${mpdList[i].productName}<hr>${mpdList[i].ingredient}</figcaption>
					        			<img src="resources/image/all/${mpdList[i].productName}.jpg">
					      			</div>
					    		</a>
					    			<div class="BNitemName">
					      				<a href="product/productDetail?ProductNo=${mpdList[i].productNo}">${mpdList[i].productName}</a>
					    			</div>
					    			<div class="BNitemPrice">
					    				<fmt:formatNumber value="${mpdList[i].price}" pattern="#,###"/>원
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
                    
                    	<c:forEach begin="1" end="4" var="i">
					  		<div class="BNitem">
					    		<a href="product/productDetail?ProductNo=${mpdList[i-1].productNo}">
					      			<div class="BNitemPic">
					      	  			<figcaption>${mpdList[i-1].ingredient}<hr></figcaption>
					        			<img src="resources/image/all/${mpdList[i-1].productName}.jpg">
					      			</div>
					    		</a>
					    			<div class="BNitemName">
					      				<a href="product/productDetail?ProductNo=${mpdList[i-1].productNo}">${mpdList[i-1].productName}</a>
					    			</div>
					    			<div class="BNitemPrice">
					    				<fmt:formatNumber value="${mpdList[i-1].price}" pattern="#,###"/>원
					    			</div>
					  		</div>
					  	</c:forEach>
					</div>
					
					<div class="newItem">
                    
                    	<c:forEach begin="1" end="4" var="i">
					  		<div class="BNitem">
					    		<a href="product/productDetail?ProductNo=${mpdList[i-1].productNo}">
					      			<div class="BNitemPic">
					      	  			<figcaption>${mpdList[i-1].ingredient}<hr></figcaption>
					        			<img src="resources/image/all/${mpdList[i-1].productName}.jpg">
					      			</div>
					    		</a>
					    			<div class="BNitemName">
					      				<a href="product/productDetail?ProductNo=${mpdList[i-1].productNo}">${mpdList[i-1].productName}</a>
					    			</div>
					    			<div class="BNitemPrice">
					    				<fmt:formatNumber value="${mpdList[i-1].price}" pattern="#,###"/>원
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
                    <div class="itemGather">


                        <!-- 제품 1 ~3 -->
                        <div class="itemFirst">


                            <!-- 제품1 -->
                            <div class="item">
                                <a href="#">
                                    <div class="itemPic">
                                        <figcaption>${mpdList[10].ingredient}<hr></figcaption>
                                       	<img src="resources/image/all/${mpdList[10].productName}.jpg">
                                    </div>
                                </a>
                                
                                    <div class="itemName">
                                        <a href="#">${mpdList[10].productName}</a> 
                                    </div>

                                    <div class="itemPrice"><fmt:formatNumber value="${mpdList[10].price}" pattern="#,###"/>원</div>
                            </div>


                            <!-- 제품2 -->
                            <div class="item">
                                <a href="#">
                                    <div class="itemPic">
                                        <figcaption>제품2<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                            alt="이미지입니다" id="itemPhoto2">
                                    </div>
                                </a>    

                                    <div class="itemName">
                                        <a href="">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice">16,000원</div>
                            </div>


                            <!-- 제품3 -->
                            <div class="item item3">
                                <a href="#">
                                    <div class="itemPic item3Pic">
                                        <figcaption>제품3<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                            alt="이미지입니다" id="itemPhoto3">
                                    </div>
                                </a>
                               

                                    <div class="itemName item3Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item3Price">16,000원</div>
                            </div>
                        
                        
                        </div>
                    


                        <!-- 제품 4~6 -->
                        <div class="itemSecond">


                            <!-- 제품4 -->
                            <div class="item item4">
                                <a href="#">
                                    <div class="itemPic item4Pic">
                                        <figcaption>제품4<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                            alt="이미지입니다" id="itemPhoto4"> 
                                    </div>
                                </a>

                                    <div class="itemName item4Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item4Price">16,000원</div>    
                            </div>


                            <!-- 제품5 -->
                            <div class="item item5">
                                <a href="#">
                                    <div class="itemPic item5Pic">
                                        <figcaption>제품5<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg"  
                                            alt="이미지입니다" id="itemPhoto5">   
                                    </div>
                                </a>

                                    <div class="itemName item5Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item5Price">16,000원</div>  
                            </div>


                            <!-- 제품6 -->
                            <div class="item item6">
                                <a href="#">
                                    <div class="itemPic item6Pic">
                                        <figcaption>제품6<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg"  
                                            alt="이미지입니다" id="itemPhoto6">
                                    </div>
                                </a>

                                    <div class="itemName item6Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item6Price">16,000원</div> 
                            </div>

                        
                        </div>



                        <!-- 제품7~9 -->
                        <div class="itemThird">


                            <!-- 제품7 -->
                            <div class="item item7">
                                <a href="#">
                                    <div class="itemPic item7Pic">
                                        <figcaption>제품7<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg"  
                                            alt="이미지입니다" id="itemPhoto7">
                                    </div>
                                </a>
                                
                                    <div class="itemName item7Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item7Price">16,000원</div>
                            </div>


                            <!-- 제품8 -->
                            <div class="item item8">
                                <a href="#">
                                    <div class="itemPic item8Pic">
                                        <figcaption>제품8<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                            alt="이미지입니다" id="itemPhoto8">
                                    </div>
                                </a>

                                    <div class="itemName item8Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item8Price">16,000원</div> 
                            </div>



                            <!-- 제품9 -->
                            <div class="item item9">
                                <a href="#">
                                    <div class="itemPic item9Pic">
                                        <figcaption>제품8<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                            alt="이미지입니다" id="itemPhoto9">
                                    </div>
                                </a>

                                    <div class="itemName item9Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item9Price">16,000원</div> 
                            </div>


                        </div>



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
                        <img id="people" src="resources/image/index/인체이미지누끼.png" >
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