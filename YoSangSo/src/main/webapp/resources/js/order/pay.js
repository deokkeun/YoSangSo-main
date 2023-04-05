

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}






// 요청사항
const regExpRequest = /^[a-zA-Zㄱ-힣가-힣0-9\.\?\!\~\@\^\s]{1,150}$/;
let request = document.getElementById("request");
let counter = document.querySelector(".counter");

request.addEventListener("keyup", function() {
    if(regExpRequest.test(request.value)) {
        counter.innerText = request.value.length;

        if(this.value.length <= 130) {
            counter.style.color = "black";
        }
        else if(this.value.length <= 149) {
            counter.style.color = "orange";
        } else {
            counter.style.color = "red";
        }
    }else if(request.value.length == 0) {
        counter.style.color = "black";
        counter.innerText = "0";
    }
});




// 슬라이드쇼
const slides = document.querySelector(".slides");
const slide = document.querySelectorAll(".slides li");
let currentIdx = 0;
const slideCount = slide.length;
const slideWidth = 200;
const slideMargin = 30;
const prevBtn = document.querySelector(".prev");
const nextBtn = document.querySelector(".next");

makeClone();

function makeClone() {
    for(let i = 0; i < slideCount; i++) {
        // a.cloneNode(), a.cloneNode(true)
        let cloneSlide = slide[i].cloneNode(true);
        cloneSlide.classList.add("clone");
        slides.appendChild(cloneSlide);
    }
    for(let i = slideCount - 1; i >= 0; i--) {
        // a.cloneNode(), a.cloneNode(true)
        let cloneSlide = slide[i].cloneNode(true);
        cloneSlide.classList.add("clone");
        slides.prepend(cloneSlide);
    }
    updateWidth();
    setInitialPos();
   setTimeout(function() {
       slides.classList.add('animated');
   }, 100);
}

function updateWidth() {
    const currentSlides = document.querySelectorAll(".slides li");
    const newSlidesCount = currentSlides.length;

    const newWidth = (slideWidth + slideMargin) * newSlidesCount - slideMargin + "px";
    slides.style.width = newWidth;
}

function setInitialPos() {
    const initialTranslateValue = -(slideWidth + slideMargin) * slideCount;
    slides.style.transform = "translateX(" + initialTranslateValue + "px)";
}
nextBtn.addEventListener("click", function() {
    moveSlide(currentIdx + 1);
});
prevBtn.addEventListener("click", function() {
    moveSlide(currentIdx - 1);
});

function moveSlide(num) {
    slides.style.left = -num * (slideWidth + slideMargin) + "px";
    currentIdx = num;
    console.log(currentIdx, slideCount);

    if(currentIdx == slideCount || currentIdx == -slideCount) {

        setTimeout(function() {
            slides.classList.remove("animated");
            slides.style.left = "0px";
            currentIdx = 0;
        }, 500);
        setTimeout(function() {
            slides.classList.add("animated");
        }, 600);
    }

}
