<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/productDetail.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/slick.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    
    
    <title>productDetail</title>
    
     <!--탑 버튼-->
    <a id="topBtn" href="#"> 
        <i class="fa-solid fa-angle-up fa-2x"></i>
    </a>
    
    
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
    <div id="sql-div">
    <sql:setDataSource var= "conn" 
	driver = "oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@//112.220.137.37:1521/xe"
	user="yosangso"
	password="yosangso"
	/>
    <c:if test="${loginMember != null}">
     <sql:query var="resultSet" dataSource="${conn}">
	   SELECT COUNT(*) COUNT FROM CART WHERE MEMBER_NO =${loginMember.memberNo } AND PRODUCT_NO = ${productList[0].productNo }
	</sql:query>
	</c:if>
	</div>
	
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
                    <form action="${contextPath}/order/pay" method="GET" name="purcahse">
                    <input type="hidden" name="pay_mode" value="detail"/>
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
                        <img id="delicon" src="${contextPath}/resources/image/order/delivery.svg">
                        <div class="del-cost">
                            배송비 : <span id="delcost">3000</span>원&nbsp;&nbsp;(10000원 이상 구매시 무료)
                        </div>
                        <br>
                        <hr>
                        <!--수량 가격-->
                        <div class="count">
                            수량 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="number" id="countbox" min="1" name="count" value="1">
                        </div>
                        <br>
                        <hr>
                        <!--총 금액-->
                        <div class="total-cost">
                        	
                        상품금액&nbsp;&nbsp;<span id="counting">${productList[0].price}</span>원 + 배송비&nbsp;&nbsp;
                        
                        	<c:if test="${productList[0].price >= 10000}">
                        		<span id=deltip>0</span>원
                        		<c:set var="del" value="0"/>
                        	</c:if>
                        	
                        	<c:if test="${productList[0].price < 10000}">
                        		<c:set var="del" value="3000"/>
                        		<span id=deltip>3000</span>원
                        	</c:if>
                        =
                      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      			
                        총 상품금액
                        &nbsp;<span id="totalcost">${productList[0].price + del}</span>원
                        	
                        </div>
                        
                  		<!-- 결제페이지로 넘기는 값 입니다. -->
                        <input type="hidden" value="${productList[0].productNo}" name="productNo" id="proNo">
                        <input type="hidden" value="${productList[0].productName}" name="productName">
                        <input type="hidden" value="${productList[0].price}" name="price">
                        <input type="hidden" value="${loginMember.memberNo}" name="loginmember" id="loginmember">
                        <br>
                        <br>
                        	
                        	<c:if test="${loginMember != null}">
	                            <div>
		                            <button type="submit" id="btn-purchase">구매하기</button>
	                            </div>
                        	</c:if>
							<c:if test="${loginMember == null}">
	                            <div>
		                            <button type="button"  onclick="return login()" id="btn-purchase">구매하기</button>
	                            </div>
                        	</c:if>
	                            
                     </form>       
                            <br>
                            <div>
                            
                     <c:choose>     
                        <c:when test="${loginMember != null}"> 
                        	<c:choose>
                            	<%--장바구니 버튼--%>
	                         	<c:when test="${resultSet.rows[0].COUNT == '0'}">
	                       			<button type="button"  onclick="return addcart()" id="btn-addcart">장바구니</button>
	                        	</c:when>
	                        	<c:otherwise>
	                       			<button type="button"  onclick="swal('장바구니에 이미 있는 상품입니다.','','warning')" id="btn-addcart">장바구니</button>
	                        	</c:otherwise>
                        	</c:choose>
                  
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
        			<h2 id="sug">추천 상품</h2>
                <div class="items">
                
                    <button class="prev"><</button>
                    <div class="item active"><a href="${contextPath}/product/productDetail?ProductNo=21"><img src="${contextPath}/resources/image/all/NOW Foods, E-400, 268mg, 소프트젤 250정.jpg"></a></div>
                       <div class="item"><a href="${contextPath}/product/productDetail?ProductNo=15"><img src="${contextPath}/resources/image/all/NOW Foods, 고효능 비타민D-3, 10,000IU, 소프트젤 120정.jpg"></a></div>
                       <div class="item"><a href="${contextPath}/product/productDetail?ProductNo=24"><img src="${contextPath}/resources/image/all/Jarrow Formulas, Zinc Balance, 베지 캡슐 100정.jpg"></a></div>
                       <div class="item"><a href="${contextPath}/product/productDetail?ProductNo=33"><img src="${contextPath}/resources/image/all/Codeage, 비타민, 모발, 비오틴, 콜라겐. 케라틴, 캡슐 120정.jpg"></a></div>
                       <div class="item"><a href="${contextPath}/product/productDetail?ProductNo=42"><img src="${contextPath}/resources/image/all/California Gold Nutrition, 비타민D3(감귤류), 2,000IU, 30ml(1fl oz) - 시트러스맛.jpg"></a></div>
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
                    <div class="reviewbox">
                        <!--고객 아이콘 이름 게시일-->
                        <div class="review-all">
                            <!--고객 아이콘-->
                            <div class="review-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!--고객 이름-->
                            <div class="review-name"><span>${reviewList[0].memberName}</span></div>
                            <!--게시일-->
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="review-date">게시일 : <span>${reviewList[0].reviewDate}</span></div>
                            <!-- 평점 -->
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="review-rate">평점 : <span>${reviewList[0].reviewRate}</span></div>
                        </div>
            
                        <!--리뷰 내용-->
                        <div class="review-main">
                            
                            
                                <pre class="review-con">${reviewList[0].reviewContent}</pre>
                              
                        </div>
            
                    </div>
                    <br>
                    <br>
                    <!--리뷰 2-->
                    <div class="reviewbox">
                        <!--고객 아이콘 이름 게시일-->
                        <div class="review-all">
                            <!--고객 아이콘-->
                            <div class="review-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!--고객 이름-->
                            <div class="review-name"><span>${reviewList[1].memberName}</span></div>
                            <!--게시일-->
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="review-date">게시일 : ${reviewList[1].reviewDate}</div>
                             <!-- 평점 -->
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="review-rate">평점 : <span>${reviewList[1].reviewRate}</span></div>
                        </div>
            
                        <!--리뷰 내용-->
                        <div class="review-main">
                            
                            <pre class="review-con">${reviewList[1].reviewContent}</pre>
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
                    <h2>Q&A</h2>
                    <!--FAQ1-->
                    <div class="QNAbox">
                        <!--고객 아이콘, 이름, 게시일-->
                        <div class="FAQ-all1">
                            <!--고객 아이콘-->
                            <div class="FAQ-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!-- 고객 이름-->
                            <div class="FAQ-name">${QNAList[0].memberName}</div>
                            <!-- 게시일-->
                            <div class="FAQ-date">${QNAList[0].inquiryDate}</div>
                        </div>
            
                        <!-- 질문 내용-->
                    <div id="Accordion_wrap">
                        <div class="que">
                         <span>${QNAList[0].inquiryContent}</span>
                          <div class="arrow-wrap">
                            <span class="arrow-top">↑</span>
                           <span class="arrow-bottom">↓</span>
                          </div>
                        </div>
                        <div class="anw">
                         <span>준비중입니다</span>   
                        </div>
                    </div>
            
                    <div>
                        <!--고객 아이콘, 이름, 게시일-->
                        <div class="FAQ-all">
                            <!--고객 아이콘-->
                            <div class="FAQ-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!-- 고객 이름-->
                            <div class="FAQ-name">${QNAList[1].memberName}</div>
                            <!-- 게시일-->
                            <div class="FAQ-date">${QNAList[1].inquiryDate}</div>
                        </div>
            
                        <!-- 질문 내용-->
                    <div id="Accordion_wrap2">
                        <div class="que">
                         <span>${QNAList[1].inquiryContent}</span>
                          <div class="arrow-wrap">
                            <span class="arrow-top">↑</span>
                           <span class="arrow-bottom">↓</span>
                          </div>
                        </div>
                        <div class="anw">
                         <span>준비중입니다</span>   
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