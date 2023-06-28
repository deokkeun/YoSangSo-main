//===========================================================================================================

// 요소 선언
const confirmWritingQ = document.getElementById("confirmWritingQ"); // 추가 버튼
const inquiryContent = document.getElementById("inquiryContent");
console.log("inquiryAdd 진입");
// 추가 버튼 클릭 시, 기능
confirmWritingQ.addEventListener("click", e => {
    // 아무 내용없이 등록하기 눌렀을 떄, 알림창 띄워주기
    if(inquiryContent.value == ""){
        swal('입력 누락!', '내용을 입력해주세요! :-) ', 'warning')
        .then(function(){
            inquiryContent.focus();
            inquiryContent.scrollIntoView({ behavior: 'smooth', block: 'center' });
        })
    }else{
        // 내용이 있을 경우, ajax통신으로 
        $.ajax({
            url : "inquiryAdd",
            data : {"inquiryAdd" : inquiryContent.value },
            type : "GET",
            success : function(result){
                console.log("result::" ,result);
                // result이 0 초과일 시, 게시글 등록 성공 // result가 0일 때는 게시글 등록 실패
                if(result > 0 ){
                    swal('게시글 등록 완료!', '소중한 문의 감사합니다! :-) ', 'success')
                    .then(function(){
                        location.href="inquiryList";                   
                    })
                    } else {
                        swal('게시글 등록 실패!',"게시글 등록이 실패됐어요! :-( ",'error');
                    };
            },
            error : function(){
                console.log("에러발생");
            }
        }); // ajax 구문 끝
    } // else 구문 끝
}); // 이벤트 리스너 구문 끝


//===========================================================================================================







