
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 헤더/풋터 css -->
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
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
                    
                    <!-- 1행 -->
                    <div class="line row1">
                        <!--제품1-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>1위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">75,000원</div>  
                        </div>                        

                                                    
                        <!--제품1-2 -->
                        <div class="BNitem Bitem2">
                        	<p class=rank>2위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">75,000원</div>  
                        </div>                          

                        <!-- 제품1-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>3위</p>    
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">75,000원</div>  
                        </div>


                        <!-- 제품1-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>4위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg" 
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분) </a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">75,000원</div>
                        </div>
                        
                    </div>
                
                    <!-- 2행 -->
                    <div class="line row2">
                        <!--제품2-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>5위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">75,000원</div>  
                        </div>                        

                                                    
                        <!-- 제품2-2 --> 
                        <div class="BNitem Bitem2">
                        	<p class=rank>6위</p>  
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption> 
                                    <img src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">75,000원</div>
                        </div>                       <!-- /li 1-->


                        <!-- 제품2-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>7위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">75,000원</div>  
                        </div>


                        <!-- 제품2-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>8위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg"
                                    alt="제품사진" id="bestItemPhoto4">
                                </div>
                            </a>

                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분) </a>
                                </div>        

                                <div class="BNitemPrice bestItem4Price">75,000원</div>
                        </div>
                    </div>

                    <!-- 3행 -->
                    <div class="line row3">
                        <!--제품3-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>9위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">75,000원</div>  
                        </div>                        

                                                   
                        <!-- 제품3-2 -->  
                        <div class="BNitem Bitem2">
                        	<p class=rank>10위</p>      
                            <a href="#">
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">75,000원</div>
                        </div>                       <!-- /li 1-->


                        <!-- 제품3-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>11위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">75,000원</div>  
                        </div>


                        <!-- 제품3-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>12위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
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

                    <!-- 4행 -->
                    <div class="line row4">
                        <!--제품4-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>13위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg"
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">75,000원</div>  
                        </div>                        

                                                   
                        <!-- 제품4-2 -->  
                        <div class="BNitem Bitem2">
                        	<p class=rank>14위</p>  
                            <a href="#"> 
                                <div class="BNitemPic bestItem2Pic">
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption> 
                                    <img src="resources/image/index/제품_오쏘뮬.jpg"
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">75,000원</div>
                        </div>                       


                        <!-- 제품4-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>15위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">75,000원</div>  
                        </div>


                        <!-- 제품4-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>16위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
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

                    <!-- 5행 -->
                    <div class="line row5">
                        <!--제품5-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>17위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">75,000원</div>  
                        </div>                        

                                                    
                        <!-- 제품5-2 -->  
                        <div class="BNitem Bitem2">
                        	<p class=rank>18위</p>
                            <a href="#">  
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">75,000원</div>
                        </div>                      


                        <!-- 제품5-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>19위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="/assets/제품_오쏘뮬.jpg"
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">75,000원</div>  
                        </div>


                        <!-- 제품5-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>20위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
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

                    <!-- 6행 -->
                    <div class="line row6">
                        <!--제품6-1 -->
                        <div class="BNitem Bitem1">
                        	<p class=rank>21위</p>    
                            <a href="#">    
                                <div class="BNitemPic bestItem1Pic"> 
                                    <figcaption>제품1<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="bestItemPhoto1">
                                </div>
                            </a>
                                <div class="BNitemName bestItem1Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div> 
                            
                                <div class="BNitemPrice bestItem1Price">75,000원</div>  
                        </div>                        

                                                  
                        <!-- 제품6-2 -->  
                        <div class="BNitem Bitem2">
                        	<p class=rank>22위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem2Pic"> 
                                    <figcaption>제품2<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                        alt="제품사진" id="bestItemPhoto2"> 
                                </div>
                            </a>
                                <div class="BNitemName bestItem2Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>
                                </div> 
                            
                                <div class="BNitemPrice bestItem2Price">75,000원</div>
                        </div>                      


                        <!-- 제품6-3 -->
                        <div class="BNitem Bitem3">
                        	<p class=rank>23위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem3Pic">
                                    <figcaption>제품3<br><br> 상세설명칸<br><br> 입니다 </figcaption>
                                    <img src="resources/image/index/제품_오쏘뮬.jpg" 
                                    alt="제품사진" id="bestItemPhoto3">
                                </div>
                            </a>

                                <div class="BNitemName bestItem3Name">
                                    <a href="#">[오쏘뮬] 오쏘뮬 이뮨 멀티비타민&미네랄 14입+1입 증정 기획 (2주분)</a>  
                                </div>

                                <div class="BNitemPrice bestItem3Price">75,000원</div>  
                        </div>


                        <!-- 제품6-4 -->
                        <div class="BNitem Bitem4">
                        	<p class=rank>24위</p>
                            <a href="#">
                                <div class="BNitemPic bestItem1Pic">
                                    <figcaption>제품4<br><br> 상세설명칸<br><br> 입니다 </figcaption>
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
                
                
                </div>




                <!-- 2-3 숫자 페이지네이션 -->
                <div class="numListBox">

                    <!-- 왼쪽 화살표버튼 -->
                    <div id="numListBtnBox">
                        <button type="button" id="movePrev">
                           <span style="color: black;">
                                <i class="fa-solid fa-less-than"></i>
                           </span>
                        </button>
                    </div>
                    
                    <!-- </div> -->
                    <div id="listBox">
                        <a href="#">1</a>
                        <a href="#">2</a>
                    </div>

                    <!-- 오른쪽 화살표 -->
                    <div id="numListBtnBox2">
                        <button type="button" id="moveNext">
                           <span style="color: black;">
                                <i class="fa-solid fa-greater-than"></i>
                           </span>
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
     
     <!-- bestProduct.js 연결 -->
    <script src="${contextPath}/resources/js/product/bestProduct.js"></script> 
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>