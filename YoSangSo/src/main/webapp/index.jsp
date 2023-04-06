
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="resources/css/main-style.css">
    <!-- 메인페이지 css  -->
    <link rel="stylesheet" href="resources/css/index.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <!-- 슬라이더 파일다운받은거 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <title>index</title>
    
    <!--탑 버튼 & 스크립트 html 부분-->
    
    <!--탑 버튼-->
    <a id="topBtn" href="#"> 
        <i class="fa-solid fa-angles-up fa-2x"></i>
    </a> 
    
</head>
<body>
<sql:setDataSource var= "conn" 
	driver = "oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@//112.220.137.37:1521/xe"
	user="yosangso"
	password="yosangso"
/>


<sql:query var ="rs" dataSource="${conn}">
select * from product
</sql:query>

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
                    <div class="mainFont bestFont">베스트</div>


                    <!-- 2-2 베스트 제품 -->
                    <div class="bestItem"> 

					
						                        
                        <!-- 베스트제품1 -->
                     
                        <div class="BNitem Bitem1">  
                            <a href="#">  
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>"${rs.rows[0]['PRODUCT_NM']}"</figcaption> 
                                    <img src="resources/image/product/${rs.rows[28]['PRODUCT_NM']}.jpg"  
                                        alt="제품사진" id="bestItemPhot1"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">${rs.rows[0]['PRODUCT_NM']}</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price"><fmt:formatNumber value="${rs.rows[0]['PRICE']}" pattern="#,###"/>원</div>
                        </div>                          

                                                 
                        <!-- 베스트제품2 -->  
                        <div class="BNitem Bitem2">  
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>베스트제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption> 
                                    <img src="resources/image/product/${rs.rows[10]['PRODUCT_NM']}.jpg"  
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price"><fmt:formatNumber value="${rs.rows[1]['PRICE']}" pattern="#,###"/>원</div>
                        </div>                       


                        <!-- 베스트제품3 -->
                        <div class="BNitem Bitem3">
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>베스트제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/product/${rs.rows[0]['PRODUCT_NM']}.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">75,000원</div>  
                        </div>


                        <!-- 베스트제품4 -->
                        <div class="BNitem Bitem4">
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>베스트제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분) </a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">75,000원</div>
                        </div> 
                    
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




                <!-- 3 신제품부분 시작 -->
                <section class="newPart">

                    <!-- 3-1 신제품 글씨 -->
                    <div class="mainFont newFont">신제품</div>


                    <!-- 3-2 신제품 순 -->
                    <div class="newItem">

                        <!-- 신제품1 -->
                        <div class="BNitem Nitem1">
                            <a href="#">
                                <div class="BNitemPic newItem1Pic">
                                    <figcaption>신제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="newItemPhoto1">  
                                </div>
                            </a>
                                <div class="BNitemName newItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a> 
                                </div>
                           
                                <div class="BNitemPrice newItem1Price">65,000원</div>
                        </div>


                        <!-- 신제품2 -->
                        <div class="BNitem Nitem2">
                            <a href="#">
                                <div class="BNitemPic newItem2Pic">
                                    <figcaption>신제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="newItemPhoto2">
                                </div>
                            </a>
                                <div class="BNitemName newItem2Name">
                                    <a href="#">신제품2 설명</a>
                                </div>
                            
                                <div class="BNitemPrice newItem2Price">신제품2 가격</div>
                        </div>

                        <!-- 신제품3 -->
                        <div class="BNitem Nitem3">
                            <a href="#">
                                <div class="BNitemPic newItem3Pic">
                                    <figcaption>신제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="newItemPhoto3">
                                </div>
                            </a>
                                <div class="BNitemName newItem3Name">
                                    <a href="#">신제품3 설명</a>
                                </div>

                                <div class="BNitemPrice newItem3Price">신제품3 가격</div>
                        </div>

                        <!-- 신제품4 -->
                        <div class="BNitem Nitem4">
                            <a href="#">
                                <div class="BNitemPic newItem4Pic">
                                    <figcaption>신제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="newItemPhoto4">
                                </div>
                            </a>
                                <div class="BNitemName newItem4Name">
                                    <a href="#">신제품4 설명</a>
                                </div>
                              
                                <div class="BNitemPrice newItem4Price">신제품4 가격</div>
                        </div>
                    
                    </div>



                    <!-- 3-3 신제품 더보기 -->
                    <div>
                        <div class="more newMore">
                            <a href="${contextPath}/product/newProduct">더보기 <i class="fa-solid fa-angles-right" id="allow"></i></a>
                        </div>
                    </div>


                <!-- 신제품부분 끝  -->
                </section>
            

                
                
                <!-- 4 제품부분 시작 -->
                <section class="itemPart">

                    <!-- 4-1 제품글씨 -->
                    <div class="mainFont itemFont">제품</div>


                    <!-- 4-2 제품모음 -->
                    <div class="itemGather">


                        <!-- 제품 1 ~3 -->
                        <div class="itemFirst">


                            <!-- 제품1 -->
                            <div class="item item1">
                                <a href="#">
                                    <div class="itemPic item1Pic">
                                        <figcaption>제품1<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                            alt="이미지입니다" id="itemPhoto1">
                                    </div>
                                </a>
                                
                                    <div class="itemName item1Name">
                                        <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item1Price">16,000원</div>
                            </div>


                            <!-- 제품2 -->
                            <div class="item item2">
                                <a href="#">
                                    <div class="itemPic item2Pic">
                                        <figcaption>제품2<br><br>상세설명칸<br><br>입니다</figcaption>
                                        <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                            alt="이미지입니다" id="itemPhoto2">
                                    </div>
                                </a>    

                                    <div class="itemName item2Name">
                                        <a href="">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                    </div>

                                    <div class="itemPrice item2Price">16,000원</div>
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
                    <a href="#"> 
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
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>