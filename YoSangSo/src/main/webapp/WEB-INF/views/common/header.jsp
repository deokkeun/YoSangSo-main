<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 -->
<header>
    <!-- 헤더내용 박스 -->
   <section id="header-box">
       <!-- 로고 -->
       <section>
           <a href="${contextPath}">
               <img src="${contextPath}/resources/image/logo/로고-001.png" alt="로고" id="home-logo" width="90px">
           </a>
       </section>
       
       <!-- 미디어쿼리용 지우지 마세요 -->
		<div class="menu-btn">
       	   <i class="fa-solid fa-bars menu-icon"></i>
       	   <div class="list-menu-div">
		       <ul class="menu-list">
		            <li><a href="${contextPath}/product/allProduct">전제품</a></li>
		            <li><a href="${contextPath}/product/newProduct">신상품</a></li>
		            <li><a href="${contextPath}/product/bestProduct">베스트</a></li>
		        </ul>
       	   </div>
       </div>

		
       <!-- 메뉴 -->
       <section id="header-box-menu">
           <nav class="list-nav">
               <ul>
                   <li><a href="${contextPath}/product/allProduct">전제품</a></li>
                   <li><a href="${contextPath}/product/newProduct">신상품</a></li>
                   <li><a href="${contextPath}/product/bestProduct">베스트</a></li>
               </ul>
           </nav>
       </section>
       

       <!-- 검색 -->
       <section>
           <article id="search-area">
               <form action="${contextPath}/searchingProduct" name="search-form" onsubmit="return noSpace()">
                   <fieldset>
                       <input type="search" id="query" name="query"
                       autocomplete="off">
                       <button id="search-btn" class="fa-solid fa-magnifying-glass"></button>
                   </fieldset>
               </form>
           </article>
       </section>
		<!-- 미디어쿼리용 지우지 마세욧 -->
   	   <div class="mypage-menu-btn">
			<i class="fa-solid fa-bars menu-icon"></i>
			<div class="mypage-menu-div">
				<ul  class="mypage-menu-list">
					<c:choose>
						<c:when test="${empty loginMember}">
							 <li>
                         		<a href="${contextPath}/member/login">장바구니</a> 
                      		</li>      
						</c:when>
						<c:otherwise>
		                   <li>
		                       <a href="${contextPath}/cart/shoppingCart">장바구니</a>
		                   </li>
						</c:otherwise>
                   </c:choose>
                   <c:choose>
                  	<c:when test="${empty loginMember}">
                  		<li>
	                       <a href="${contextPath}/member/signUp" >마이페이지</a> 
	                    </li>              	
                  	</c:when>
                  	<c:otherwise>
                  		<li>
	                       <a href="${contextPath}/member/myPageInfo">마이페이지</a>
	                    </li>
                  	</c:otherwise>
                  </c:choose>
				  <c:choose>
                  	<c:when test="${empty loginMember}">
                  		<li>
	                       <a href="${contextPath}/member/login">로그인</a>    
	                    </li>              	
                  	</c:when>
                  	<c:otherwise>
                  		<li>
	                       <a href="${contextPath}/member/logout">로그아웃</a>
	                    </li>
                  	</c:otherwise>
                  </c:choose>
                   <li>
                       <a href="${contextPath}/board/faq">FAQ</a>
                   </li>
               </ul>
			</div>
   	   </div>
   	   <!-- 미디어쿼리용이예요 꼭 살려주세요 -->
       <!-- 마이페이지 -->
       <section id="header-box-mypage" class="mypage-nav">
           <nav class="mypage-nav">
               <ul>
                <!-- 장바구니 -->
                <c:choose>
                    <c:when test="${empty loginMember}">
                        <li>
                         <a href="${contextPath}/member/login" class="fa-solid fa-cart-shopping"></a> 
                      </li>              	
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="${contextPath}/cart/shoppingCart" class="fa-solid fa-cart-shopping"></a>
                        </li>
                    </c:otherwise>
                </c:choose>

                   <!-- 사람모양(회원가입, 마이페이지) -->
                   <c:choose>
                  	<c:when test="${empty loginMember}">
                  		<li>
	                       <a href="${contextPath}/member/signUp" class="fa-solid fa-user"></a> 
	                    </li>              	
                  	</c:when>
                  	<c:otherwise>
                  		<li>
	                       <a href="${contextPath}/member/myPageInfo" class="fa-solid fa-user"></a>
	                    </li>
                  	</c:otherwise>
                  </c:choose>
                  
                  <!-- 로그인, 로그아웃 -->
                  <c:choose>
                  	<c:when test="${empty loginMember}">
                  		<li>
	                       <a href="${contextPath}/member/login">로그인</a>    
	                    </li>              	
                  	</c:when>
                  	<c:otherwise>
                  		<li>
	                       <a href="${contextPath}/member/logout">로그아웃</a>
	                    </li>
                  	</c:otherwise>
                  </c:choose>
                   <li>
                       <a href="${contextPath}/board/faq">FAQ</a>
                   </li>
               </ul>
           </nav>
       </section>
   </section>
<!-- 헤더 끝 -->
</header>
