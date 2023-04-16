<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-sub-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/refundList.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>환불</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        
            <!-- 컨텐츠 -->
        <section id="content">

            <!-- 컨텐츠 내용 -->
            <section class="content-box">

                <jsp:include page="/WEB-INF/views/common/contentBoxLeft.jsp"/>
                
                <!-- 컨텐츠 내용 오른쪽 -->
                <section  class="content-box-right">
			            <c:if test="${empty refundList }">
			            	<div class="not-exist">
			            		환불한 내역이 존재하지 않습니다.
			            	</div>
			            </c:if> 
			            <c:if test="${not empty refundList }">
			            <div class="cont">
				            <div>
				                <div class="info-bar">
				                    <div>
				                        <span>환불</span>
				                    </div>
				                    <div>
				                        <span>문의 사항은 1:1 문의를 이용해주세요.</span>
				                    </div>
				                </div>
				            </div>
				            <div class="out-line">
				            <!-- 메뉴헤드 영역 -->
				                <div class="menu-head">
				                    <div>상품정보</div>
				                    <div>개수</div>
				                    <div>환불금액</div>
				                    <div>상태</div>
				                </div>
				                <c:forEach var="list" items="${refundList}">
				                <!-- 제품 상세 영역 -->
				                <div class="goods-detail">
				                    <div>
				                        <img src="${contextPath}/resources/image/all/${list.productName}.jpg" id="goods-image">
				                    </div>
				                    <div>
				                        ${list.productName}
				                    </div>
				                    <div>
				                        ${list.buyingRate } 개
				                    </div>
				                    <div>
				                        <fmt:formatNumber value="${list.buyingRate * list.price }" pattern="#,###"/>원
				                    </div>
				                    <div>
				                        취소 완료
				                    </div>
				                </div>
				                <!-- 마지막 라인 영역 -->
				                <div class="last-line">
				                    <div>
				                        취소일 : ${list.refundDate } &nbsp;&nbsp; 주문일 : ${list.orderDate }
				                    </div>
				                </div>
				            	</c:forEach>
				            </div>
				            <!-- 마무리 내역 선 -->
				            <div class="end-line">                        
				                <span>취소/환불 내역을 확인할 수 있습니다.</span>
				            </div>
				        </div>
				        <div class="paging">
				        	<ul>
	               				<!-- 2. 이전버튼 활성화 여부 -->
	               				<c:if test="${refundPageVo.prev }">
                        			<li><a href="${contextPath}/refund/refundList?pageNum=${refundPageVo.startPage - 1 }&amount=${refundPageVo.amount}">이전</a></li>
								</c:if>
								                        		
                        		<!-- 1. 페이지번호 처리 -->
                        		<c:forEach var="num" begin="${refundPageVo.startPage }" end="${refundPageVo.endPage }">
	                        		<li  class="${refundPageVo.pageNum eq num ? 'active' : '' }">
	                        		<a href="${contextPath}/refund/refundList?pageNum=${num }&amount=${refundPageVo.amount}">${num }</a></li>
                        		</c:forEach>
                        		
                        		<!-- 3. 다음버튼 활성화 여부 -->
                        		<c:if test="${refundPageVo.next }">
                        			<li><a href="${contextPath}/refund/refundList?pageNum=${refundPageVo.endPage + 1 }&amount=${refundPageVo.amount}">다음</a></li>
                        		</c:if>
                    		</ul>
                    	</div>  
			            </c:if>
                </section>

            <!-- 컨텐츠 내용 끝 -->
            </section>

        </section>



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