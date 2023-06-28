<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/faq.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>FAQ</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        
       
       
        <div class="header-main">
            <div id="faq-title-head">자주 묻는 질문</div>
            <div id="faq-subtitle-head">요생소에 자주 묻는 질문입니다.</div>
        </div>
        <div class="main-div">
            <!-- tap메뉴 -->
            <div class="tab-menu">
                <ul class="tap-list">
                    <li class="tap-link current" data-tab="tab-tab1">전체</li>
                    <li class="tap-link" data-tab="tab-tab2">제품</li>
                    <li class="tap-link" data-tab="tab-tab3">회원관리</li>
                    <li class="tap-link" data-tab="tab-tab4">주문/결제</li>
                    <li class="tap-link" data-tab="tab-tab5">취소/환불</li>
                </ul>
            </div>
            <!-- 카테코리 -->
            <div class="category-name">
                <div>분류</div>
                <div>제목</div>
            </div>
            <!-- 메인 컨텐츠 -->
            <div class="main-faq-menu">
                <div class="faq-contents current" id="tab-tab1">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-controls="flush-collapseOne">
                                <div class="button-con">
                                    <div>회원관리</div>
                                    <div>회원 탈퇴를 하고 싶어요.</div>
                                </div>
                            </button>
                        </h2>
                        <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">회원 탈퇴를 원하시나요? <br>
                            회원 탈퇴는 홈페이지 -> 마이페이지 -> 회원탈퇴에서 탈퇴하실 수 있어요.
                            <br> 개선 사항을 알려주시면 반영하겠습니다. 감사합니다.
                            </div>
                        </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                            <div class="button-con">
                                <div>회원관리</div>
                                <div>회원 정보를 변경하고 싶어요.</div>
                            </div>
                            </button>
                        </h2>
                        <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">회원 정보는 홈페이지 -> 마이페이지에서 변경 가능합니다. 감사합니다.</div>
                        </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                <div class="button-con">
                                <div>회원관리</div>
                                <div>비밀번호가 기억나지 않아요</div>
                            </div>
                            </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">비밀번호는 로그인 창의 아이디/비밀번호 찾기에서 찾을 수 있습니다. <br>
                            만일 진행이 원할하게 되지 않을 시 요생소 고객센터에 전화를 주시면 친절하게 도와드리겠습니다.</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingFour">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                <div class="button-con">
                                    <div>제품</div>
                                    <div>요생소 제품은 믿을만한가요?</div>
                                </div>
                            </button>
                        </h2>
                        <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">요생소 제품은 모두 식약처 인증을 받은 제품입니다. <br>
                            충분한 임상을 거친 제품만을 판매하고 있으니 안심하시고 드셔도 됩니다.
                            <br> 추가 문의 사항이 있으면 개인 문의를 이용해주시면 감사하겠습니다.
                            </div>
                        </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingFive">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                            <div class="button-con">
                                <div>제품</div>
                                <div>알러지가 있는데 먹어도 되나요?</div>
                            </div>
                            </button>
                        </h2>
                        <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">특정 약품에 따른 알러지 반응을 모두 예상하기 어려워 전문의와 상담 후 섭취하시길 권하고 있습니다. <br>
                            혹시나 특정 성분에 대해 궁금한 점이 있으시면 1대1 문의를 통해 연락주시면<br>
                        친절하게 답변해드리겠습니다.</div>
                        </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingSix">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-controls="flush-collapseSix">
                            <div class="button-con">
                                <div>제품</div>
                                <div>손상된 제품이 왔습니다.</div>
                            </div>
                            </button>
                        </h2>
                        <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">파손이나 불량 상품은 즉시 환불 또는 교환해드리고 있습니다. <br>
                            상세한 사진과 함께 환불 / 교환 접수를 해주시면 바로 도와드리겠습니다.
                        </div>
                        </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingSeven">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
                            <div class="button-con">
                                <div>제품</div>
                                <div>다른 제품과 함께 복용해도 되나요?</div>
                            </div>
                            </button>
                        </h2>
                        <div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">요생소 비타민은 다른 제품과 같이 드셔도 문제가 없는 제품만을 판매하고 있습니다. <br>
                            다만 개개인의 체질과 병력에 따라 부작용이 있을 수 있으므로 의사와 상담 후에 드시길 권해드리고 있습니다.</div>
                        </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingeight">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseeight" aria-expanded="false" aria-controls="flush-collapseeight">
                            <div class="button-con">
                                <div>주문/결제</div>
                                <div>결제 방법은 어떻게 되나요?</div>
                            </div>
                            </button>
                        </h2>
                        <div id="flush-collapseeight" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">주문은 카카오페이를 지원하고 있습니다. 
                            <br>추후에 다른 결제 방식을 추가할 예정입니다. 감사합니다.</div>
                        </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingnine">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsenine"  aria-controls="flush-collapsenine">
                            <div class="button-con">
                                <div>주문/결제</div>
                                <div>정기 구독 결제가 가능한가요?</div>
                            </div>
                            </button>
                        </h2>
                        <div id="flush-collapsenine" class="accordion-collapse collapse" aria-labelledby="flush-headingnine" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">정기 결제를 통한 구독 방식은 아직 지원하지 않습니다. <br>
                            추후에 구독 상품을 마련해 안내해 드릴 예정입니다. 꾸준한 사랑과 관심 감사합니다.</div>
                        </div>
                        </div>
                        <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingTen">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapsethree4">
                            <div class="button-con">
                                <div>주문/결제</div>
                                <div>결제가 진행되지 않습니다. 도와주세요</div>
                            </div>
                            </button>
                        </h2>
                        <div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingten" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">결제 오류는 다양한 상황이 있습니다. 정확한 오류 코드를 문의해주시면
                                <br>빠른 시일 내로 조치해드리겠습니다.
                            </div>
                        </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingElev">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseElev" aria-expanded="false" aria-controls="flush-collapseElev">
                                <div class="button-con">
                                <div>취소/환불</div>
                                <div>환불 신청은 어떻게 해야 하나요?</div>
                                </div>
                            </button>
                            </h2>
                            <div id="flush-collapseElev" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">환불 신청은 마이페이지에서 주문한 상품 목록에서 신청하실 수 있습니다.<br>
                            </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingTwo5">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo5"  aria-controls="flush-collapseTwo5">
                                <div class="button-con">
                                <div>취소/환불</div>
                                <div>환불한 금액은 언제 입금되나요?</div>
                            </div>
                            </button>
                            </h2>
                            <div id="flush-collapseTwo5" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">환불진행이 완료 되면 1~3일 내로 환불 금액이 입금됩니다. <br>
                            만일 진행이 원할하게 되지 않을 시 요생소 고객센터에 전화를 주시면 친절하게 도와드리겠습니다.</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingthree5">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsethree5" aria-expanded="false" aria-controls="flush-collapsethree5">
                                <div class="button-con">
                                <div>취소/환불</div>
                                <div>환불 사유는 어떻게 되나요?</div>
                                </div>
                            </button>
                            </h2>
                            <div id="flush-collapsethree5" class="accordion-collapse collapse" aria-labelledby="flush-headingthree" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">요생소는 제품 이상이 아닌 단순 변심에 의한 환불 역시 진행하고 있습니다.<br>
                            다만 사용자의 사용 및 훼손이 있을 시 환불 불가능함을 알려드립니다.</div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <!-- tap2 -->
                <div class="faq-contents" id="tab-tab2">
                <div class="accordion accordion-flush" id="accordionFlushExample2">
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne2" aria-controls="flush-collapseOne2">
                            <div class="button-con">
                                <div>제품</div>
                                <div>요생소 제품은 믿을만한가요?</div>
                            </div>
                        </button>
                    </h2>
                    <div id="flush-collapseOne2" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample2">
                        <div class="accordion-body">요생소 제품은 모두 식약처 인증을 받은 제품입니다. <br>
                        충분한 임상을 거친 제품만을 판매하고 있으니 안심하시고 드셔도 됩니다.
                        <br> 추가 문의 사항이 있으면 개인 문의를 이용해주시면 감사하겠습니다.
                        </div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo2" aria-expanded="false" aria-controls="flush-collapseTwo2">
                        <div class="button-con">
                            <div>제품</div>
                            <div>알러지가 있는데 먹어도 되나요?</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapseTwo2" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample2">
                        <div class="accordion-body">특정 약품에 따른 알러지 반응을 모두 예상하기 어려워 전문의와 상담 후 섭취하시길 권하고 있습니다. <br>
                        혹시나 특정 성분에 대해 궁금한 점이 있으시면 1대1 문의를 통해 연락주시면<br>
                    친절하게 답변해드리겠습니다.</div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingThree2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree2" aria-controls="flush-collapseThree2">
                        <div class="button-con">
                            <div>제품</div>
                            <div>손상된 제품이 왔습니다.</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapseThree2" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample2">
                        <div class="accordion-body">파손이나 불량 상품은 즉시 환불 또는 교환해드리고 있습니다. <br>
                        상세한 사진과 함께 환불 / 교환 접수를 해주시면 바로 도와드리겠습니다.
                    </div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingFour2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour2" aria-expanded="false" aria-controls="flush-collapseFour2">
                        <div class="button-con">
                            <div>제품</div>
                            <div>다른 제품과 함께 복용해도 되나요?</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapseFour2" class="accordion-collapse collapse" aria-labelledby="flush-headingFouor" data-bs-parent="#accordionFlushExample2">
                        <div class="accordion-body">요생소 비타민은 다른 제품과 같이 드셔도 문제가 없는 제품만을 판매하고 있습니다. <br>
                        다만 개개인의 체질과 병력에 따라 부작용이 있을 수 있으므로 의사와 상담 후에 드시길 권해드리고 있습니다.</div>
                    </div>
                    </div>
                </div>
                </div>
                <!-- tab3 -->
                <div class="faq-contents" id="tab-tab3">
                <div class="accordion accordion-flush" id="accordionFlushExample3">
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne3" aria-controls="flush-collapseOne">
                            <div class="button-con">
                                <div>회원관리</div>
                                <div>회원 탈퇴를 하고 싶어요.</div>
                            </div>
                        </button>
                    </h2>
                    <div id="flush-collapseOne3" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample3">
                        <div class="accordion-body">회원 탈퇴를 원하시나요? <br>
                        회원 탈퇴는 홈페이지 -> 마이페이지 -> 회원탈퇴에서 탈퇴하실 수 있어요.
                        <br> 개선 사항을 알려주시면 반영하겠습니다. 감사합니다.
                        </div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo3" aria-expanded="false" aria-controls="flush-collapseTwo">
                        <div class="button-con">
                            <div>회원관리</div>
                            <div>회원 정보를 변경하고 싶어요.</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapseTwo3" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample3">
                        <div class="accordion-body">회원 정보는 홈페이지 -> 마이페이지에서 변경 가능합니다. 감사합니다.</div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingThree3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree3" aria-expanded="false" aria-controls="flush-collapseThree">
                        <div class="button-con">
                            <div>회원관리</div>
                            <div>비밀번호가 기억나지 않아요</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapseThree3" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample3">
                        <div class="accordion-body">비밀번호는 로그인 창의 아이디/비밀번호 찾기에서 찾을 수 있습니다. <br>
                        만일 진행이 원할하게 되지 않을 시 요생소 고객센터에 전화를 주시면 친절하게 도와드리겠습니다.</div>
                    </div>
                    </div>
                </div>
                </div>
                <!-- tap4 -->
                <div class="faq-contents" id="tab-tab4">
                <div class="accordion accordion-flush" id="accordionFlushExample4">
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne4" aria-expanded="false" aria-controls="flush-collapseOne4">
                        <div class="button-con">
                            <div>주문/결제</div>
                            <div>결제 방법은 어떻게 되나요?.</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapseOne4" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample4">
                        <div class="accordion-body">주문은 카카오페이를 지원하고 있습니다. 
                        <br>추후에 다른 결제 방식을 추가할 예정입니다. 감사합니다.
                        </div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo4"  aria-controls="flush-collapseTwo4">
                        <div class="button-con">
                            <div>주문/결제</div>
                            <div>정기 구독 결제가 가능한가요?</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapseTwo4" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample4">
                        <div class="accordion-body">정기 결제를 통한 구독 방식은 아직 지원하지 않습니다. <br>
                            추후에 구독 상품을 마련해 안내해 드릴 예정입니다. 꾸준한 사랑과 관심 감사합니다.</div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingthree4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsethree4" aria-expanded="false" aria-controls="flush-collapsethree4">
                        <div class="button-con">
                            <div>주문/결제</div>
                            <div>결제가 진행되지 않습니다. 도와주세요</div>
                        </div>
                        </button>
                    </h2>
                    <div id="flush-collapsethree4" class="accordion-collapse collapse" aria-labelledby="flush-headingthree" data-bs-parent="#accordionFlushExample4">
                        <div class="accordion-body">결제 오류는 다양한 상황이 있습니다. 정확한 오류 코드를 문의해주시면
                            <br>빠른 시일 내로 조치해드리겠습니다.</div>
                    </div>
                    </div>
                </div>
                </div>
                <!-- tap5 -->
                <div class="faq-contents" id="tab-tab5">
                    <div class="accordion accordion-flush" id="accordionFlushExample11">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingT1">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseT1" aria-expanded="false" aria-controls="flush-collapseTwelv">
                            <div class="button-con">
                            <div>취소/환불</div>
                            <div>환불 신청은 어떻게 해야 하나요?</div>
                            </div>
                        </button>
                        </h2>
                        <div id="flush-collapseT1" class="accordion-collapse collapse" aria-labelledby="flush-headingT1" data-bs-parent="#accordionFlushExample11">
                        <div class="accordion-body">환불 신청은 마이페이지에서 주문한 상품 목록에서 신청하실 수 있습니다.<br>
                        </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingT2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseT2"  aria-controls="flush-collapseTwo">
                            <div class="button-con">
                            <div>취소/환불</div>
                            <div>환불한 금액은 언제 입금되나요?</div>
                        </div>
                        </button>
                        </h2>
                        <div id="flush-collapseT2" class="accordion-collapse collapse" aria-labelledby="flush-headingT2" data-bs-parent="#accordionFlushExample11">
                        <div class="accordion-body">환불진행이 완료 되면 1~3일 내로 환불 금액이 입금됩니다. <br>
                        만일 진행이 원할하게 되지 않을 시 요생소 고객센터에 전화를 주시면 친절하게 도와드리겠습니다.</div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingT3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseT3" aria-expanded="false" aria-controls="flush-collapsethree5">
                            <div class="button-con">
                            <div>취소/환불</div>
                            <div>환불 사유는 어떻게 되나요?</div>
                            </div>
                        </button>
                        </h2>
                        <div id="flush-collapseT3" class="accordion-collapse collapse" aria-labelledby="flush-headingT3" data-bs-parent="#accordionFlushExample11">
                        <div class="accordion-body">요생소는 제품 이상이 아닌 단순 변심에 의한 환불 역시 진행하고 있습니다.<br>
                        다만 사용자의 사용 및 훼손이 있을 시 환불 불가능함을 알려드립니다.</div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>

    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
    <!-- main.js 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/main.js"></script>
    <script src="${contextPath}/resources/js/faq.js"></script>
</body>
</html>