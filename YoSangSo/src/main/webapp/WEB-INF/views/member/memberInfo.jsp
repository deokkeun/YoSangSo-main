<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-sub-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/member/memberInfo.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
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

                    
                    <section class="member-info">
                        <div>회원정보</div>
                    </section>
                    <section class="member-info-box">
                        <section class="info-box">
                            <div>
                                <div>이름</div>
                                <div>
                                    <input type="text">
                                </div>
                            </div>
                            <hr>
                            <div>
                                <div>아이디(이메일)</div>
                                <div>
                                    <input type="text">
                                </div>
                            </div>
                            <hr>
                            <div>
                                <div>비밀번호</div>
                                <div>
                                    <div>
                                        현재 비밀번호 <input type="password"><br>
                                        새 비밀번호 <input type="password"><br>
                                        새 비밀번호 확인 <input type="password">
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <div>휴대전화번호</div>
                                <div>
                                    <select name="" id="">
                                        <option value="011">011</option>
                                        <option value="010" selected>010</option>
                                        <option value="02">02</option>
                                        <option value="031">031</option>
                                        <option value="032">032</option>
                                    </select>
                                    <input type="number" maxlength="4">
                                    <input type="number" maxlength="4">

                                </div>
                            </div>
                            <hr>
                            <div>
                                <div>주소</div>
                                <div class="col">
                                    <div>
                                        <input type="text" id="sample6_postcode" placeholder=" 우편번호" size="12">
                                        <button onclick="sample6_execDaumPostcode()" id="zip">우편번호 찾기</button>
                                    </div>
                                    <div>
                                        <span></span><input type="text" id="sample6_address" placeholder=" 주소" size="65"><br>
                                    </div>
                                    <div>
                                        <span></span><input type="text" id="sample6_detailAddress" placeholder=" 상세주소" size="45">
                                        <input type="text" id="sample6_extraAddress" placeholder=" 참고항목" size="30" class="address-sub">
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section>
                            <button class="withdrawal">회원 탈퇴</button>
                        </section>
                        
                    </section>
                    <section class="update-btn">
                        <button>취소</button><button>수정</button>
                    </section>







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

    <!-- memberInfo.js 연결 -->
    <script src="${contextPath}/resources/js/member/memberInfo.js"></script>
</body>
</html>