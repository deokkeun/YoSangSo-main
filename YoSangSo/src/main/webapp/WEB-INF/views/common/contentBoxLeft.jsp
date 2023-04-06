
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                <!-- 컨텐츠 내용 왼쪽 -->
                <section class="content-box-left">
                    <section class="content-box-left-1">
                        <div>
                            <div class="content-box-left-title">내프로필</div>
                            <div>
                                <a href="${contextPath}/member/myPageInfo">회원정보수정</a>
                            </div>
                        </div>
                        <div>
                            <div class="content-box-left-title">MY 쇼핑</div>
                            <div><a href="${contextPath}/order/orderHistory">주문내역조회</a></div>
                            <div><a href="${contextPath}/order/refunds">환불 및 취소</a></div>
                        </div>
                        <div>
                            <div class="content-box-left-title">나의 리뷰</div>
                            <div><a href="${contextPath}/board/reviewWriting">리뷰작성</a></div>
                            <div><a href="${contextPath}/board/reviewList">리뷰조회</a></div>
                        </div>
                        <div>
                            <div class="content-box-left-title">고객센터</div>
                            <div><a href="${contextPath}/board/inquiry">1:1 문의 하기</a></div>
                            <div><a href="${contextPath}/board/inquiryList">1:1 문의 내역 조회</a></div>
                            <div><a href="${contextPath}/board/faq">자주 묻는 질문</a></div>
                        </div>
                    </section>
                </section>
                