<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pagination" value="${ map.pagination }"/>
<c:set var="inquiryList" value="${ map.inquiryList }"/>
<c:set var="url" value="inquiryList?&cp="/>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/inquiry/inquiryList.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    
    <title>inquiryList</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
       
       
       
         <!-- 컨텐츠 -->
    <!-- <section id="content"> -->

            <!-- 컨텐츠 내용 -->
        <section class="content-box">

    <!-- content 전체 감싸는 영역 -->
             <section class="content-container">

                <div id="left-space"></div>


                <div id="middle-area">
                    <div class="topQuestion">
                        <div>
                            <span>1:1 문의게시판</span>
                        </div>
                        <div>
                        회원님들이 남겨주신 문의 내용들입니다.
                        </div>
                    </div>




                    <div id="middle-area2">

                        <div id="topOfList">
                            <div>글번호</div>
                            <div>내용</div>
                            <div>작성자</div>
                            <div>작성일</div>
                        </div>
                        
                     
                        
						<form action=>
                            <div class="middleListOutBox">
                         
                            	<c:choose>
                            		<c:when test="${ !empty inquiryList }" > 

                                        
                                        <c:forEach var="item" items="${ inquiryList }"  varStatus="status">
                                            
                                            <div class="middleOfList">
                                                <div>${ item.boardNo } </div>
			                                    <div><span id="textOverFlow">${ item.boardContent }</span></div>
			                                    <div>${ item.memberName }</div>
			                                    <div>${ item.boardDate }</div>
			                                </div>
                                            
                                            
                                            <div class="answerBox">
                
                                                <div class="questionTitleBox">
                                                    <div class="questionInnerBox" id="questionInnerBox">
                                                        <p><span>Q</span></p>
                                                        <p id="questionP"><span>${ item.boardContent }</span></p>
                                                    </div>
                                                    <c:if test="${ loginMember.memberNo eq item.memberNo }">
                                                    <div class="quetionInnerBoxBtn" id="quetionInnerBoxBtn">
                                                        <button type="button" class="inquiryDelete" id="inquiryDelete" onclick="return deleteBoard(this,'${item.boardNo}')">삭제</button> 
                                                        <button type="button" class="inquiryUpdate" id="inquiryUpdate" onclick="return updateBoard(this,'${item.boardNo}')">수정</button> 
                                                    </div>
                                                    </c:if>
                                                </div>
                
                                                <div class="answerTitleBox">
                                                    <div class="answerInnerBox" id="answerInnerBox">
                                                        <p><span>A</span></p>
                                                        <p><span>내일쯤 되지 않을까요? 깔깔 몰라융 내가 어떻게 알아요~</span></p>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </c:forEach>
                            		</c:when>
                            		
                            		<c:otherwise>
                            			
                            			<div><h1>게시물이 존재하지 않습니다.</h1></div>
                            		
                            		</c:otherwise>

                            	</c:choose>
						
                            </div>
                        </form>
                        
                        

                    <div id="writingBtnBox">
                        <button type="button" id="btnOfWriting" onclick=location.href="inquiry" >문의작성</button>
                    </div>
	
                    <div class="numListBox">
                        <div id="numListBtnBox">
                            <a id="movePrev" href="${url}${pagination.prevPage}">&lt;</a> 
                        </div>
                    
                	<c:forEach var="i" begin="${ pagination.startPage }" end="${ pagination.endPage }" step="1">
                        <li id="listBox" class="${pagination.currentPage eq i ? 'active' : '' }">
                            <a href="${url}${i}" id="aNum">${i}</a>
                        </li>
                  	 </c:forEach>
                   	
                        <div id="numListBtnBox2">
                            <a id="moveNext" href="${url}${pagination.nextPage}">&gt;</a>
                        </div>
                        
                    </div>

                </div>

                <div id="right-space"></div>

            <!-- 컨텐츠 내용 끝 -->
            </section>

        </section>

        






        

    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   

      <script>
        $(function(){
            $("div.middleOfList").on("click", function() {
                if($(this).next("div").css("display") == "none") {
                    $(this).siblings("div.answerBox").slideUp();
                    $(this).next().slideDown(); 
                } else{
                    $(this).next().slideUp();
                }
            });
        });
    </script>

	
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>

    <!-- inquiryList.js 연결 -->
    <script src="${contextPath}/resources/js/board/inquiryList.js"></script>
</body>
</html>