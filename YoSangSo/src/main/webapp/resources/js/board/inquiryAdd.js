// 요소 선언
const confirmWritingQ = document.getElementById("confirmWritingQ"); // 추가 버튼
const inquiryContent = document.getElementById("inquiryContent");
console.log("inquiryAdd 진입");
// 추가 버튼 클릭 시, 기능
confirmWritingQ.addEventListener("click", e => {
    // 아무 내용없이 등록하기 눌렀을 떄, 알림창 띄워주기
    if(inquiryContent.value == ""){
        console.log("inquiryAdd if 진입");
        alert("문의를 입력해주세요.");
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
                    alert("게시글이 등록 되었습니다.");
                    location.href="inquiryList"
                }else{
                    alert("게시글 등록이 실패되었습니다.");
                }
            },
            error : function(){
                console.log("에러발생");
            }
        }); // ajax 구문 끝
    } // else 구문 끝
}); // 이벤트 리스너 구문 끝










