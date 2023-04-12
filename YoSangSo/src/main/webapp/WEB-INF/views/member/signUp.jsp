<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/member/signUp.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>signUp</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        

        <section id="content">
            <section class="title">
                <div>회원가입</div>
                <div>요즘 생활의 소중함을 잊지 마세요</div>
            </section>
            <section>
            
            
                <form action="signUpBtn" method="POST" onsubmit="return signUpValidate()">
                    <div>
                        <div class="common">아이디 (이메일)</div>
                        <input type="text" class="input-box" id="memberEmail" name="memberEmail" autocomplete="off">
                    </div>
                    <div>
                        <div class="common">비밀번호 (영어, 숫자, 특수문자(!,@,#,-,_) 8~20글자)</div>
                        <input type="password" class="input-box" id="memberPw" name="memberPw" autocomplete="off">
                    </div>
                    <div>
                        <div class="common">비밀번호 확인</div>
                        <input type="password" class="input-box" id="memberPwConfirm" autocomplete="off">
                    </div>
                    <div id="cert1">
                        <div class="common">이메일 인증</div>
                        <input type="text" class="input-box" id="cMessage" autocomplete="off">
                        <button type="button" class="cert1" id="sendBtn">인증발송</button>
                    </div>
                    <div id="cert2">
                        <div class="common">인증번호 확인</div>
                        <input type="text" class="input-box" id="cNumber" autocomplete="off">
                        <button type="button" class="cert2" id="cBtn">인증확인</button>
                    </div>



                    <section>
                        <section  class="agree-box">
                            <section class="agree-box1">
                                <label>
                                    <input type="checkbox" name="agree" id="agree"> 가입 약관 모두 동의하기
                                </label>
                            </section>
                            <section class="agree-box2">
                                <div>
                                    <label>
                                        <input type="checkbox" name="agree" onclick="checkConfirm()"> [필수] 만 14세 이상입니다.
                                    </label>
                                    <button><a href="#">더보기</a></button>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox" name="agree" onclick="checkConfirm()"> [필수] 개발자국 비타 이용약관
                                    </label>
                                    <button><a href="#">더보기</a></button>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox" name="agree" onclick="checkConfirm()"> [필수] 전자금융거래 이용약관 동의
                                    </label>
                                    <button><a href="#">더보기</a></button>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox" name="agree" onclick="checkConfirm()"> [필수] 개인정보 수집 및 이용 동의
                                    </label>
                                    <button><a href="#">더보기</a></button>
                                </div>     
                                <div>
                                    <label>
                                        <input type="checkbox" name="agree"> [선택] 월 9,900원이 매달 자동결제 됩니다.
                                    </label>
                                    <button><a href="#">더보기</a></button>
                                </div>     
                            </section>   
                        </section>                             
                    </section>
                   


                    <div class="signUp-btn">
                        <button type="submit" class="btn">회원가입</button>
                    </div>

                </form>
                
                
                
                
                
            </section>
            <hr>
            <section>
                <div>
                    <button class="btn kakao">카카오 가입</button>
                </div>
                <div>
                    <button class="btn google">구글 가입</button>
                </div>
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
    
    <!-- signUp.js 연결 -->
    <script src="${contextPath}/resources/js/member/signUp.js"></script>
</body>
</html>