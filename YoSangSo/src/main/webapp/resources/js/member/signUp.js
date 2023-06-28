

const common = document.getElementsByClassName("input-box");

for(let box of common) {
    box.addEventListener("focus", function() {
        box.previousElementSibling.classList.add("common1");
    });
    box.addEventListener("blur", function() {
        box.previousElementSibling.classList.remove("common");
        box.previousElementSibling.classList.remove("common1");
        box.previousElementSibling.classList.add("common2");
    });
};



const checkObj = {
    "memberEmail" : false,
    "memberPw" : false,
    "memberPwConfirm" : false,
    "cMessage" : false,
    "cNumber" : false,
    "sendEmail" : false,
    "agreeCheck" : false
};



// 전체 동의 박스 (총 5개)
const agree = document.getElementById("agree");
// 동의 갯수 5개
const agreeAll = document.getElementsByName("agree");
// 전체동의 제외 4개(박스)
const agreeSub = document.querySelector(".agree-box2");


// 모두 동의 1개 박스
document.querySelector(".agree-box1").addEventListener("click", function() {
    if(agree.checked) {
        for(let agree of agreeAll) {
            agree.setAttribute("checked", "true");
        }
        agreeSub.style.transitionDuration = "1s";
        agreeSub.style.height = "165px";
        agreeSub.style.borderTop = "1px solid rgba(0, 0, 0, 0.2)";
        agreeSub.style.borderBottom = "1px solid rgba(0, 0, 0, 0.2)";
        this.style.backgroundColor = "rgba(0, 0, 0, 0.05)";
        this.style.color = "black";
    } else {
        agreeSub.style.height = "0px";
        agreeSub.style.borderTop = "none";
        agreeSub.style.borderBottom = "none";
        this.style.backgroundColor = "transparent";
    }
    
    checkObj.agreeCheck = true;
});



function checkConfirm() {
	let count = 0;
	
	for(let i = 0; i < 5; i++) {
		if(agreeAll[i].checked == true) {
			++count;
		}
	}

	if(count == 5) {
		checkObj.agreeCheck = true;
	} else {
		checkObj.agreeCheck = false;
		swal('가입 약관!', "필수 동의 항목 입니다.", 'warning');
	}
}



// 이메일 검증
const memberEmail = document.getElementById("memberEmail");
memberEmail.addEventListener("input", function() {

    // 입력이 되어있지 않은 경우
    if(memberEmail.value.length == 0) {
        memberEmail.previousElementSibling.innerHTML = "메일을 받을수 있는 이메일을 입력해주세요.";
        memberEmail.previousElementSibling.classList.remove("confirm", "error");
        checkObj.memberEmail = false;
        return;
    }

    // 유효성 검사가 유효한 경우
    const regExp = /^[\w\-\_]{4,}@[\w\-\_]+(\.\w+){1,3}$/;
    if(regExp.test(memberEmail.value)) {
        $.ajax({
            url : "emailDupCheck",
            data : {"memberEmail" : memberEmail.value},
            type : "GET",
            success : function(result) {
                if(result == 1) { // 중복
                    memberEmail.previousElementSibling.innerHTML = "이미 사용중인 이메일 입니다.";
                    memberEmail.previousElementSibling.classList.add("error");
                    memberEmail.previousElementSibling.classList.remove("confirm");
                    checkObj.memberEmail = false;
                } else {
                    memberEmail.previousElementSibling.innerHTML = "사용 가능한 이메일 입니다.";
                    memberEmail.previousElementSibling.classList.add("confirm");
                    memberEmail.previousElementSibling.classList.remove("error"); 
                    checkObj.memberEmail = true;
                }
            },
            error : function() {
                console.log("error");
            }
      	})
    } else {
        memberEmail.previousElementSibling.innerHTML = "이메일 형식이 유효하지 않습니다.";
        memberEmail.previousElementSibling.classList.add("error");
        memberEmail.previousElementSibling.classList.remove("confirm");
        checkObj.memberEmail = false;
    }
});



const memberPw = document.getElementById("memberPw");
const memberPwConfirm = document.getElementById("memberPwConfirm");

memberPw.addEventListener("input", function() {
	
	if(memberPw.value.length == 0) {
		memberPw.previousElementSibling.innerHTML = "영어, 숫자, 특수문자(!,@,#,-,_) 8~20글자 사이로 작성해주세요.";
        memberPw.previousElementSibling.classList.remove("confirm", "error");
		checkObj.memberPw = false;
		return;
	}
	
	const regExp = /^(?=.*[a-zA-Z]).(?=.*[0-9\!\@\#\-\_]).{8,20}$/;
	
	if(regExp.test(memberPw.value)) {
		
		checkObj.memberPw = true;
		memberPw.previousElementSibling.innerHTML = "유효한 비밀번호 형식 입니다.";
		memberPw.previousElementSibling.classList.add("confirm");
		memberPw.previousElementSibling.classList.remove("error");
		
		if(memberPwConfirm.value.length == 0) {
			memberPw.previousElementSibling.innerHTML = "유효한 비밀번호 형식 입니다.";
			memberPw.previousElementSibling.classList.add("confirm");
			memberPw.previousElementSibling.classList.remove("error");
			
		} else {
			checkPw();
		}
	} else {
		memberPw.previousElementSibling.innerHTML = "비밀번호 형식이 유효하지 않습니다.";
		memberPw.previousElementSibling.classList.add("error");
		memberPw.previousElementSibling.classList.remove("confirm");
		checkObj.memberPw = false;
	}
});


// 함수명() -> 함수 호출
// 함수명 -> 함수에 작성된 코드 반환

// 비밀번호 확인 유효성 검사
memberPwConfirm.addEventListener("input", checkPw);

function checkPw() {
	if(memberPwConfirm.value.length == 0) {
		memberPwConfirm.previousElementSibling.innerHTML = "영어, 숫자, 특수문자(!,@,#,-,_) 8~20글자 사이로 작성해주세요.";
        memberPwConfirm.previousElementSibling.classList.remove("confirm", "error");
		checkObj.memberPwConfirm = false;
		return;
	}
	
	if(memberPw.value == memberPwConfirm.value) {
		memberPwConfirm.previousElementSibling.innerHTML = "비밀번호가 일치합니다.";
		memberPwConfirm.previousElementSibling.classList.add("confirm");
		memberPwConfirm.previousElementSibling.classList.remove("error");
		checkObj.memberPwConfirm = true;
	} else {
		memberPwConfirm.previousElementSibling.innerHTML = "비밀번호가 일치하지 않습니다.";
		memberPwConfirm.previousElementSibling.classList.add("error");
		memberPwConfirm.previousElementSibling.classList.remove("confirm");
		checkObj.memberPwConfirm = false;
	}
}







// 회원가입 버튼 클릭 시 유효성 검사가 완료 되었는지 확인하는 함수
function signUpValidate(){

    // checkObj에 있는 모든 속성을 반복 접근하여
    // false가 하나라도 있는 경우에는 form태그 기본 이벤트 제거

    let str;

    for( let key  in checkObj ){ // 객체용 향상된 for문

        // 현재 접근 중인 key의 value가 false인 경우
        if( !checkObj[key] ){ 

            switch(key){
            case "memberEmail":     str="이메일이"; break;
            case "memberPw":        str="비밀번호가"; break;    
            case "memberPwConfirm": str="비밀번호 확인이"; break;
            case "cMessage":  		str="이메일 인증이"; break;
            case "cNumber":      	str="인증번호가"; break;
            case "agreeCheck":		str="필수 동의항목 개수가"; break;
            }

            str += " 유효하지 않습니다.";

            // alert(str);
			swal('회원가입 실패!', str, 'warning');
			
			if(checkObj.agreeCheck == false) {
				return false;
			}
			
            document.getElementById(key).focus();
            
            return false; // form태그 기본 이벤트 제거
        }
    }
    
	swal('회원가입을 축하드립니다!', "요생소에 오신것을 환영합니다!", 'success');

	setTimeout(function() {
		document.getElementById('signUp-form').submit();
	}, 3000);
	
	return false; // form태그 기본 이벤트 제거

}



const sendBtn = document.getElementById("sendBtn");
const cMessage = document.getElementById("cMessage");
const cNumber = document.getElementById("cNumber");

let checkInterval;
let min = 4;
let sec = 59;

cMessage.addEventListener("input", function() {

    if(cMessage.value.length == 0) {
        cMessage.previousElementSibling.innerHTML = "메일을 받을수 있는 이메일을 입력해주세요.";
        cMessage.previousElementSibling.classList.remove("confirm", "error");
        checkObj.cMessage = false;
        return;
    }

    const regExp = /^[\w\-\_]{4,}@[\w\-\_]+(\.\w+){1,3}$/;

    if(regExp.test(cMessage.value)) {
        cMessage.previousElementSibling.innerHTML = "사용 가능한 이메일 입니다.";
        cMessage.previousElementSibling.classList.add("confirm");
        cMessage.previousElementSibling.classList.remove("error"); 
        checkObj.cMessage = true;
    } else {
        cMessage.previousElementSibling.innerHTML = "이메일 형식이 유효하지 않습니다.";
        cMessage.previousElementSibling.classList.add("error");
        cMessage.previousElementSibling.classList.remove("confirm");
        checkObj.cMessage = false;
    }
});

// 이메일 인증번호 받기
sendBtn.addEventListener("click", function() {
	// 유효한 이메일이 작성되어 있는 경우 이메일 인증번호 전송
	
	if(cMessage.value.length == 0) {
		swal('전송 실패!', "이메일을 작성해주세요.", 'warning');
	}
	
	if(checkObj.cMessage) {
		$.ajax({
			url : "sendEmail",
			data : {"cMessage" : cMessage.value},
			type : "GET",
			success : function(result) {
				// swal('전송 성공!', "이메일로 인증번호를 발송하였습니다.", 'success');
				console.log(result);
				checkObj.sendEmail = true;
				
			},
			error : function() {
				swal('전송 실패!', "이메일을 확인해 주세요.", 'warning');
			}
		})
		
		// 메일 전송 후 카운트 시작
		cNumber.previousElementSibling.innerHTML = "5:00";
		min = 4;
		sec = 59;
		
		cNumber.previousElementSibling.classList.remove("confirm", "error");
		cNumber.previousElementSibling.classList.add("common1");
		
		checkInterval = setInterval(function() {
			if(sec < 10) {
				sec = "0" + sec;
			}
			cNumber.previousElementSibling.innerHTML = min + ":" + sec;
			
			if(Number(sec) === 0) {
				min--;
				sec = 59;
			} else {
				sec--;
			}
			
			if(min === -1) {
				cNumber.previousElementSibling.classList.remove("common1");
				cNumber.previousElementSibling.classList.add("error");
				cNumber.previousElementSibling.innerHTML = "인증시간이 만료되었습니다.";
				
				clearInterval(checkInterval);
			}
			
		}, 1000);
		
		swal('전송 성공!', "이메일로 인증번호를 발송하였습니다.", 'success');
	}
});


// cNumber 위에 선언 되어있음
const cBtn = document.getElementById("cBtn");

cBtn.addEventListener("click", function() {
	if(checkObj.sendEmail) {
		if(cNumber.value.length == 6) {

			$.ajax({
				url : "checkNumber",
				data : {"cMessage" : cMessage.value, "cNumber" : cNumber.value},
				type : "GET",
				success : function(result) {
					
			    	console.log(result);  
                    // 1 : 인증번호 일치 O, 시간 만족O
                    // 2 : 인증번호 일치 O, 시간 만족X
                    // 3 : 인증번호 일치 X

                    if(result == 1){

                        clearInterval(checkInterval); // 타이머 멈춤     
						swal('인증 성공!', "인증 되었습니다.", 'success');
                        cNumber.previousElementSibling.innerHTML = "인증되었습니다.";
				        cNumber.previousElementSibling.classList.add("confirm");
				        cNumber.previousElementSibling.classList.remove("error"); 
						checkObj.cNumber = true;

                    } else if(result == 2){
						swal('인증 실패!', "만료된 인증 번호 입니다.", 'warning');

                    } else{ // 3
                    	swal('인증 실패!', "인증 번호가 일치하기 않습니다.", 'warning');
                    }

					
				},
				error : function() {
					swal('인증 실패!', "인증을 실패하였습니다.", 'warning');
				}
			})
			
		} else {
			swal('인증 실패!', "인증번호를 정확하게 입력해주세요.", 'warning');
			cNumber.focus();
		}
	} else {
		swal('인증 실패!', "인증번호 받기 버튼을 먼저 클릭해주세요.", 'warning');
	}
});


