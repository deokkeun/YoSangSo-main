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

       <!-- 메뉴 -->
       <section id="header-box-menu">
           <nav>
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
               <form action="#" name="search-form">
                   <fieldset>
                       <input type="search" id="query" name="query"
                       autocomplete="off">
                       <button id="search-btn" class="fa-solid fa-magnifying-glass"></button>
                   </fieldset>
               </form>
           </article>
       </section>

       <!-- 마이페이지 -->
       <section id="header-box-mypage">
           <nav>
               <ul>
                   <li>
                       <a href="${contextPath}/cart/shoppingCart" class="fa-solid fa-cart-shopping"></a>
                   </li>
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
