<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/productDetail.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/slick.css">
   
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    
    
    <title>productDetail</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        <br>
        <br>
        <br>
        
        <section class="mainsec"> 
            <div class="all">
            <div>   
                <!--productdetails-->
                <!--제품 상세 컨테이너-->
                <div class="productdetails-container">
                    <!--제품 이미지-->
                    <div class="product-img">
                        <img src="${contextPath}/resources/image/product/${productList[0].productName}.jpg">
                    </div>
                    <!--제품이름, 가격, 수량, 구매가격, 구매및 장바구니-->
                    <form action="purchase" method="GET" name="purcahse">
                    <div class ="productover">
                        <!--제품이름-->
                        <div class="productNm">
                            <h3>${productList[0].productName}</h3>
                        </div>
                        <!--가격-->
                        <div class="productPr">
                            <span id="price">${productList[0].price}</span>원
                        </div>
                        <!--배송비-->
                        <br>
                        <br>
                        <br>
                        <br>
                        <div class="del-cost">
                            배송비 :<input id="delcost" value="3000" disabled>원
                        </div>
                        <br>
                        <hr>
                        <!--수량 가격-->
                        <div class="count">
                            수량 : <input type="number" id="countbox" min="1" name="count">
                        </div>
                        <br>
                        <hr>
                        <!--총 금액-->
                        <div class="total-cost">
                            <pre>총 상품금액</pre>
                            <span id="totalcost"></span>원
                        </div>
                  
                        <input type="hidden" value="${productList[0].productNo}" name="productNo" id="proNo">
                        
                        <input type="hidden" value="${loginMember.memberNo}" name="loginmember" id="loginmember">
                        <br>
                        
                            <!--구매 버튼-->
                            <div>
	                            <button type="submit" id="btn-purchase">구매하기</button>
                            </div>
	                            
                     </form>       
                            <br>
                            <div>
                            
                     <c:choose>     
                        <c:when test="${loginMember != null}"> 
                            	<!--장바구니 버튼-->
                           		<button type="button"  onclick="return addcart()" id="btn-addcart">장바구니</button>
                        </c:when>
                        
                        <c:otherwise>
                        		<button type="button"  onclick="return login()" id="btn-addcart">장바구니</button>
                        </c:otherwise>
                        
                        
           			</c:choose>
                            </div>   
                    </div>
                </div>
                <br>
                <br>
                <br>
                <p id="product-detail"></p>
                <br>
                <br>
                <br>
                <br>
                <br>
            
                    <!--상세정보, 리뷰 ,문의하기로 화면을 이동해주는 버튼-->
                    <div class="fm">
                    <div class="fastmove">
                        <a href="#product-detail">상세정보</a>
                        <a href="#review">리뷰</a>
                        <a href="#FAQ">문의하기</a>
                    </div>
                    <hr>
                    </div>
                <br>
                <br>
                <br>
                <!--상품정보-->
                <div class="product-detail">
                    <h2>상품 설명</h2>
                    <br>
                    <br>
                    
                    <span>${productList[0].explain}</span>
                </div>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
            
                <!--추천 상품-->

               <!--추천 상품-->
               <div id="slideContainer">
        
                <div class="items">
                    <button class="prev"><</button>
                    <div class="item active"><img src="${contextPath}/resources/image/product/Codeage, Fermented, 남성용 종합비타민, 캡슐 120정.jpg"></div>
                    <div class="item"><img src="${contextPath}/resources/image/product/Codeage, 비타민, 메디테이트, 캡슐 60정정.jpg"></div>
                    <div class="item"><img src="${contextPath}/resources/image/product/Codeage, 비타민, 모발, 비오틴, 콜라겐. 케라틴, 캡슐 120정.jpg"></div>
                    <div class="item"><img src="${contextPath}/resources/image/product/Codeage, 비타민, 헤어 구미젤리, 무설탕, 비오틴, 비타민 C, 미네랄, 딸기 코코넛, 60개.jpg"></div>
                    <button class="next">></button>
                </div>
                    <div class="stepper">
                    <div class="step active-step"></div>
                    <div class="step"></div>
                        <div class="step"></div>
                <div class="step"></div>
                </div>  
                </div>
                <p id="review"></p>
                <br>
                <br>
                <br>
                <br>
            
                <!--productdetails end-->
            
                <!--review-->
                <!--리뷰 컨테이너-->
                <div class="review-container">
                    <h2>구매후기</h2>
                    <!--리뷰 1-->
                    <div>
                        <!--고객 아이콘 이름 게시일-->
                        <div class="review-all">
                            <!--고객 아이콘-->
                            <div class="review-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!--고객 이름-->
                            <div class="review-name">${reviewtList[0].reviewNo}</div>
                            <!--게시일-->
                            <div class="review-date"><input type="date"></div>
                        </div>
            
                        <!--리뷰 내용-->
                        <div class="review-main">
                            <img src="/assets/re1.jpeg">
                            <div>
                                <pre class="review-con">${reviewtList[0].reviewContent}</pre>
                            </div>    
                        </div>
            
                    </div>
                    <br>
                    <br>
                    <!--리뷰 2-->
                    <div>
                        <!--고객 아이콘 이름 게시일-->
                        <div class="review-all">
                            <!--고객 아이콘-->
                            <div class="review-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!--고객 이름-->
                            <div class="review-name">최훈석</div>
                            <!--게시일-->
                            <div class="review-date"><input type="date"></div>
                        </div>
            
                        <!--리뷰 내용-->
                        <div class="review-main">
                            <img src="/assets/re2.jpeg">
                            <pre class="review-con">
                        저분자 피쉬 콜라겐에 비타민c와 히알루론산까지 들어있는 제품이고 믿고 먹는 품질의 브랜드라 구매했어요 피부가 맑아지고 확실히
                        효과 있어요 나이가 들면서 콜라겐이 줄어들기때문에 꾸준히 복용하려구요 한스푼에 물이나 음료 300ml 섞어서 먹으면 되요        
                            </pre>
                        </div>
                        
            
                    </div>
                </div>
                <!--review end-->
            
                <br>
                 <p id="FAQ"></p>
                <br>
                <br>
                <br>
            
                <!--FAQ-->
                <!--FAQ 컨테이너-->
                
                <div class="FAQ-container">
                    <h2>FAQ</h2>
                    <!--FAQ1-->
                    <div>
                        <!--고객 아이콘, 이름, 게시일-->
                        <div class="FAQ-all">
                            <!--고객 아이콘-->
                            <div class="FAQ-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!-- 고객 이름-->
                            <div class="FAQ-name">김연수</div>
                            <!-- 게시일-->
                            <div class="FAQ-date"><input type="date"></div>
                        </div>
            
                        <!-- 질문 내용-->
                    <div id="Accordion_wrap">
                        <div class="que">
                         <span>하루에 몇 달톤을 먹어야 하나요?</span>
                          <div class="arrow-wrap">
                            <span class="arrow-top">↑</span>
                           <span class="arrow-bottom">↓</span>
                          </div>
                        </div>
                        <div class="anw">
                         <span>하루에 300 달톤씩 복용하시면 됩니다</span>   
                        </div>
                    </div>
            
                    <div>
                        <!--고객 아이콘, 이름, 게시일-->
                        <div class="FAQ-all">
                            <!--고객 아이콘-->
                            <div class="FAQ-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!-- 고객 이름-->
                            <div class="FAQ-name">하현성</div>
                            <!-- 게시일-->
                            <div class="FAQ-date"><input type="date"></div>
                        </div>
            
                        <!-- 질문 내용-->
                    <div id="Accordion_wrap">
                        <div class="que">
                         <span>먹고나서 부작용이 있는거 같아요</span>
                          <div class="arrow-wrap">
                            <span class="arrow-top">↑</span>
                           <span class="arrow-bottom">↓</span>
                          </div>
                        </div>
                        <div class="anw">
                         <span>즉시 복용 중지 후 병원을 찾아가 주세요</span>   
                        </div>
                    </div>
                </div>
            
            
        </section> 
        
        

        
       
       
		<br>
		<br>
		<br>





        

    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
    <script src="${contextPath}/resources/js/slick.js"></script>
    <script src="${contextPath}/resources/js/productDetail.js"></script>
</body>
</html>